-- # Problem: https://leetcode.com/problems/rising-temperature/
-- # Level : Easy

select y.id 
from weather x
join weather y
on datediff(y.recorddate,x.recorddate)=1
where y.temperature>x.temperature 
