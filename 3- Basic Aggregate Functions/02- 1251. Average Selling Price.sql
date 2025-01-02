-- # Problem: https://leetcode.com/problems/average-selling-price/
-- # Level : Easy

select  x.product_id ,
		(case 
		when sum(units * price) is not null  
		then round(sum(units * price)/sum(units) ,2) 
		else 0.00 
		end) as average_price 
from Prices x
left join UnitsSold y
on	x.product_id =y.product_id and 
	x.start_date <=purchase_date and 
	end_date >=purchase_date 
group by x.product_id 