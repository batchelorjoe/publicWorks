SELECT * 
 FROM (
SELECT ROW_NUMBER() OVER (PARTITION BY [Case Number] ORDER BY [Case Number], [Member ID (RID)] ) AS Row#
      ,[Case Number]
      ,[Member ID (RID)]
      ,[Passport ID]
      ,[MCO ID]
      ,[Case Individual ID]
      ,[Member Prefix]
      ,[Member First Name]
      ,[Member Middle Name]
      ,[Member Last Name]
	  ,[Premium Amount1]
	  ,[Premium Plan Code1]
FROM [dbo].[idsimport]
WHERE [ELG1_PROGRAM_CO] IN ('XA','XR','XP','XF')
and   [ELG1_IMID] != 'R1'
and   [MNC1_End_Date] > '20180630'
) T1
--WHERE Row# > '1' 