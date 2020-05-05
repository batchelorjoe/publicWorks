--============================================================================================
--DISTINCT_COUNT_CHILDREN_IN_IDSIMPORT_V1.sql
--============================================================================================
SELECT DISTINCT COUNT(*)
FROM [dbo].[idsimport]
WHERE [Member Date of Birth] > '19990702'
AND [Maintenance_Type_Code] = '21'