USE TargetDatabase
GO

INSERT INTO dbo.TargetTable(field1, field2, field3)
   SELECT field1, field2, field3
     FROM SourceDatabase.dbo.SourceTable
     WHERE (some condition)