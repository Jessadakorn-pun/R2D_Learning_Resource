-- Write your PostgreSQL query statement below
select
    teacher_id
    , count(distinct subject_id, dept_id)
from Teacher 
group by 1