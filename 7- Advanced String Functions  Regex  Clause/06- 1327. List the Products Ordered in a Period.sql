-- # Problem: https://leetcode.com/problems/list-the-products-ordered-in-a-period/
-- # Level : Easy

select y.product_name ,sum(unit)unit 
from (
    select *
    from orders
    where order_date between '2020-02-01' and '2020-02-29'
	 ) as x
right join Products y
on x.product_id  =y.product_id  
group by x.product_id 
having unit >=100