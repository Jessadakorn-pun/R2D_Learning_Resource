-- Write your PostgreSQL query statement below
select
    b.product_name          
    , a.unit
from (
    select
        product_id
        , sum(unit) as unit
    from Orders
    where
        date_trunc('month', order_date::timestamp) = '2020-02-01'
    group by 1
    having sum(unit) >= 100
) a
join Products b
    on a.product_id = b.product_id
