-- models/fact_sales.sql

WITH order_details AS (
    SELECT 
        o.employeeid, 
        o.customerid,
        o.orderdate, 
        od.productid,
        o.orderid, 
        od.quantity,
        od.quantity * od.unitprice AS extendedpriceamount,
        od.quantity * od.unitprice * od.discount AS discountamount,
        od.quantity * od.unitprice * (1 - od.discount) AS soldamount
    FROM 
        {{ source('northwind', 'Orders') }} o
    JOIN 
        {{ source('northwind', 'Order_Details') }} od 
        ON o.orderid = od.orderid
)

SELECT * FROM order_details
