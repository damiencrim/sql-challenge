--List the employee number, last name, first name, sex, and salary of each employee.

Select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees e
join salaries s
on e.emp_no = s.emp_no ;

--List the first name, last name, and hire date for the employees who were hired in 1986.

select first_name, last_name, hire_date
from employees
where hire_date between '1986-1-1' and '1986-12-31'
order by hire_date asc;


--List the manager of each department along with their department number, department name, employee number, last name, and first name.

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name, dm.dept_no
FROM employees e
JOIN dept_manager dm 
ON e.emp_no = dm.emp_no
JOIN departments d
ON d.dept_no = dm.dept_no
ORDER BY d.dept_name asc;

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT d.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_manager dm 
ON e.emp_no = dm.emp_no
JOIN departments d
ON d.dept_no = dm.dept_no
ORDER BY d.dept_name asc;



--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

SELECT first_name, last_name, sex
from employees
where first_name = 'Hercules' and last_name Like 'B%'
order by last_name asc ;

--List each employee in the Sales department, including their employee number, last name, and first name.

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
join department_employee de
on e.emp_no = de.emp_no
join departments d
on d.dept_no = de.dept_no
where d.dept_name = 'Sales';


--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
join department_employee de
on e.emp_no = de.emp_no
Join departments d
on d.dept_no = de.dept_no
where d.dept_name = 'Sales' or d.dept_name = 'Development'
order by d.dept_name asc;


--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
select last_name, count(emp_no) as employees_with_same_last_name
from employees
group by last_name
order by employees_with_same_last_name desc ;
