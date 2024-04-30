select
    customerid,
    customername,
    segment,
    country,
    SUM(OrderProfit) AS profit
from 
{{ ref('stg_orders') }}
group by
    customername,
    customerid,
    segment,
    country