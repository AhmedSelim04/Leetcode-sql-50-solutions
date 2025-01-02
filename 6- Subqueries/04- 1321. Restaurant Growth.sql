-- # Problem: https://leetcode.com/problems/restaurant-growth/
-- # Level : Medium

SELECT	x.visited_on,x.total AS amount,
		ROUND(x.total / 7, 2) AS average_amount
FROM (SELECT c.*,
			 SUM(amount) OVER (
             ORDER BY visited_on 
             RANGE INTERVAL 6 DAY PRECEDING
							  ) AS total
	  FROM customer c
	 ) as x,
	 customer a
WHERE DATEDIFF(x.visited_on, a.visited_on) = 6
GROUP BY x.visited_on
ORDER BY x.visited_on;