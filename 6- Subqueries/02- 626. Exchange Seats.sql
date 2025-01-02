-- # Problem: https://leetcode.com/problems/exchange-seats/
-- # Level : Medium

select if(id<(select max(id)from seat),
									   if( mod(id,2)=0 , id-1 , id+1),
									   if( mod(id,2)=0 , id-1 , id)
																	  ) as id, student 
from Seat 
order by id