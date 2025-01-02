-- # Problem: https://leetcode.com/problems/not-boring-movies/
-- # Level : Easy

select *
from Cinema 
where 
		mod(id,2) !=0 and 
		description<>'boring'
order by rating desc