-- # Problem: https://leetcode.com/problems/game-play-analysis-iv/
-- # Level : Medium

select *
from activity
where 
	(player_id, dae_sub(event_date, interval 1 day)) in 
	(select player_id, min(event_date) as first_login from activity group by player_id)