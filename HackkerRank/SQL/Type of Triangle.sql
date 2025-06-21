select
    case 
        when (A + B <= C) or (A + C <= B) or (B + C <= A) then 'Not A Triangle'
        when (A = B) and (B = C) then 'Equilateral'
        when (A = B) or (B = C) or (C = A) then 'Isosceles'
        when (A != B) and (B != C) and (A != C) then 'Scalene'
        end as result
from TRIANGLES 