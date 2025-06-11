-- Write your PostgreSQL query statement below
select
    a.project_id
    , round(avg(b.experience_years)::numeric, 2) as average_years
from Project a
left join Employee b
    on a.employee_id = b.employee_id
group by 1