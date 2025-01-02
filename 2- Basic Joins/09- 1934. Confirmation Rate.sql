-- # Problem: https://leetcode.com/problems/confirmation-rate/
-- # Level : Medium

select x.user_id,round(avg(IF(y.action='confirmed',1,0)),2) as confirmation_rate 
from Signups x
left join Confirmations y 
on x.user_id = y.user_id
group by x.user_id 
order by confirmation_rate 
