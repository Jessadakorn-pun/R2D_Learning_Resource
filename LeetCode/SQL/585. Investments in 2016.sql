-- Write your PostgreSQL query statement below
with cont_non_dup as (
    select
        lat
        , lon
    from Insurance
    group by 1,2
    having count(concat(lat, lon)) = 1
), 

dup_tiv_2015 as (
    select
        tiv_2015
    from Insurance
    group by 1
    having count(tiv_2015) > 1
)

select
    round(sum(tiv_2016)::numeric, 2) as tiv_2016
from Insurance a
join cont_non_dup b
    on a.lat = b.lat and a.lon = b.lon
join dup_tiv_2015 c
    on a.tiv_2015 = c.tiv_2015