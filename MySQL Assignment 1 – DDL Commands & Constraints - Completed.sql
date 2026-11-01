Drop database employee_database;

Create database	Employee_Database;

Use employee_database;

/*

	syntax:
create table table_name(column_name1 data_type(size) constraint ,
column_name2 data_type(size) constraint,
column_name3 data_type(size) constraint
:
:
);
*/
-- DDL Commands - 1. Table Creation (CREATE):

Create Table Employee(
	Employee_ID int,
    Employee_Name varchar(50),
    Gender enum ('M','F'),
    Age Int,
    Hire_Date date,
    Designation Varchar(100),
    Department_ID Int,
    Location_Id Int,
    Salary Decimal(10,2)
    );
    desc Employee;
    
    
    CREATE TABLE Department(
    Department_id INT,
    Department_name VARCHAR(100));
    
     desc Department;
     
    CREATE TABLE location (
    location_id INT,
    location VARCHAR(30)
);
      desc location;
      
      
     desc Employee;
     
	desc Department;
	desc Location;
    
    
    -- 2. Table Alteration (ALTER):
    
    alter table Employee add Email varchar(100);
    
    desc Employee;
    
ALTER TABLE Employee MODIFY COLUMN designation VARCHAR(100);

Alter table Employee Drop Column Age;

alter table Employee rename column Hire_Date to Date_Of_Joining;

-- Table Renaming (RENAME):

Rename table Department to Department_Info;

Desc Department_Info;

Rename table Location to Locations;

Desc Locations;

-- Table Renaming (RENAME):

TRUNCATE TABLE Employee;

-- Database & Table Dropping (DROP):

Drop table Employee;

Drop database employee_database;


-- Constraints :
-- Database Recreation:

Create database	Employee_Database;
    
    Use Employee_Database;
    
    CREATE TABLE Department(
    Department_id INT primary key,
    Department_name varchar(100) not null
    );
    
    CREATE TABLE location (
    location_id INT auto_increment primary key,
    location VARCHAR(150) not null unique
);

Create Table Employee(
	Employee_ID int primary key,
    Employee_Name varchar(100) Not Null,
    Gender char(1) not null check (Gender in ('M','F')),
    Age Int check (Age>=18),
    Hire_Date date default(current_date()),
    Designation Varchar(100),
    Department_id Int not null,
    location_Id Int not null,
    Salary Decimal(10,2),
	Foreign KEY (Department_id) references Department(Department_id),
	Foreign KEY (location_id) references location(Location_id)
    );
    
    show databases;
    
    show tables;

    
    
    
    
    
	