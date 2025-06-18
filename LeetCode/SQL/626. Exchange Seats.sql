-- Write your PostgreSQL query statement below
select
    row_number() over(order by re_order asc) as id
    , student
from (
    select
        *
        , (case when id % 2 != 0 then id + 1 else 0 end) + (case when id % 2  = 0 then id - 1 else 0 end) as re_order
    from Seat 
)
order by re_order