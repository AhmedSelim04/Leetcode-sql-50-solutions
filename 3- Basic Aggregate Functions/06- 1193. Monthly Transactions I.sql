-- # Problem: https://leetcode.com/problems/monthly-transactions-i/
-- # Level : Medium

select	month , country , count(*) trans_count , 
		sum(case when state = 'approved' then 1 else 0 end) approved_count ,
		sum(amount) trans_total_amount , 
		sum(case when state = 'approved'then amount else 0 end) approved_total_amount 
from (
		select id , country , state ,amount,date_format(trans_date , '%Y-%m') AS month
		from Transactions 
	 ) as n
group by month , country 