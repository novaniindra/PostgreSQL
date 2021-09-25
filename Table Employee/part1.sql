--1. Show Employee ID, Name, Email, Mobile Number, and Employee Salary
select
	employee_id,
	first_name,
	last_name,
	email,
	phone_number,
	salary
from employees e


--2. Show all job lists and all columns in the jobs table
select
	*
from jobs j
 

--3. Show manager_id uniquely from Employee Table
select
	distinct manager_id
from employees e
 

--4. Show unique salary from Employee Table
select 
	distinct salary
from employees e


--5. Show Employee ID, Name, Email, Mobile Number and Salary of employees with a minimum salary of 7000
select
	employee_id,
	first_name,
	last_name,
	email,
	phone_number,
	salary
from employees e 
where salary >= 7000


--6. Show Employee ID, Name, Hire Date and Salary of employees with a minimum salary of 7000 to a maximum of 8000 and a hire_date of more than 1987-08-01
select
	employee_id,
	first_name,
	last_name,
	hire_date,
	salary
from employees e 
where salary between 7000 and 8000 and hire_date > '1987-08-01'


--7. Show Employee ID, Name, job_id of employees who have manager position (job_id = ('FI_MGR', 'PU_MAN', 'ST_MAN', 'SA_MAN'))
select 
	employee_id,
	first_name,
	last_name,
	job_id
from employees e 
where job_id in ('FI_MGR', 'PU_MAN', 'ST_MAN', 'SA_MAN')


--8. Show 5 oldest employees
select 
	employee_id,
	first_name ,
	last_name,
	hire_date 
from employees e
order by hire_date desc 
limit 5


--9. Show employees with salaries of 5000-10000 and order from largest to smallest
select 
	employee_id,
	first_name,
	last_name,
	salary
from employees e 
where salary between 5000 and 10000
order by salary desc  


