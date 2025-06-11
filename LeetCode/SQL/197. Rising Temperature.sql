-- Write your PostgreSQL query statement below
select 
    a.id
    -- , a.temperature 
    -- , b.temperature
    -- , a.temperature - b.temperature as diff
from Weather a
join Weather b
    on a.recordDate = b.recordDate + INTERVAL '1 day'
where 
    a.temperature > b.temperature

;;;226

select
    id
from (
    select
        id
        , temperature - lag(temperature) over (order by recordDate asc) as temp_diff
        , recordDate - lag(recordDate) over (order by recordDate asc) as date_diff
    from Weather
) a
where 1=1 
    temp_diff > 0
    and date_diff = INTERVAL '1 day'