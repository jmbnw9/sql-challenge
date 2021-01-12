--List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT e.emp_no, e.first_name, e.last_name, e.sex, s.salary
FROM employees AS e
INNER JOIN salaries AS s ON
e.emp_no=s.emp_no;

--List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE
	hire_date between '1986-01-01' and '1986-12-31';
	
--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name.
SELECT e.emp_no, d.dept_no, d.dept_name, e.first_name, e.last_name, m.emp_no
FROM dept_manager AS m 
INNER JOIN employees AS e ON m.emp_no=e.emp_no
INNER JOIN departments AS d ON d.dept_no=m.dept_no;
