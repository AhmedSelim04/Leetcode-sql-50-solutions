-- # Problem: https://leetcode.com/problems/find-customer-referee/description/
-- # Level : Easy

select name 
from customer 
where 
        not referee_id=2 or
        referee_id is null