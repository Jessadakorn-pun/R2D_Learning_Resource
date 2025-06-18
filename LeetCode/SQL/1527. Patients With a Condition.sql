-- Write your PostgreSQL query statement below
select
    *
from Patients 
where
    regexp_like(conditions, '^DIAB1| DIAB1')