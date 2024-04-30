select
    productname,
    subcategory,
    SUM(OrderProfit) AS profit
from 
{{ ref('stg_orders') }}
group by 
    productname,
    subcategory
