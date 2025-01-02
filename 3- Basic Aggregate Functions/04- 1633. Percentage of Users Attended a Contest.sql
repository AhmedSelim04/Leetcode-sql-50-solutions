-- # Problem: https://leetcode.com/problems/percentage-of-users-attended-a-contest/
-- # Level : Easy

select	contest_id ,
		round( count(contest_id )*100/(select count(user_id)from users) ,2) as percentage 
from Register 
group by contest_id
order by  percentage desc,contest_id 