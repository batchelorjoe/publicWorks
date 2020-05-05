USE [eqisdb]
GO
--TBL_834_X5010_QTY - Transaction Set Control Totals
SELECT [QTY01] as 'Quantity_Qualifier'                           --Code specifying the type of quantity (DT-Dependent Total, ET-Employee Total, TO-Total)
      ,[QTY02] as 'Quantity'                                     --Total number of (member) records in this transaction
      ,[HDRID] as 'QTY_FK'                                       --concat(/X12/ISA/ISA13 + CurrentDate/time)
      ,[QTYID] as 'QTY_PrimaryKey'                               --QTY Identity Sequence
      ,[CREATION_DATETIME]
      ,[MODIFICATION_DATETIME]
  FROM [dbo].[TBL_834_X5010_QTY]
GO

