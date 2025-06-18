-- Write your PostgreSQL query statement below
select
    class
from (
    select
        class
        , count(student) as cnt
    from Courses
    group by 1
)
where
    cnt >= 5