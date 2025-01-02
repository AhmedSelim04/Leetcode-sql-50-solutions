-- # Problem: https://leetcode.com/problems/managers-with-at-least-5-direct-reports/
-- # Level : Medium

select x.name
from Employee x 
join Employee y
on x.id = y.managerId 
group by x.id
having count(*)>=5