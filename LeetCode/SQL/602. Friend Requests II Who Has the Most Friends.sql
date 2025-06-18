-- Write your PostgreSQL query statement below
select
    re as id
    , count(re) as num 
from (
    select
        requester_id as re
        -- , accepter_id  as acc
    from RequestAccepted 

    union all

    select
        accepter_id as re
        -- , requester_id as acc
    from RequestAccepted 
)
group by 1
order by 2 desc
limit 1