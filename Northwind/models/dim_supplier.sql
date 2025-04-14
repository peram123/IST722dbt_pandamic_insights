SELECT 
    s.SupplierID AS supplier_id,
    s.CompanyName AS supplier_name,
    s.ContactName AS supplier_contact,
    CONCAT(s.Address, ', ', s.City, ', ', s.Country) AS supplier_address
FROM {{ source('northwind', 'Suppliers') }} s
