select
    round(abs(min(LAT_N ) - max(LAT_N)) + abs(min(LONG_W) - max(LONG_W)), 4) as manhattanDistance
from STATION 