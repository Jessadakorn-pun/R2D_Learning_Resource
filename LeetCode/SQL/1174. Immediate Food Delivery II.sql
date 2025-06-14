-- Write your PostgreSQL query statement below
select
    round(sum(case when order_date = customer_pref_delivery_date then 1 else 0 end) * 100.00 / count(*)::numeric, 2) as immediate_percentage 
from ( 
    select
        row_number() over(partition by customer_id order by order_date asc) as rn
        , *
    from Delivery 
    -- qualify rn =1 
) a
where
    rn = 1