-- models/dim_product.sql

SELECT 
    p.ProductID AS product_id,
    p.ProductName AS product_name,
    c.CategoryName AS category_name,
    c.Description AS category_description,
    p.SupplierID AS supplier_key
FROM 
    {{ source('northwind', 'Products') }} AS p
JOIN 
    {{ source('northwind', 'Categories') }} AS c
    ON p.CategoryID = c.CategoryID
