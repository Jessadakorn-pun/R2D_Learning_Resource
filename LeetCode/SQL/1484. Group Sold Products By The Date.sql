-- Write your PostgreSQL query statement below
select
    sell_date
    , count(product) as num_sold
    , STRING_AGG(product, ',') as products                     
from Activities
group by 1   