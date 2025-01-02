-- # Problem: https://leetcode.com/problems/employee-bonus/
-- # Level : Easy

select x.name ,y.bonus
from employee x
left join bonus y
on x.empid = y.empid
where y.bonus is null or y.bonus < 1000 
