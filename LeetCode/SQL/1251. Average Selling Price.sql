-- Write your PostgreSQL query statement below
select
    a.product_id
    , round(coalesce(sum(b.units * a.price)::numeric / sum(b.units)::numeric, 0), 2) as average_price
from Prices a
left join UnitsSold b
    on a.product_id = b.product_id and (b.purchase_date between a.start_date and a.end_date)
group by 1