-- 1. Find departments with average salary > 100000.

select department, avg(salary) from worker
group by department;
 

-- 2. Find departments where max salary is exactly 500000.

select department, max(salary) from worker
group by department
having max(salary )= 500000;

-- 3. Find departments with more than 1 employee and total salary > 100000.
 select department , count(worker_id) from worker
 group by department
 having count(worker_id) > 1 and sum(salary)>100000;

-- 4. Find departments with avg salary between 50000 and 200000.
select department , avg(salary) from worker
 group by department
 having avg(salary) between 50000 and 200000;


create table student (
    student_id int primary key,
    name varchar(50),
    department varchar(30),
    cgpa decimal(3,2)
);

create table award_details (
    award_id int primary key,
    student_id int,
    award_name varchar(50),
    year int,
    foreign key (student_id) references student(student_id)
);


insert into student values 
(1, 'arjun', 'cse', 8.7),
(2, 'meera', 'ece', 9.1),
(3, 'rahul', 'cse', 7.9),
(4, 'sneha', 'mech', 8.2),
(5, 'vijay', 'ece', 9.3);

insert into award_details values
(101, 1, 'best coder', 2023),
(102, 2, 'top scorer', 2024),
(103, 3, 'hackathon winner', 2023),
(104, 5, 'research award', 2024),
(105, 2, 'innovation award', 2022);
-- 1. find students who have won an award
select name 
from student 
where student_id in (select student_id from award_details);
-- 2. find the student with the highest cgpa
select name, cgpa
from student
where cgpa = (select max(cgpa) from student);
-- 3. find awards received by students in the 'ece' department
select award_name 
from award_details
where student_id in (select student_id from student where department = 'ece');