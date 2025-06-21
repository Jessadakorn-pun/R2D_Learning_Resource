select
    round(max(LAT_N), 4) as greatestLat_n
from STATION
where
    LAT_N < 137.2345
