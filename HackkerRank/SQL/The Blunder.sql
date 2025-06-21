select
    ceil(avg(salary) - avg(cast(replace(cast(salary as char), '0', '') as float))) as missCalAverage
from EMPLOYEES 



