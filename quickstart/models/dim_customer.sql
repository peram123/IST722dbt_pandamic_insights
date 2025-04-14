select
  customerid as customerkey,
  companyname,
  contactname,
  country
from {{ source('northwind', 'Customers') }}
