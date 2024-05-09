with
orders as (
    select * FROM {{ ref('raw_orders') }}
)

select 
    orderid,
    sum(ordersellingprice) as total_sp
from orders
groupby
    orderid
having 
    total_sp<0