-- Write your PostgreSQL query statement below
select
    name
from (
    select
        a.name
        , a.id 
        , count(b.id) as cnt
    from Employee a
    join Employee b
        on a.id = b.managerId 
    group by 1,2
)
where cnt >= 5