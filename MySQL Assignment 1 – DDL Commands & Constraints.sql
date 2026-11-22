create database employee;
    use employee;
    
 create table Departments(
  Department_id int primary key,
  Department_name VARCHAR(100)
  );   
  
  create table Location(
     location_id int,
    Location varchar(30) 
     );
     

create table employees(
       Employee_id int primary key,
       Employee_name varchar(50),
       Gender enum('M','F'),
       Age int,
       Hire_date date,
       Designation varchar(100),
       Department_id int,
       location_id int,
       Salary decimal(10,2)
       );
     
     
     alter table employees
       add column Email varchar(100);
       
    
    alter table employees
      modify Designation varchar(200);
       
    alter table employees
       drop column age;
       
	alter table employees
     rename column  Hire_date to date_of_joining ;
      
     alter table Departments
       rename to Departments_Info ;
       
     alter table Location
       rename to Locations ;  

truncate table employees;

drop table employees;
       
drop database employee;



create table Departments(
  Department_id int primary key,
  Department_name VARCHAR(100) NOT NULL
  );
  

	
   
  create table Location(
     location_id int auto_increment primary key,
    Location varchar(30) NOT NULL
     );
     
     
     

     
     create table employees(
       Employee_id int primary key,
       Employee_name varchar(50) not null,
       Gender enum('M','F'),
       Age int check (age>=18),
       Hire_date date default(current_date),
       Designation varchar(100),
       Department_id int,
       location_id int,
       Salary decimal(10,2),
       foreign key (Department_id)
       references Departments(Department_id),
       foreign key (location_id)
       references Location(location_id)
       );
       
       
	
       
       



       
       
      