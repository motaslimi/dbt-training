select * from 
{{ source('databricks_globalmart', 'customers') }}