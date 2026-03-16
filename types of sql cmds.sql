create database employees_data;
use employees_data;
show databases;
create  table employees_data(
emp_id int primary key auto_increment,
name varchar(50),
age int,
department varchar(40),
salary int);
INSERT INTO employees_data(emp_id,name,age,department,Salary)
VALUES
(101, 'Ravi', 25,'IT', 50000),
(102, 'Sneha', 24,'HR', 45000),
(103, 'Amit',27, 'Finance', 55000),
(104, 'Priya',24, 'Marketing', 48000),
(105, 'Kiran', 26,'IT', 52000);
select *from employees_data;
alter table employees_data
add experience int;
alter table employees_data
rename column name to emp_name;
alter table employees_data
modify salary bigint;
update employees_data
set experience=2
where emp_id=101;
update employees_data
set experience=3
where emp_id=102;
update employees_data
set experience=3
where emp_id=103;
update employees_data
set experience=1
where emp_id=104;
update employees_data
set experience=4
where emp_id=105;
update employees_data
set experience =6
where emp_id=103;
update employees_data
set salary =salary+5000
where department="it";
select *from employees_data;
update employees_data
set department ="sales"
where emp_id=105;
update employees_data
set age = 26
where emp_name ="ravi";
update employees_data
set experience=1
where experience=null;
set sql_safe_updates=0;
alter table employees_data
add city varchar(40);
update employees_data
set city="hyderabad"
where department="it";
update employees_data
set salary=salary*1.10
where experience>5;
alter table employees_data
rename company_employeess;
select *from company_employees; 
alter table company_employees
drop column city;