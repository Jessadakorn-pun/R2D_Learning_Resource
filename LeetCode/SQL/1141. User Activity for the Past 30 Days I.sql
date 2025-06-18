-- Write your PostgreSQL query statement below
select
    activity_date as day
    , count(distinct user_id) as active_users
from Activity 
where
    date '2019-07-27' - activity_date < 30
    and date '2019-07-27' - activity_date >= 0
group by 1