DECLARE @TableName VARCHAR(200) = 'test'

SELECT 
	schema_name(o.uid) + '.' + o.name fullname, 
	o.name, 
	o.id id, 
	o.xtype, 
	o.crdate, 
	o.refdate
FROM syscomments c
INNER JOIN sysobjects o ON c.id = o.id
WHERE c.text LIKE '%' + @TableName + '%'