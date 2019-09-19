Create Table Departments(
	"dept_no" varchar(10) primary key,
	"dept_name" varchar(50)

);

select * from Departments

Create Table Department_Employee(
	"emp_no" integer,	
	"dept_no" varchar(10),
	from_date Date,
	to_date date

);
select * from Department_Employee



Create Table Department_Manager(
	"dept_no" varchar(15),
	"emp_no" integer,
	"from_date" date,
	"to_date" date
);

select * from Department_Manager

-- Drop Table Employees

Create Table Employees(
	"emp_no" integer primary key,
	"birth_date" date,
	"first_name" varchar(50),
	"last_name" varchar(50),
	"gender" varchar(5),
	"hire_date" date
	
);



Create Table Salaries(
	"emp_no" integer,
	"salary" integer,
	"from_date" date,
	"to_date" date

);

Create Table Titles(
	"emp_no" integer,
	"title" varchar(50),
	"from_date" date,
	"to_date" date
);

select * from Titles



