Select job_id, Max(salary) "Maximum", Min(salary) "Minimum", Sum(salary) "Sum", round(AVG(salary)) "Average"
from employees
Group by job_id;

Select job_id,  Count(*)
from employees
Group by job_id;

select job_id, count(*)
from employees
where job_id = upper('&Job')
group by job_id;

Select count(Distinct manager_id) "Number Of Managers"
from employees;

Select manager_id, Min(Salary)
from employees
where manager_id is NOT null
group by manager_id
having min(salary) > 6000
order by min(salary) desc;

Select job_id "Job", sum(decode(department_id, 20, salary)) "Dept 20", sum(decode(department_id, 50, salary)) "Dept 50",
sum(decode(department_id, 80, salary)) "Dept 80", sum(decode(department_id, 90, salary)) "Dept 90", 
sum(salary) "Total"
from employees

group by job_id;
