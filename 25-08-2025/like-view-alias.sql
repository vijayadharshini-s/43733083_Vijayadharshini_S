use clg;
create table employee (
    emp_id int,
    emp_name varchar(30),
    department varchar(20),
    salary int,
    city varchar(20)
);

insert into employee values
(1, 'vijay', 'IT', 60000, 'chennai'),
(2, 'arun', 'HR', 45000, 'madurai'),
(3, 'meena', 'IT', 55000, 'coimbatore'),
(4, 'raju', 'finance', 70000, 'chennai'),
(5, 'sowmi', 'marketing', 40000, 'salem');

select emp_name as name, salary as monthly_salary
from employee;

select e.emp_name, e.department
from employee as e;


select emp_name, department
from employee
where emp_name like 'v%';


select emp_name, city
from employee
where city like '%i';


create view it_employees as
select emp_id, emp_name, salary
from employee
where department = 'IT';


select * from it_employees;