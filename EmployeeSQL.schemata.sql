-- CREATE TITLE TABLE
CREATE TABLE Titles(
	title_id varchar(10) primary key NOT NULL,
	title varchar (10)
);


--CREATE EMPLOYEE TABLE
CREATE TABLE Employees(
	emp_no varchar primary key NOT NULL,
	emp_title_id varchar references Titles(title_id),
	birth_date date,
	first_name varchar,
	last_name varchar,
	sex varchar (4),
	hire_date date
);

--CREATE DEPARTMENT TABLE
CREATE TABLE Departments(
	dept_no varchar (10) primary key NOT NULL,
	dept_name varchar (10)
);

--CREATE DEPARTMENT EMPLOYEE TABLE
CREATE TABLE Department_Employee(
	emp_no varchar primary key NOT NULL,
	dept_no varchar references Departments(dept_no)
);


--CREATE TABLE DEPARTMENT MANAGER
CREATE TABLE Dept_Manager (
    dept_no VARCHAR (20)  NOT NULL,
    emp_no varchar  NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES Employees (emp_no),
    FOREIGN KEY (dept_no) REFERENCES Departments (dept_no),
    PRIMARY KEY (dept_no, emp_no)
);

--CREATE TABLE SALARIES

CREATE TABLE Salaries (
    emp_no varchar primary key  NOT NULL,
    salary INT   NOT NULL
    
);	
	
	



Select *
FROM employees as emp
    inner JOIN salaries as sal
    ON (emp.emp_no = sal.emp_no)
ORDER BY emp.emp_no;
	

	
	
	
	