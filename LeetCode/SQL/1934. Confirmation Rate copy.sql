-- Write your PostgreSQL query statement below
select
    a.user_id
    , round(avg(case when action = 'confirmed' then 1 else 0 end)::numeric, 2) as confirmation_rate
from Signups a
left join Confirmations b
    on a.user_id = b.user_id
group by 1
