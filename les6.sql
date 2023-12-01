--Q1\
select location_id, street_address, city, state_province, country_name
from departments 
natural join locations 
natural join countries ;

--Q2\
select last_name, department_id, department_name
from employees
natural join departments;

--Q3\
select last_name, job_id, department_id, department_name
from employees
natural join departments
join locations on (city = 'Toronto');

--Q4\
select worker.last_name "Employee", worker.employee_id emp#, manager.last_name "Manager", manager.employee_id "Mgr#"
from employees worker join employees manager 
on worker.manager_id = manager.employee_id;

--Q5\ simple edit on Q4 to display king (Who has no manager).
select worker.last_name "Employee", worker.employee_id emp#, manager.last_name "Manager", manager.employee_id "Mgr#"
from employees worker left join employees manager 
on worker.manager_id = manager.employee_id
order by 2;

--Q6\
select a.department_id, a.last_name, b.last_name
from employees a join employees b 
on a.department_id = b.department_id
and a.last_name <> b.last_name
order by 1;

--Q7\ table "job_grades" does NOT exist in oracle 21C, So we're going to solve this query using set operations:
select last_name, job_id, department_name, salary, 'A' grade_level
from employees join departments 
on salary between 1000 and 2999
and departments.department_id = employees.department_id
union
select last_name, job_id, department_name, salary, 'B' grade_level
from employees join departments 
on salary between 3000 and 5999
and departments.department_id = employees.department_id
union
select last_name, job_id, department_name, salary, 'C' grade_level
from employees join departments 
on salary between 6000 and 9999
and departments.department_id = employees.department_id
union
select last_name, job_id, department_name, salary, 'D' grade_level
from employees join departments 
on salary between 10000 and 14999
and departments.department_id = employees.department_id
union
select last_name, job_id, department_name, salary, 'E' grade_level
from employees join departments 
on salary between 15000 and 24999
and departments.department_id = employees.department_id
union
select last_name, job_id, department_name, salary, 'F' grade_level
from employees join departments 
on salary between 25000 and 40000
and departments.department_id = employees.department_id
order by 4;

--Q8\ can be solved by SubQueries.
select e.last_name, e.hire_date
from employees e join employees l
on l.last_name = 'Davies'
and e.hire_date > l.hire_date
order by 2 desc;

--Q9\ like query 4 with simple edits.
select worker.last_name , worker.hire_date, manager.last_name, manager.hire_date
from employees worker join employees manager 
on worker.manager_id = manager.employee_id
and worker.hire_date < manager.hire_date;
