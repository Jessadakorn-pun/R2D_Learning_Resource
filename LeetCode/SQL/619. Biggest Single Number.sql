-- Write your PostgreSQL query statement below
select
    max(num) as num
from (
    select
        num
        , count(num) as cnt
    from MyNumbers 
    group by 1 
)
where
    cnt = 1