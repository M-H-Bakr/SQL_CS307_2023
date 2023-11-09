select SYSDATE "Date" from dual;
select employee_id, last_name, salary, round(salary + salary*(15.5/100),0) "New Salary"
from employees;

select employee_id, last_name, salary, round(salary + salary*(15.5/100),0) "New Salary", 
round(salary + salary*(15.5/100),0) - salary "Increase"
from employees;

select last_name "Name", length(last_name) "Length"
from employees
where instr(last_name,'A') = 1 or instr(last_name,'M') = 1 or instr(last_name,'J') = 1
order by last_name;

select last_name "Name", length(last_name) "Length"
from employees
where instr(last_name, '&char') = 1
order by last_name;

select last_name, round(Months_between(sysdate, hire_date),0) As Months_Worked
from employees
order by Months_between(sysdate, hire_date);

select last_name, LPAD(salary,15,'$') "Salary"
from employees;

select  substr(last_name,1,8) || ' ' || LPAD(' ', (salary/1000)+1, '*') as EMPLOYEES_AND_THEIR_SALARIES
from employees
order by salary desc;

select last_name, trunc(Months_between(sysdate, hire_date)*4) as tenure
from employees
where department_id = 90
order by trunc(Months_between(sysdate, hire_date)*4);
