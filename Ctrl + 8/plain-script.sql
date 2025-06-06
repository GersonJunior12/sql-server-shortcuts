DECLARE @TableName NVARCHAR(100) = 'teste'

select 
	(schema_name(schema_id) + '.' + name) COLLATE DATABASE_DEFAULT AS full_name, 
	name COLLATE DATABASE_DEFAULT AS name, 
	object_id, 
	type COLLATE DATABASE_DEFAULT AS xtype, 
	create_date, 
	modify_date
from sys.objects 
where 
	(@TableName IS NULL OR name like '%' + @TableName + '%') 
	and type IN('P', 'U', 'V', 'FN') 

union 

select 
	(schema_name(o.uid) + '.' + o.name) COLLATE DATABASE_DEFAULT AS full_name, 
	o.name COLLATE DATABASE_DEFAULT AS name, 
	o.id, 
	o.xtype COLLATE DATABASE_DEFAULT, 
	o.crdate, 
	o.refdate 
from sys.schemas s 
inner join sysobjects o on s.schema_id = o.uid 
where s.name like '%' + @TableName + '%' 
order by xtype desc, full_name, name