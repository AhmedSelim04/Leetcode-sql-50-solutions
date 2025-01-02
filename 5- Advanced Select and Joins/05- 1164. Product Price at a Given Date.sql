-- # Problem: https://leetcode.com/problems/product-price-at-a-given-date/
-- # Level : Medium

select x.product_id product_id  ,
ifnull(y.new_price,10)price 
from (
		select product_id,max(change_date)change_date   
		from Products 
		where datediff('2019-08-16',change_date)>=0
		group by product_id
     ) as x
left join Products y
on x.change_date =y.change_date and x.product_id=y.product_id
union 
select distinct product_id,10 as price
from products
group by product_id
having min(change_date) > "2019-08-16"

