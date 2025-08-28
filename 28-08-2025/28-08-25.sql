select * from worker;
select * from worker where 
department = 'admin' order by salary asc;

select department, count(department) from 
worker group by department
 order by department desc; 
 
  -- sum of salary dept wise
 select department, sum(salary) from 
worker group by department
 order by department desc; 
 
 select department , count(worker_id) as total from 
 worker group by department
 order by total asc;
 
-- 1. Count employees not in HR or Admin.
select department , count(worker_id) as employee from worker 
where department not in ('hr' , 'admin')
group by department;

-- 2. Find the highest salary in each department.
select department , max(salary) from worker
group by department;

select * from worker
order by worker_id desc
offset 5 rows 
fetch next 10 rows only; 

SELECT LTRIM('    Hello World') AS Result;
-- Output: 'Hello World'
SELECT RTRIM('Hello World    ') AS Result;
-- Output: 'Hello World'
SELECT UPPER('hello world') AS Result;
-- Output: 'HELLO WORLD'
SELECT LOWER('HELLO WORLD') AS Result;
-- Output: 'hello world'

-- In MySQL, there are also TRIM() (removes both leading and trailing spaces) and advanced trims like TRIM(LEADING 'x' FROM 'xxxHello').

SELECT * 
FROM Worker
LIMIT 5;  -- limiting

SELECT * 
FROM Worker
LIMIT 7 OFFSET 2;  
-- skips first 10 rows, then returns next 5 rows









 