--Q1:
create table my_employee (id number(4) constraint c6 primary key, last_name varchar2(25),
first_name varchar2(25), userid varchar(8), salary number(9,2));

--Q2:
describe my_employee;

--Q3:
insert into my_employee values(1, 'Patel', 'Ralph', 'rpatel', 895);

--Q4:
insert into my_employee(id, last_name, first_name, userid, salary)
values (2, 'Dancs', 'Betty', 'bdancs', 860);

--Q5:
select * from my_employee;

--Q6,7: run two times and a third time for Q16:
insert into my_employee values(&id, '&last_name', '&first_name', 'userid', &salary);

--Q8:
select * from my_employee;

--Q9:
commit;

--Q10:
update my_employee
set last_name = 'Drexler'
where id = 3;

--Q11:
update my_employee
set salary = 1000
where salary < 900;

--Q12:
select * from my_employee;

--Q13:
delete from my_employee
where id = 2;

--Q14:
select * from my_employee;

--Q15:
commit;

--Q16: solved using a previous Question, Q17:
select * from my_employee;

--Q18:
savepoint p;

--Q19:
delete from my_employee;

--Q20:
select * from my_employee;

--Q21;
rollback to p;

--Q22:
select * from my_employee;

--Q23:
commit;

--Q24: also run for Q25: 
insert into my_employee values(&id, '&&last_name', '&&first_name', lower(substr('&first_name',1,1)||substr('&last_name',1,7)),
&salary);

--Q26:
select * from my_employee where id = 6;
