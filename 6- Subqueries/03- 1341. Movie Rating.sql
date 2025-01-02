-- # Problem: https://leetcode.com/problems/movie-rating/
-- # Level : Medium

(select y.name as results
from MovieRating x
join Users y
on x.user_id=y.user_id
group by x.user_id
order by count(*)desc ,y.name
limit 1)
union all
(select y.title as results
from MovieRating x
join Movies  y
on x.movie_id=y.movie_id
where 
		x.created_at between DATE_FORMAT('2020-02-01','%Y-%m-%d') and 
		DATE_FORMAT('2020-02-29','%Y-%m-%d')
group by x.movie_id
order by avg(x.rating)desc ,y.title
limit 1)