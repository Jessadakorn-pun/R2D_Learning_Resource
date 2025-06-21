select
    (salary * months) as totalEarn
    , count(*) as cnt
from Employee 
group by 1
order by 1 desc
limit 1
