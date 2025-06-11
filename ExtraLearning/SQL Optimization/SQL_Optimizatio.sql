-- Case 1 : Using Preview instate of " Select * " / using EXCEPT (only in big queries) / using SELECT only some columns
select
    * EXCEPT (col_a, col_b, ...)
from DB
;

-- Case 2 : Using Numerical Column to join instate of String Column

