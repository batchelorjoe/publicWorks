USE eqispsadb
GO
--===============================================
--Total Number of Transactions Received
SELECT DISTINCT COUNT(INSID)
FROM dbo.TBL_834_X5010_INS;

--Total Number of Transactions Received by Date
SELECT CREATION_DATETIME, COUNT(INSID)
FROM dbo.TBL_834_X5010_INS
GROUP BY CREATION_DATETIME;

--Total Number of Transactions Received by Date
SELECT DISTINCT COUNT(INSHDID)
FROM dbo.TBL_834_X5010_INS_HD
WHERE CW_KY_FLAG = 'KY';

--Total Number of Transactions Received by Date
SELECT DISTINCT COUNT(INSHDID)
FROM dbo.TBL_834_X5010_INS_HD
--WHERE CW_KY_FLAG = 'CW';