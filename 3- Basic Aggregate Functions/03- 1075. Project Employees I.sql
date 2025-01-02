-- # Problem: https://leetcode.com/problems/project-employees-i/
-- # Level : Easy

select project_id  , round(avg(y.experience_years),2) as average_years 
from Project x
left join Employee y
on x.employee_id =y.employee_id 
group by x.project_id