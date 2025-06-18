-- Write your PostgreSQL query statement below
with cte1 as (
    select 
        a.unique_product_id as product_id
        , max_chg_date as change_date
    from (
        select
            distinct product_id as unique_product_id
        from Products
    ) a
    left join (
        select
            product_id
            , max(change_date) as max_chg_date
        from Products 
        where 
            change_date <= '2019-08-16'
        group by 1
    ) b
        on a.unique_product_id = b.product_id
)

select
    a.product_id
    , coalesce(new_price, 10) as price
from cte1 a
left join Products b
    on a.product_id = b.product_id and a.change_date = b.change_date
