-- # Problem: https://leetcode.com/problems/find-followers-count/
-- # Level : Easy

select user_id , count(*) followers_count
from Followers 
group by user_id
order by user_id