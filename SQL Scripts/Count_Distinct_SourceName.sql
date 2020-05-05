SELECT DISTINCT COUNT(SourceName) AS Count, SourceName from dbo.idsimport
GROUP BY SourceName
ORDER BY SourceName
;