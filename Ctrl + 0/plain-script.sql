DECLARE @TableName NVARCHAR(100) = 'test';
DECLARE @query NVARCHAR(100) = 'SELECT TOP 1000 * FROM ' + @TableName + ' ORDER BY 1'; 
EXEC sp_executesql @query; 