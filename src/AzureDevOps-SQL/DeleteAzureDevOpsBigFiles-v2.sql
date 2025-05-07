use Tfs_DefaultCollection;

DECLARE @ItemsToDelete TABLE (
    ChildItem NVARCHAR(255),
    MySize FLOAT,
    FileId int,
    ResourceId uniqueidentifier
);

INSERT INTO @ItemsToDelete
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
HAVING SUM(c.OffsetTo - c.OffsetFrom) / (1024.0 * 1024.0) > 1;

--select SUM(MySize) from @ItemsToDelete;
--select * from @ItemsToDelete ORDER BY MySize DESC;

-----------------------------------------------------------------------------
----------------------- BATCH DELETE OPERATIONS -----------------------------
-----------------------------------------------------------------------------

-- Declare variables for batch processing
DECLARE @BatchSize INT = 2;
-- Number of records per batch
DECLARE @RowsProcessed INT = 0;
-- Counter for processed rows
DECLARE @TotalRows INT;
-- Total rows to process
DECLARE @CurrentBatch TABLE (ResourceId uniqueidentifier,
    FileId INT);
-- Temp table for current batch

-- Get total count of records to process
SELECT @TotalRows = COUNT(*)
FROM @ItemsToDelete;

PRINT 'Starting batch delete of ' + CAST(@TotalRows AS VARCHAR) + ' records';

-- Process records in batches
WHILE @RowsProcessed < @TotalRows
BEGIN
    -- Clear the current batch table
    DELETE FROM @CurrentBatch;

    -- Get the next batch of records
    INSERT INTO @CurrentBatch
        (ResourceId, FileId)
    SELECT TOP (@BatchSize)
        ResourceId, FileId
    FROM @ItemsToDelete
    ORDER BY ResourceId
    OFFSET @RowsProcessed ROWS;

    -- Get count of records in this batch
    DECLARE @CurrentBatchSize INT = @@ROWCOUNT;

    BEGIN TRANSACTION;

    -- Delete from tbl_Content using the ResourceIds in the current batch
    DELETE FROM tbl_Content
    WHERE ResourceId IN (SELECT ResourceId
    FROM @CurrentBatch);

    PRINT 'Deleted ' + CAST(@@ROWCOUNT AS VARCHAR) + ' records from tbl_Content';

    -- Delete from tbl_FileReference using the ResourceIds in the current batch
    DELETE FROM tbl_FileReference
    WHERE ResourceId IN (SELECT ResourceId
    FROM @CurrentBatch);

    PRINT 'Deleted ' + CAST(@@ROWCOUNT AS VARCHAR) + ' records from tbl_FileReference';

    -- Delete from tbl_ContainerItem using the FileIds in the current batch
    -- DELETE FROM tbl_ContainerItem
    -- WHERE FileId IN (SELECT FileId FROM @CurrentBatch);

    -- Delete from tbl_ContainerItem using the FileIds in the current batch
    -- ONLY IF those FileIds no longer have any references in tbl_FileReference
    DELETE ci
    FROM tbl_ContainerItem ci
    WHERE ci.FileId IN (SELECT FileId
        FROM @CurrentBatch)
        AND NOT EXISTS (
        SELECT 1
        FROM tbl_FileReference fr
        WHERE fr.FileId = ci.FileId
    );

    PRINT 'Deleted ' + CAST(@@ROWCOUNT AS VARCHAR) + ' records from tbl_ContainerItem';

    COMMIT TRANSACTION;

    -- Update the counter
    SET @RowsProcessed = @RowsProcessed + @CurrentBatchSize;

    -- Issue CHECKPOINT to flush transaction log
    CHECKPOINT;

    PRINT 'Completed batch ' + CAST((@RowsProcessed / @BatchSize) AS VARCHAR) + 
          '. Processed ' + CAST(@RowsProcessed AS VARCHAR) + ' of ' + 
          CAST(@TotalRows AS VARCHAR) + ' records (' + 
          CAST((@RowsProcessed * 100 / @TotalRows) AS VARCHAR) + '%)';

-- Optional: Add a delay between batches to reduce server load
-- WAITFOR DELAY '00:00:01';  -- 1 second delay
END

PRINT 'Batch delete operation completed successfully';
