select * from
{{ source('databricks_globalmart', 'products') }}