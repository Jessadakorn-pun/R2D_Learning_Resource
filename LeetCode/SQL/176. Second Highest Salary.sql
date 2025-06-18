-- Write your PostgreSQL query statement below

select
    max(case when rnk=2 then salary else null end) SecondHighestSalary 
from (
    select
        *
        , dense_rank() over(order by salary desc) as rnk
    from Employee
)

