-- Write your PostgreSQL query statement below
select
    contest_id
    , round(((count(user_id) * 100.00 / (select count(distinct user_id) from Users))::numeric), 2) as percentage
from Register 
group by 1
order by 2 desc, 1 asc