-- Write your PostgreSQL query statement below
select
    round(sum(isContinue)::numeric / count(distinct player_id )::numeric, 2) as fraction  
from (
    select 
        case 
            when event_date - interval '1 day' = lag(event_date) over(partition by player_id order by event_date asc) then 1
            else 0 end as isContinue
        , *
    from (
        select 
            player_id
            , event_date 
            , row_number() over(partition by player_id order by event_date asc) as rn
        from Activity
    ) a
    where
        rn <= 2
)