-- Write your PostgreSQL query statement below
select 
    machine_id
    , round(avg(time_diff)::numeric, 3) as processing_time
from (
select
    machine_id
    , process_id
    , timestamp
    , timestamp - lag(timestamp) over(partition by machine_id, process_id order by machine_id asc, process_id asc, activity_type desc) as time_diff
from Activity
) a
where
    time_diff is not null
group by 1
