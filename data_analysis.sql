-- Data Analysis
-- #1 all employees - emp_no, last_name, first_name, gender, salary
select Employees.emp_no, Employees.last_name, Employees.first_name, Employees.gender,
	Salaries.salary
From Salaries
Inner Join Employees ON
Employees.emp_no=Salaries.emp_no;


-- #2 all employees 1986
select last_name, first_name 
from Employees
Where hire_date >= '1986-01-01'
and hire_date <='1987-01-01'


-- #3 Manager - Dept#, Dept_name, emp_no, last, first, start and end emp
select department_manager.dept_no,department_manager.emp_no, 
	department_manager.from_date, department_manager.to_date, 
	departments.dept_name, employees.last_name, employees.first_name
From departments
Inner Join 
(department_manager Inner Join employees
ON
department_manager.emp_no=employees.emp_no)
ON
department_manager.dept_no=departments.dept_no;



-- #4 all employees - emp_no, last_name, first_name, dept_name
-- join dept_emp, employees and then departments

select employees.emp_no,employees.last_name, employees.first_name, 
		department_employee.dept_no
From department_employee
Inner Join employees ON
employees.emp_no=department_employee.emp_no;


-- #5 all employees - first_name Hercules and last name beginning with B
select last_name, first_name from employees
where first_name = 'Hercules'
and last_name like 'B%' 



-- #6 Sales employees -  emp_no, last_name, first_name, dept_name
select employees.emp_no,employees.last_name, employees.first_name, departments.dept_name
From employees
Inner Join 
(department_employee Inner Join departments
ON
department_employee.dept_no=departments.dept_no)
ON
department_employee.emp_no=employees.emp_no
where departments.dept_name='Sales'



-- #7 Sales and Development - emp_no, last_name, first_name and dept_name
select employees.emp_no,employees.last_name, employees.first_name, departments.dept_name
From employees
Inner Join 
(department_employee Inner Join departments
ON
department_employee.dept_no=departments.dept_no)
ON
department_employee.emp_no=employees.emp_no
where departments.dept_name='Sales' 
or departments.dept_name='Development'



-- #8 descending order, list count of employee last names how many employees share last name
select last_name, count(last_name) as "Last Name Count" from employees 
group by last_name
order by "Last Name Count"





