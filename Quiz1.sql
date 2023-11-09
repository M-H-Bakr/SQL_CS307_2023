--Query1:
select substr(job_title, 1, instr(job_title,' ')-1)
from jobs;

--Query2:
select employee_id, first_name, last_name, hire_date
from employees
where substr(hire_date, 1,2) = 07; 

--Query3:
select employee_id, hire_date, Months_between(SYSDATE , hire_date), next_day(hire_date, 'friday'), + 7,
last_day(hire_date)
from employees
where months_between(SYSDATE, hire_date)<100;
