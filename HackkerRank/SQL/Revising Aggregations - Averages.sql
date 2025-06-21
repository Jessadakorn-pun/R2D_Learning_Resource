select
    avg(population) as totalPopulation
from CITY
where
    district = 'California'