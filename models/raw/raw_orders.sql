select * from
{{ source('databricks_globalmart', 'orders') }}