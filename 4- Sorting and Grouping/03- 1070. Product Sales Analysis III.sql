-- # Problem: https://leetcode.com/problems/product-sales-analysis-iii/
-- # Level : Medium

select product_id ,min(year) first_year ,quantity ,price 
from Sales
group by product_id 
 