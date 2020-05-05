USE eqispsadb_test
GO
SELECT file_id, name as [logical_file_name],physical_name
from sys.database_files


USE [master];
GO
ALTER DATABASE [eqispsadb_test] MODIFY FILE ( NAME = eqispsadb, NEWNAME = eqispsadb_test );
GO


USE [eqispsadb_test];
GO
SELECT file_id, name AS logical_name, physical_name
FROM sys.database_files
