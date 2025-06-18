-- Write your PostgreSQL query statement below
select
    distinct l1.num as ConsecutiveNums
from Logs l1, Logs l2, Logs l3
where 
    l1.num = l2.num
    and l2.num = l3.num
    and l1.id = l2.id - 1
    and l2.id = l3.id - 1

;;

select 
    distinct num as ConsecutiveNums
from (
    select
        *
        , lead(num) over(order by id) as next_num
        , lead(num, 2) over(order by id) as nex_next_num
    from Logs
) a
where
    num = next_num
    and next_num = nex_next_num
