-- Write your PostgreSQL query statement below
select
    a.employee_id 
from Employees a
left join Employees b
    on a.manager_id = b.employee_id 
where 
    b.employee_id is null
    and a.manager_id is not null
    and a.salary < 30000
order by 1