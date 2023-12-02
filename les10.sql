--Q1:
create table dept (id number(7) constraint c1 primary key, name varchar2(25));
--show what we have done:
describe dept;

--Q2:
insert into dept
select employee_id, last_name from employees join departments on departments.department_id = 80;
--show what we have done:
select * from dept;
--undo it:
truncate table dept;

--Q3:
create table emp (id number(7), first_name varchar2(25), last_name varchar2(25),
dept_id number(7) constraint c2 references dept(id));
--show what we have done:
describe emp;

--Q4:
create table employees2 (employee_id number(6) constraint c3 primary key, first_name varchar2(20),
last_name varchar(25) constraint c4 not null, salary number(8,2),
department_id number(4) constraint c5 REFERENCES departments(department_id));
--show what we have done:
describe employees2;

--Q5:
alter table employees2 read only;

--Q6 (error meant to happen don't worry):
insert into employees2 values (34, 'Grant', 'Marcie', 5678, 10);

--Q7: 
alter table employees2 read write;
insert into employees2 values (34, 'Grant', 'Marcie', 5678, 10);
--showe what we have done:
select * from employees2;

--Q8:
drop table employees2;



