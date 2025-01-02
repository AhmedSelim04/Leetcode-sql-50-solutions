-- # Problem: https://leetcode.com/problems/classes-more-than-5-students/
-- # Level : Easy

select class
from Courses
group by class 
having count(class)>4