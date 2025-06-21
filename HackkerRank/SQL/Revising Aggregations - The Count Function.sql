select
    count(name) as city
from CITY
where
    population > 1e5