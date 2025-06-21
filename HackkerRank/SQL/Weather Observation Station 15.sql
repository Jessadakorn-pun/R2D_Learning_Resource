select
    LONG_W
from (
    select
        round(LONG_W, 4) as LONG_W
        , row_number() over(order by LAT_N desc) as rn
    from STATION
    where 
        LAT_N < 137.2345
) a
where
    rn = 1
