-- Write your PostgreSQL query statement below
select
    product_id
    , year as first_year
    , quantity as quantity 
    , price as price
from (
    select
        *
        , rank() over(partition by product_id order by year asc) as rn
    from Sales
) a
where
    rn = 1
