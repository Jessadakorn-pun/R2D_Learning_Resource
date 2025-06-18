-- Write your PostgreSQL query statement below
select
    customer_id
from Customer 
group by 1
having count(distinct product_key) = (select count(product_key) from Product)