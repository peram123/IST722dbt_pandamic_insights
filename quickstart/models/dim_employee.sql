select
  employeeid as employeekey,
  firstname || ' ' || lastname as fullname,
  title,
  country
from {{ source('northwind', 'Employees') }}
