select
    round(sum(LAT_N), 2) as sumLat_n
    , round(sum(LONG_W), 2) as sumLon_n
from STATION 