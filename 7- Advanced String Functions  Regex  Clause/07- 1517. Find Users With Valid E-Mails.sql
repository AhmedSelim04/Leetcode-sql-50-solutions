-- # Problem: https://leetcode.com/problems/find-users-with-valid-e-mails/
-- # Level : Easy

select *
from Users 
where mail REGEXP '^[a-zA-Z][a-zA-Z0-9_.-]*@leetcode[.]com$';
