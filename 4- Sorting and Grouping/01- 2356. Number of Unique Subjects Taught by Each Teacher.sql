-- # Problem: https://leetcode.com/problems/number-of-unique-subjects-taught-by-each-teacher/
-- # Level : Easy

select teacher_id,count(distinct subject_id) cnt 
from Teacher 
group by teacher_id