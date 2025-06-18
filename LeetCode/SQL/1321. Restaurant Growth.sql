
-- Write your PostgreSQL query statement below
select
    visited_on
    , amount
    , round(average_amount, 2) as average_amount
from (
    select
        visited_on   
        , sum(amount) over(order by visited_on asc rows between 6 preceding and current row) as amount
        , avg(amount) over(order by visited_on asc rows between 6 preceding and current row) as average_amount
        , row_number() over(order by visited_on asc) as rn
    from (
        select
            visited_on
            , sum(amount) as amount
        from Customer
        group by 1
    )
    order by 1 asc
) 
where rn > 6