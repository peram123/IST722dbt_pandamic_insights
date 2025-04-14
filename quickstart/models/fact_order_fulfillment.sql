select
  od.orderid,
  o.orderdate,
  o.customerid as customerkey,
  o.employeeid as employeekey,
  od.productid,
  od.unitprice,
  od.quantity,
  od.discount,
  od.unitprice * od.quantity * (1 - od.discount) as total_price
from {{ source('northwind', 'OrderDetails') }} od
join {{ source('northwind', 'Orders') }} o
  on od.orderid = o.orderid
