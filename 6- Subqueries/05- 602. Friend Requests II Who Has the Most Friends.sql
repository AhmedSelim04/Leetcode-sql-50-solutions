-- # Problem: https://leetcode.com/problems/friend-requests-ii-who-has-the-most-friends/
-- # Level : Medium

with x as(select requester_id id from RequestAccepted
union all
select accepter_id id from RequestAccepted)
select id, count(*) num
from x 
group by id 
order by count(*)desc
limit 1