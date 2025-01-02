-- # Problem: https://leetcode.com/problems/invalid-tweets/
-- # Level : Easy

select tweet_id 
from Tweets 
where char_length(content)>15;