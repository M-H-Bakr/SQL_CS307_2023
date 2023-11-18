select sysdate "Date"
from dual;

select employee_id, last_name, salary, (salary+salary*15.5/100) "New Salary"
from employees;

select employee_id, last_name, salary, (salary+salary*15.5/100) "New Salary", (salary+salary*15.5/100) - salary "Increase"
from employees;

select initcap(last_name) "Name", Length(last_name) "Length"
from employees
where substr(last_name,1,1) IN ('J', 'M', 'A') ;

select initcap(last_name) "Name", Length(last_name) "Length"
from employees
where substr(last_name,1,1) = upper('&char') ;

select last_name, round(months_between(sysdate, hire_date),0) months_worked
from employees
order by 2;

select last_name, LPAD(salary,15, '$') "SALARY"
from employees;

select RPAD(substr(last_name, 1 ,8),8,' ') || LPAD(' ',(salary/1000)+1,'*') employees_and_their_salaries
from employees
order by salary desc;

select last_name, trunc(months_between(sysdate, hire_date)*4) tenure
from employees
where department_id = 90
order by 2 desc;
