--10. Calculate the number of salary employees per job_id and sort from largest to smallest
select 
	job_id,
	sum(salary) as sum_salary
from employees e 
group by job_id 
order by sum_salary desc 

--11. Find the maximum salary value for each department_id
select 
	department_id,
	max(salary) as max_salary
from employees e 
group by department_id 

--12. Calculate the average commission percentage (commission_pct) for each manager_id
select 
	manager_id,
	avg(commission_pct) as avg_commission_pct
from employees e 
group by manager_id 

select 
	*
from departments d 

--13. Count the number of managers in the table for each location_id
select 
	location_id,
	count(manager_id) as count_manager_id
from departments d 
group by location_id 

--14. Combine the employee table with the jobs table to find out the current salary and compare it with the minimum salary and maximum salary of each employee
select
	distinct e.employee_id,
	e.first_name ,
	e.last_name ,
	e.salary,
	j.min_salary,
	j.max_salary 
from employees e 
join jobs j on e.salary = j.min_salary 
	
--15. Show employee id, last name, first name, and region where he works. Clue : must combine multiple tables
select 
	e.employee_id,
	e.first_name,
	e.last_name,
	r.region_id,
	r.region_name
from employees e 
join departments d on e.department_id = d.department_id 
join locations l on d.location_id = l.location_id 
join countries c on l.country_id = c.country_id
join regions r on c.region_id = r.region_id