(
select
    concat(Name, "(", upper(left(Occupation, 1)), ")") as result
from OCCUPATIONS 
order by 1 asc
)

;

(
select
    concat('There are a total of ', count(Occupation), ' ', lower(Occupation), 's.') as result
from OCCUPATIONS
group by Occupation
order by count(*) asc, Occupation asc 
)