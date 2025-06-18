-- Write your PostgreSQL query statement below
select
    person_name
from (
    select
        *
        , sum(weight) over(order by turn asc) as acm_weight  
    from Queue 
)
where
    acm_weight <= 1000
order by acm_weight desc
limit 1