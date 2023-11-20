--Query1:
select count(distinct job_id)
from employees;

--Query2:
select count(decode(substr(hire_date, 8, 9), '01', employee_id)) "year 2001",
count(decode(substr(hire_date, 8, 9), '02', employee_id)) "year 2002",
count(decode(substr(hire_date, 8, 9), '03', employee_id)) "year 2003",
count(decode(substr(hire_date, 8, 9), '04', employee_id)) "year 2004",
count(decode(substr(hire_date, 8, 9), '05', employee_id)) "year 2005"
from employees;

--(For Assurance):
--Helper Query for Query1
select job_id
from employees;

--Helper Query for Query2:
select employee_id, hire_date
from employees
order by 2;

