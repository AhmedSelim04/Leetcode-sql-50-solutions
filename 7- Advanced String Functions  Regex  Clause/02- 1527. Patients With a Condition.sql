-- # Problem: https://leetcode.com/problems/patients-with-a-condition/
-- # Level : Easy

select *
from Patients 
where conditions like 'DIAB1%' or conditions like '% DIAB1%'