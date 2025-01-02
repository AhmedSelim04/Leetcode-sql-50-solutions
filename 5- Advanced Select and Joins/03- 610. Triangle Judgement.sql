-- # Problem: https://leetcode.com/problems/triangle-judgement/
-- # Level : Easy

select * , if(x+y<=z or x+z<=y or y+z<=x, 'No' , 'Yes' ) Triangle 
from Triangle 