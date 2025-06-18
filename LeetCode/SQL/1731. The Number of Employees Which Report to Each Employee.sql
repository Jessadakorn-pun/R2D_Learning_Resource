-- Write your PostgreSQL query statement below
select
    a.employee_id
    , a.name
    , count(b.name) as reports_count
    , avg(b.age)::int as average_age
from Employees a
inner join Employees b
    on a.employee_id = b.reports_to 
group by 1,2
order by 1