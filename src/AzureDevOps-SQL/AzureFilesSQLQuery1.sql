use Tfs_DefaultCollection

select resourceid, sum(offsetto - OffsetFrom) /(1024 * 1024) 
from tbl_Content 
group by ResourceId  
having sum(offsetto - OffsetFrom) > 10000000 
order by sum(offsetto - OffsetFrom)  desc

--686 180 053

select * from tbl_FileReference where ResourceId = 'B66AC7A7-7A88-EF11-B126-000C2901C369'


--477354


select *
from tbl_Content 
where ResourceId = '0F33AB8A-222B-F011-B146-000C2901C369'

select * from tbl_projects where project_id = 'b4e91be4-4fb2-4dd4-87c7-dd94ddeffc96'
select * from WorkItemFiles where FilePath = '8a71071e-9eeb-4360-bf55-0138eb5b64ee'
select * from Attachments where FileGuid = '8a71071e-9eeb-4360-bf55-0138eb5b64ee'
select * from tbl_FileReference where FileId = 1211669
select * from tbl_Content where ResourceId = '0F33AB8A-222B-F011-B146-000C2901C369'



select sum(d.OffsetTo - d.OffsetFrom) / (1024 * 1024) 
from WorkItemFiles a
join Attachments b on a.FilePath = FileGuid
join tbl_FileReference c on b.TfsFileId = c.FileId
join tbl_Content d on c.ResourceId = d.ResourceId
where a.FilePath = '8a71071e-9eeb-4360-bf55-0138eb5b64ee'

exec sp_helptext 'prc_GetWorkItemAttachmentById'
exec prc_GetWorkItemAttachmentById @partitionId=1,@attachmentId='8A71071E-9EEB-4360-BF55-0138EB5B64EE'

select * from tbl_FileReference where DataspaceId = 252
select * from tbl_Content where ResourceId = '0F33AB8A-222B-F011-B146-000C2901C369'
select * from tbl_Dataspace where DataspaceId = 252
select * from tbl_WorkItemCoreLatest


--http://tfs:8080/tfs/DefaultCollection/b4e91be4-4fb2-4dd4-87c7-dd94ddeffc96/_apis/wit/attachments/8a71071e-9eeb-4360-bf55-0138eb5b64ee?fileName=%D8%A8%D8%AF%D9%88%D9%86%20%D8%B9%D9%86%D9%88%D8%A7%D9%86.jpg&download=true&api-version=5.0-preview.2


--http://tfs:8080/tfs/DefaultCollection/BankingProject/_build/results?buildId=16076&view=artifacts&pathAsName=false
--http://tfs:8080/tfs/DefaultCollection/_apis/resources/Containers/56262/BuiltArtifacts?itemPath=BuiltArtifacts%2FAfagh.Ofogh3.Branch-master.zip
--http://tfs:8080/tfs/DefaultCollection/_apis/resources/Containers/56262/BuiltArtifacts?itemPath=BuiltArtifacts%2FAfagh.Ofogh3.Branch-master.zip
select * from tbl_Container where ContainerId = 56262
exec prc_QueryContainerItems @partitionId=1,@containerId=56262,@path=N'BuiltArtifacts\Afagh.Ofogh3.Branch"master.zip\',@isShallow=0
exec sp_helptext 'prc_QueryContainerItems'

select * from tbl_ContainerItem where ContainerId = 56262
--delete from tbl_FileReference where FileId = 1211361
--select * into #temp from tbl_Content where ResourceId = '6BEACD5E-082B-F011-B146-000C2901C369'
--delete from tbl_Content where ResourceId = '6BEACD5E-082B-F011-B146-000C2901C369'

-- TABASI:

select ChildItem, sum(c.OffsetTo - c.OffsetFrom) / (1024 * 1024), a.FileId, c.ResourceId
from tbl_ContainerItem a
join tbl_FileReference b on a.FileId = b.FileId
join tbl_Content c on b.ResourceId = c.ResourceId
where ItemType = 2 and FileType = 1 and ChildItem like N'%.zip%' and c.CreationDate > GETDATE() - 7
group by ChildItem, a.FileId, c.ResourceId
having sum(filelength) / (1024 * 1024) > 100
order by sum(c.OffsetTo - c.OffsetFrom) / (1024 * 1024) desc

select * from tbl_Content where ResourceId = '4BD700A5-DD28-F011-B144-000C2901C369'
select * from tbl_FileReference where ResourceId = '4BD700A5-DD28-F011-B144-000C2901C369'

delete from tbl_Content where ResourceId = '5B018BF0-9F29-F011-B145-000C2901C369'
delete from tbl_FileReference where ResourceId = '5B018BF0-9F29-F011-B145-000C2901C369'
delete from tbl_ContainerItem where FileId = '1209810'


-- ABEDINI:
select ChildItem, sum(c.OffsetTo - c.OffsetFrom) / (1024 * 1024) AS MySize
from tbl_ContainerItem a
join tbl_FileReference b on a.FileId = b.FileId
join tbl_Content c on b.ResourceId = c.ResourceId
where a.ContainerId = 51102
group by ChildItem
order by sum(c.OffsetTo - c.OffsetFrom) / (1024 * 1024) desc


------------------------------------


select * from tbl_FileType

select b.ContainerId, b.ArtifactUri, sum(fileLength) / (1024 * 1024) from tbl_ContainerItem  a
join tbl_Container b on a.ContainerId = b.ContainerId
group by b.ContainerId, b.ArtifactUri
order by sum(fileLength) / (1024 * 1024) desc

select [FileId] from tbl_ContainerItem where ContainerId = 53479
select * from tbl_Container where ContainerId = 53479

select * from tbl_ContainerItem where [ContainerId] = 22046

select count(*) from tbl_ContainerItem
select count(*) from tbl_FileReference
