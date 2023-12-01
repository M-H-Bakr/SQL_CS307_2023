--Q1:
select last_name, hire_date
from employees
where department_id IN (select department_id from employees where last_name = initcap('&&ENTER_NAME'))
and last_name <> '&ENTER_NAME'
order by 2;

--Q2:
select employee_id, last_name, salary
from employees
where salary > (select avg(salary) from employees)
order by 3;

--Q3:
select employee_id, last_name 
from employees
where department_id IN(select department_id from employees where instr(last_name, 'u') <> 0);

--Q4:
select last_name, department_id, job_id
from employees
where department_id IN (select department_id from departments where location_id = 1700);

select last_name, department_id, job_id
from employees
where department_id IN (select department_id from departments where location_id = &Location_id);

--Q5:
select last_name, salary
from employees
where manager_id IN (select employee_id from employees where last_name = 'King');

--Q6:
select department_id, last_name, job_id
from employees
where department_id = (select department_id from departments where department_name = 'Executive');

--Q7: mix between query 2 and 3.
select employee_id, last_name, salary
from employees
where salary > (Select avg(salary) from employees)
and department_id IN (select department_id from employees where instr(last_name,'u') <>  0);