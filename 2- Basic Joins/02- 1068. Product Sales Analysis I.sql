-- # Problem: https://leetcode.com/problems/product-sales-analysis-i/
-- # Level : Easy

select product_name,year,price
from sales s
left join product p
on s.product_id=p.product_id