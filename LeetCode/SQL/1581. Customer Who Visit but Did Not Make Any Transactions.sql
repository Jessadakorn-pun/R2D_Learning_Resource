-- Write your PostgreSQL query statement below
select
    a.customer_id 
    , count(customer_id) as count_no_trans
from  Visits a
left join Transactions b
    on a.visit_id = b.visit_id
where
    transaction_id is null
group by 1
