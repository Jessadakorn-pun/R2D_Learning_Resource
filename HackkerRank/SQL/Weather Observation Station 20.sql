with position as (
    select
        id
        , LAT_N
        , row_number() over(order by LAT_N asc) as rn
    from STATION
)

select
    round(LAT_N, 4) as result
from position
where 
    rn = (select ceil(count(*) / 2) from position)

