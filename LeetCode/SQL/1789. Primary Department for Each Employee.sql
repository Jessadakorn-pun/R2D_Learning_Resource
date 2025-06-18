-- Write your PostgreSQL query statement below
select
    employee_id 
    , department_id 
from (
    select
        *
        , row_number() over(partition by employee_id order by primary_flag desc) as rn
    from Employee
) a
where
    rn = 1
