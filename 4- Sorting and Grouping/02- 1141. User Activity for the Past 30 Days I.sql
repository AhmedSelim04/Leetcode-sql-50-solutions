-- # Problem: https://leetcode.com/problems/user-activity-for-the-past-30-days-i/
-- # Level : Easy

select activity_date as day,count(distinct user_id)active_users 
from Activity 
where activity_date between '2019-06-28' and '2019-07-27'
group by activity_date 