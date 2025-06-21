select
    round(sum(LAT_N), 4) as sumLat_n
from STATION 
where   
    LAT_N between 38.7880 and 137.2345