-- # Problem: https://leetcode.com/problems/employees-whose-manager-left-the-company/
-- # Level : Easy

select x.employee_id 
from Employees x
join Employees y
on	x.employee_id =y.employee_id  and
	x.manager_id not in 
						(select employee_id from Employees)
where x.salary <30000
order by x.employee_id 