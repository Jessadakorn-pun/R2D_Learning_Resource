select
    Name
from STUDENTS
where
    Marks > 75
order by right(name, 3), ID