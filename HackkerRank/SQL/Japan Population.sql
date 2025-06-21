select
    sum(population) as sumPopulation
from CITY
where
    countrycode = 'JPN'
