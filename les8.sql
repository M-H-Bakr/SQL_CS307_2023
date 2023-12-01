--Q1:
select department_id
from employees
minus
select department_id
from employees
where job_id = 'ST_CLERK';

--Q2: In the "departments" table... there is a department is located in germany so the output in oracle's slides is incorrect.
select country_id, country_name
from countries
minus
select country_id , country_name
from countries
where country_id IN (select country_id from departments natural join locations natural join countries);

--Q3:
select job_id, department_id
from employees
where department_id = 10
union
select job_id, department_id
from employees
where department_id = 50
union
select job_id, department_id
from employees
where department_id = 20;

--Q4:
select e.employee_id, j.job_id
from employees e join job_history j
on e.employee_id = j.employee_id
minus
select distinct e.employee_id, j.job_id
from employees e join job_history j
on e.job_id <> j.job_id;

--Another solution by directly joining:
select e.employee_id, j.job_id
from employees e join job_history j 
on e.job_id = j.job_id
and e.employee_id = j.employee_id;

--Q5: Seemingly can be also solved using join...
select last_name, department_id, to_char(null)
from employees
union
select to_char(null), department_id, department_name
from departments;







