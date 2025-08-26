create database companydb;
use companydb;

create table employees (
    empid int primary key auto_increment,
    firstname varchar(20),
    lastname varchar(20),
    age int,
    department varchar(20),
    salary int,
    joiningdate date
);
insert into employees (firstname, lastname, age, department, salary, joiningdate) values
('amit', 'sharma', 25, 'hr', 35000, '2022-05-10'),
('neha', 'verma', 29, 'finance', 55000, '2021-11-15'),
('ravi', 'kumar', 32, 'it', 75000, '2019-03-20'),
('sneha', 'patel', 28, 'it', 60000, '2020-07-30'),
('arjun', 'rao', 35, 'admin', 40000, '2018-01-25'),
('priya', 'singh', 26, 'finance', 48000, '2023-02-12'),
('karan', 'gupta', 30, 'hr', 30000, '2020-10-01'),
('simran', 'mehta', 27, 'it', 70000, '2019-12-17');
-- 10% increase in salary(current salary+ 10% of salary)
select firstname, salary, salary + (salary * 0.10) as newsalary from employees;
-- adding 10 to the age
select firstname, (age+10) from employees;
 
 -- subracting 50000 from the salary
select firstname, salary, salary - 50000 as difference from employees;
-- newsalary by subracting 5000 from the salary
select department, (salary- 5000) as newsalary1 from employees;
 
-- comparison operator
select * from employees where salary > 50000;
select * from employees where department <> 'it';
select * from employees where age <= 28;

-- logical operator
select * from employees where department = 'it' and salary > 60000;
select * from employees where department = 'hr' or department = 'finance';
select * from employees where not department = 'admin';
select * from employees where firstname not IN (1,3,5,7) and salary >= 10000;

-- special operator
select firstname, joiningdate 
from employees 
where joiningdate between '2020-01-01' and '2021-12-31';

select * from employees where department in ('it', 'finance', 'hr');

select firstname, department
from employees
where department not in ('hr', 'finance');


