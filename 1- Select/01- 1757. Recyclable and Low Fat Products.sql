-- # Problem: https://leetcode.com/problems/recyclable-and-low-fat-products/description/
-- # Level : Easy

select product_id
from Products
where 
    low_fats='Y' and 
    recyclable ='Y';