-- # Problem: https://leetcode.com/problems/biggest-single-number/
-- # Level : Easy

select if(count(num)=1,num,null)as num from mynumbers
group by num
order by num desc
limit 1