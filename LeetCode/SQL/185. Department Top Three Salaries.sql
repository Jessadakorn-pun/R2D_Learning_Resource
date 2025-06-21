-- Write your PostgreSQL query statement below
select
    b.name as Department
    , a.name as Employee
    , a.salary as Salary
from (
    select
        *
        , dense_rank() over(partition by departmentID order by salary desc) rn
    from Employee 
) a
join Department b  
    on a.departmentID = b.id
where
    rn <= 3
order by 1,2