USE [eqispsadb]
GO

EXEC sp_MSforeachtable 'SELECT ''?'' TableName, Count(1) NumRecords FROM ?'
