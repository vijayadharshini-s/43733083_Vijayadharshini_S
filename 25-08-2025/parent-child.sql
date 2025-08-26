show databases;
create database clg;
use clg;
create table college (
  college_id int primary key,
  college_name varchar(50),
  city varchar(30),
  established_year int
);
insert into college values
(101, 'sathyabama', 'chennai', 1987),
(102, 'vit', 'vellore', 1984),
(103, 'srm', 'kanchipuram', 1985);
create table dept (
  dept_id int primary key,
  dept_name varchar(50),
  hod varchar(50),
  college_id int,
  foreign key (college_id) references college(college_id) on delete cascade
);
insert into dept values
(201, 'cse', 'dr. arun', 101),
(202, 'ece', 'dr. priya', 101),
(203, 'it', 'dr. mohan', 102),
(204, 'mech', 'dr. sanjay', 103);
create table student (  
  student_id int primary key,
  student_name varchar(50),
  year int,
  dept_id int,
  foreign key (dept_id) references dept(dept_id) on delete cascade
);
insert into student values
(301, 'ram', 2, 201),
(302, 'anu', 3, 201),
(303, 'kumar', 1, 202),
(304, 'sneha', 4, 203),
(305, 'meena', 2, 204);

delete from college where college_id = 101;
select * from dept;