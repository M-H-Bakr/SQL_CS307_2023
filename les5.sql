select max(salary) "Maximum" ,min(salary) "Minimum", sum(salary) "Sum", round(avg(salary),0) "Average"
from employees;

select job_id, max(salary) "Maximum" ,min(salary) "Minimum", sum(salary) "Sum", round(avg(salary),0) "Average"
from employees
group by job_id;

select job_id, count(*)
from employees
group by job_id;

select job_id, count(*)
from employees
group by job_id
having job_id = '&job';

select count(DISTINCT manager_id) "Number Of Managers"
from employees;

select max(salary) - min(salary) Difference
from employees;

select manager_id, min(salary)
from employees
where manager_id is not null
group by manager_id
having min(salary) > 6000;

select count(employee_id) total , count(decode(substr(hire_date, 8, 9), '95', employee_id)) "1995",
count(decode(substr(hire_date, 8, 9), '96', employee_id)) "1996", count(decode(substr(hire_date, 8, 9), '97', employee_id)) "1997",
count(decode(substr(hire_date, 8, 9), '98', employee_id)) "1998"
from employees;

select job_id "Job", sum(decode(department_id, 20, salary)) "Dept 20", sum(decode(department_id, 50, salary)) "Dept 50",
sum(decode(department_id, 80, salary)) "Dept 80", sum(decode(department_id, 90, salary)) "Dept 90", sum(salary) "Total"
from employees
group by job_id;
