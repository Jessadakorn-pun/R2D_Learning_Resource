-- Write your PostgreSQL query statement below
select
    a.student_id
    , a.student_name
    , a.subject_name
    , count(b.subject_name) as attended_exams
from (
    -- find all combinations of students and subjects
    select *
    from Students a, Subjects b
) a
left join Examinations b
    on a.student_id = b.student_id and a.subject_name = b.subject_name
group by 1,2,3
order by 1,3