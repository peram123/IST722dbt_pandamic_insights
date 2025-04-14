-- models/obt_sales.sql

SELECT 
    fs.orderid,
    fs.employeeid,
    fs.customerid,
    fs.productid,
    fs.quantity,
    fs.extendedpriceamount,
    fs.discountamount,
    fs.soldamount,
    CASE 
        WHEN fs.soldamount > 100 THEN 'High Value'
        ELSE 'Low Value'
    END AS order_value_category
FROM 
    {{ ref('fact_sales') }} fs
