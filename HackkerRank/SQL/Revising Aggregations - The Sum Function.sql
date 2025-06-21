select
    sum(population) as totalPopulation
from CITY
where
    district = 'California'