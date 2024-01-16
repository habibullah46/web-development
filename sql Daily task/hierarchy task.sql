
--create table employee (
--E_id int primary key ,
--E_name varchar(30),
--position varchar(30),
--D_id int ,
--)
--create table department(
--D_id int primary key ,
--D_name varchar (30)
--)
--create table Hierarchy(
--Manager_id int primary key ,
--E_id int 
--)
-- Create Employee table


-- Insert data into Employee table
--INSERT INTO Employee VALUES
--(1, 'John Doe', 'Manager', 1),
--(2, 'Jane Smith', 'Developer', 2),
--(3, 'Bob Johnson', 'Analyst', 1),
--(4, 'Alice Brown', 'Designer', 2),
--(5, 'Charlie Davis', 'Developer', 1),
--(6, 'Eva Wilson', 'Manager', 2),
--(7, 'Frank Miller', 'Analyst', 2),
--(8, 'Grace Lee', 'Designer', 1),
--(9, 'Henry White', 'Developer', 2),
--(10, 'Ivy Robinson', 'Manager', 1)

-- Insert data into Department table
--INSERT INTO Department VALUES
--(1, 'IT'),
--(2, 'Marketing')



-- Insert data into Hierarchy table
--INSERT INTO Hierarchy VALUES
--(1, 2),
--(3, 5),
--(6, 9),
--(10, 3),
--(6, 7),
--(10, 8),
--(1, 4),
--(3, 1),
--(6, 10),
--(10, 6)
--insert into Hierarchy values 
--(1, 4),
--(3, 1),
--(6, 10),
--(10, 6)
with CTE_emply as (select Hierarchy.Manager_id, employee.E_name from employee
join Hierarchy
on employee.E_id = Hierarchy.E_id)
select * from CTE_emply



select e.E_name,e.Manager_id from employee e 
where e.Manager_id is null

select * from department
select * from employee 
select * from Hierarchy
--Implement a stored procedure that takes an employee_id as input and returns the names
--of all the employees reporting
--directly or indirectly to that employee.
select * from employee e
join department d
on e.D_id = d.D_id
join Hierarchy h
on e.E_id = h.E_id
where h.manager_id = 1
