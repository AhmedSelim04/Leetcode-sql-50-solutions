-- # Problem: https://leetcode.com/problems/investments-in-2016/
-- # Level : Medium

select round(sum(tiv_2016),2) tiv_2016 
from Insurance 
where	(lat,lon) not in (
						select x.lat,x.lon
						from Insurance x
						join Insurance y
						where	x.pid<>y.pid and 
								x.lat=y.lat and 
								x.lon=y.lon
						 )
		and tiv_2015 in(
						select x.tiv_2015
						from Insurance x
						join Insurance y
						where	x.pid<>y.pid and 
								x.tiv_2015=y.tiv_2015 and 
								(x.lon<>y.lon or x.lat <>y.lat)
						)
