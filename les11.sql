--Q1:
create or replace view employees_vu
as select employee_id, last_name employee, department_id
from employees;

--Q2:
select * from employees_vu;

--Q3:
select employee, department_id 
from employees_vu;

--Q4:
create or replace view dept50
as select employee_id empno, last_name employee, department_id deptno
from employees
with read only;

--Q5:
describe dept50;
select * from dept50;

--Q6: an error occurs because of read only constraint.
update dept50
set deptno = 80
where empno = 143;
