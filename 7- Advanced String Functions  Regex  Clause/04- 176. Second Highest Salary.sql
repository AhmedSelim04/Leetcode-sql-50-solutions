-- # Problem: https://leetcode.com/problems/second-highest-salary/
-- # Level : Medium

select if(count(salary),salary,null) SecondHighestSalary 
from (
    select distinct salary , dense_rank()over(order by salary desc) dr
    from Employee 
	 )as n
where dr = 2