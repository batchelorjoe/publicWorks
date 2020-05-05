--===============================================
SELECT DISTINCT 
      [LAST_NAME]
      ,[FIRST_NAME]
      ,[MIDDLE_INITIAL]
      ,[IDENT_CODE_QUAL]
      ,[IDENT_CODE]
      ,[NM1ROWID]
      ,[INSID]
      ,[INSROWID]
  FROM [eqispsadb].[dbo].[TBL_834_X5010_INS_NM1]
  WHERE [IDENT_CODE_QUAL] = '34'
  AND [NM1ROWID] = '1'
  ORDER BY [INSROWID]