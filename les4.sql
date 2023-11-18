select last_name || 'earns' || to_char(salary,'$99,999.00') || ' monthly but wants' ||
to_char(salary*3,'$99,999.00')||'.' "Dream Salaries"
from employees;

select last_name, hire_date, to_char(next_day(add_months(hire_date, 6), 'Monday'), 'fmDay", the "Ddspth "of" Month"," YYYY') review
from employees;

select last_name, hire_date, to_char(hire_date, 'DAY')
from employees
order by to_char(hire_date-1, 'D');

select last_name, decode(commission_pct, null, 'No Commission', commission_pct) comm
from employees;

select job_id, decode(job_id, 'AD_PRES', 'A', 'ST_MAN', 'B', 'IT_PROG', 'C', 'SA_REP', 'D', 'ST_CLERK', 'E', 0) grade
from employees;
