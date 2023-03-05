CREATE TABLE Departments (
	dept_no VARCHAR (20) NOT NULL,
	dept_name VARCHAR (20) NOT NULL,
	PRIMARY KEY (dept_no)
);

CREATE TABLE Dep_emp (
	emp_no INTEGER NOT NULL,
	dept_no VARCHAR (20) NOT NULL,
	PRIMARY KEY (emp_no)
	FOREIGN KEY(dept_no) REFERENCES Departments (dept_no)
);

CREATE TABLE Dep_manager (
	dept_no VARCHAR (20) NOT NULL,
	emp_no INTEGER NOT NULL,
	CONSTRAINT dep_man PRIMARY KEY (dept_no,emp_no)
);

CREATE TABLE Employees (
	emp_no INTEGER NOT NULL,
	emp_title_id VARCHAR (20) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR (20) NOT NULL,
	last_name VARCHAR (20) NOT NULL,
	sex VARCHAR (20) NOT NULL,
	hire_date DATE,
	CONSTRAINT employee PRIMARY KEY (emp_no,emp_title_id)
);

CREATE TABLE Salaries ( 
	emp_no INTEGER NOT NULL,
	salary INTEGER NOT NULL,
	PRIMARY KEY (salary)
	FOREIGN KEY(emp_no) REFERENCES Departments (Dep_emp)
);
	
CREATE TABLE Titles (
	title_id VARCHAR (20) NOT NULL,
	title VARCHAR (20) NOT NULL,
	PRIMARY KEY (title)
);






















