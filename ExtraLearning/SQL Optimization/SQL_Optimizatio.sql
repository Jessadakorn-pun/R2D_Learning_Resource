-- Case 1 : Using Preview instate of " Select * " / using EXCEPT (only in big queries) / using SELECT only some columns
select
    * EXCEPT (col_a, col_b, ...)
from DB
;

-- Case 2 : Using Numerical Column to join instate of String Column

-- Case 3 : Bigger Table alway on the left side of JOIN
select *
from TABLE1 t1 -- Bigger Table
join TABLE2 t2 -- Smaller Table
on t1.id = t2.id;

-- Case 4 : Using Temporary Table to store intermediate results which process from a big table
create temp table <table_name> (col_a str, col_b int, ...) as 
select 
    col_a
    , col_b
    , ...
from big_table
;