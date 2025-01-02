-- # Problem: https://leetcode.com/problems/consecutive-numbers/
-- # Level : Medium

select distinct x.num as ConsecutiveNums
from Logs x
join Logs y on x.id = y.id - 1  
join Logs z on x.id = z.id - 2 
where x.num = y.num and x.num = z.num