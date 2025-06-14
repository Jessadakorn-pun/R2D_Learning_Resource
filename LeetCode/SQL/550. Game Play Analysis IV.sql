-- Write your PostgreSQL query statement below
select
    round(sum(case when event_date = previous_login + interval '1 day' then 1 else 0 end)::numeric / count(distinct player_id )::numeric, 2) as fraction  

from (
    select
        *
        , case when
            event_date - interval '1 day' = lag(event_date) over(partition by player_id order by event_date asc) then 1
            else 0 end as isContinue
    from Activity
) a

