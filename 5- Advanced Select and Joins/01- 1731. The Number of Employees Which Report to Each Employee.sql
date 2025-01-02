-- # Problem: https://leetcode.com/problems/the-number-of-employees-which-report-to-each-employee/
-- # Level : Easy

select	y.reports_to employee_id ,x.name name ,
		count(y.employee_id)reports_count ,
		round(avg(y.age)) average_age 
from Employees x 
join Employees y
on x.employee_id =y.reports_to
group by x.employee_id 
order by x.employee_id