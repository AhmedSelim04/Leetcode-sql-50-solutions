-- # Problem: https://leetcode.com/problems/fix-names-in-a-table/description/
-- # Level : Easy

select user_id ,concat(upper(substr(name,1,1)),lower(substr(name,2)))name  
from Users 
order by user_id