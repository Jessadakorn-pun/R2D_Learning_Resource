select
    round(min(LAT_N), 4) as LAT_N
from STATION 
where
    LAT_N > 38.7780