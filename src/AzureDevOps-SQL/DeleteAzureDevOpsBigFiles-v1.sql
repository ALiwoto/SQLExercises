-- NOTE:
-- This SQL Query does NOT use batch-operation.
-- So basically your log file is going to get so big that your disk is going to
-- run out of size, so you will encounter an error (if you run it inside of a transaction,
-- which is on by default in SSMS).
-- To fix this, we need to run the delete operations in batch, and then use CHECKPOINT.

use Tfs_DefaultCollection;

DECLARE @MyItemsToDelete TABLE (
  ChildItem NVARCHAR(255),
  MySize FLOAT,
  FileId int,
  ResourceId uniqueidentifier
);

DECLARE @ItemsToDelete TABLE (
  ChildItem NVARCHAR(255),
  MySize FLOAT,
  FileId int,
  ResourceId uniqueidentifier
);

INSERT INTO @MyItemsToDelete
SELECT
  --TOP 6
  ChildItem,
  SUM(c.OffsetTo - c.OffsetFrom) / (1024 * 1024) AS MySize,
  a.FileId,
  c.ResourceId
FROM tbl_ContainerItem a
  JOIN tbl_FileReference b ON a.FileId = b.FileId
  JOIN tbl_Content c ON b.ResourceId = c.ResourceId
WHERE ItemType = 2
  AND FileType = 1
  AND ChildItem LIKE N'%dev%.zip%'
--AND c.CreationDate > GETDATE() - 365
GROUP BY ChildItem, a.FileId, c.ResourceId
HAVING SUM(c.OffsetTo - c.OffsetFrom) / (1024 * 1024) > 1;

INSERT INTO @ItemsToDelete
SELECT TOP 3
  *
FROM @MyItemsToDelete
ORDER BY MySize DESC;

--select SUM(MySize) from @ItemsToDelete;
select *
from @ItemsToDelete
ORDER BY MySize DESC;

-- Delete from tbl_Content using the ResourceIds identified in the CTE
DELETE FROM tbl_Content
WHERE ResourceId IN (SELECT ResourceId
FROM @ItemsToDelete)

-- Delete from tbl_FileReference using the ResourceIds identified in the CTE
DELETE FROM tbl_FileReference
WHERE ResourceId IN (SELECT ResourceId
FROM @ItemsToDelete)

-- Delete from tbl_ContainerItem using the FileIds identified in the CTE
-- BE AWARE: This will delete ALL rows in tbl_ContainerItem that have a FileId
-- that appeared in the result of the CTE, even if that FileId is associated
-- with other ChildItems that did NOT meet the criteria. This follows the pattern
-- of your example delete query for tbl_ContainerItem which filters only by FileId.
DELETE FROM tbl_ContainerItem
WHERE FileId IN (SELECT FileId
FROM @ItemsToDelete)
