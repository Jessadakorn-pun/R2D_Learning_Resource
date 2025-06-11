-- Write your PostgreSQL query statement below
select *
from Products
where 1=1
    and recyclable  = 'Y'
    and low_fats = 'Y'