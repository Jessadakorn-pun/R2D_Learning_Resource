-- Write your PostgreSQL query statement below
(
select 
    b.name as results         
from MovieRating a
join Users b 
    on a.user_id = b.user_id
group by 1
order by count(rating) desc, b.name asc
limit 1
)

union all

(
select
    d.title as results  
from MovieRating c
join Movies d
    on c.movie_id = d.movie_id
where 
    -- created_at < '2020-03-01'
    -- and created_at >= '2020-02-01'
    date_trunc('month', created_at::timestamp) = '2020-02-01'
group by 1
order by avg(rating) desc, d.title asc
limit 1
)