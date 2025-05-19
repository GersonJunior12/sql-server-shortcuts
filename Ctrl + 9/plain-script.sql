DECLARE @TableName NVARCHAR(100) = 'test'

SELECT 
	STRING_AGG(c.name, ', ') AS Colunas 
FROM sys.tables t 
INNER JOIN sys.columns c ON t.object_id = c.object_id 
WHERE t.name = @TableName