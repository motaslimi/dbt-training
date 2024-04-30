select 
    o.orderid,
    o.orderdate,
    o.shipdate,
    o.shipmode,
    o.customerid,
    o.productid,
    p.category,
    p.productname,
    p.subcategory,
    c.customername,
    c.segment,
    c.country,
    OrderSellingPrice - OrderCostPrice AS OrderProfit
from {{ ref('raw_orders') }} AS o 
left join {{ ref('raw_product') }} AS p 
on o.productid = p.productid
left join {{ ref('raw_customers') }} AS c 
on o.customerid = c.customerid