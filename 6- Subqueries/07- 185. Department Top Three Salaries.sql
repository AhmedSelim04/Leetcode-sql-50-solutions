-- # Problem: https://leetcode.com/problems/department-top-three-salaries/
-- # Level : Hard

select Department,Employee,Salary
from (select	y.name Department ,x.name Employee ,x.salary Salary,
				dense_rank() over (partition by departmentId order by x.salary desc
	 ) dr
from Employee x 
left join Department y 
on x.departmentId =y.id) as n
where dr <= 3 