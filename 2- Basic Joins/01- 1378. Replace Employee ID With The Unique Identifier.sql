-- # Problem: https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/
-- # Level : Easy

select unique_id,name
from employees e1
left join EmployeeUNI e2
on e1.id=e2.id