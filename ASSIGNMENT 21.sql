drop database buildings;
create database Buildings;
use Buildings;
create table Buildings(
Building_name varchar(50),
Capacity varchar(40));

select * from Buildings;

insert into Buildings
value
     ('le',24),
     ('lw',32),
     ('2e',16),
     ('2w',20);
select* from Buildings;

create table employees(
Role varchar(60),
Name varchar(50),
Building varchar(60),
year_employed int);

select * from employees;

insert into employees
value
     ('Engineer','Becky A.','le',4),
     ('Engineer','Dan B.','le',2),
     ('Engineer','Sharan F.','le',6),
     ('Engineer','Dan M.','le',4),
     ('Engineer','Malcom S.','le',1),
     ('Artist','Tylar S.','2w',2);
     
select * from employees;

SELECT DISTINCT Building_name
FROM Buildings
JOIN Employees ON Buildings.Building_name = Employees.Building;

SELECT Building_name, Capacity
FROM Buildings;

SELECT Buildings.Building_name, COALESCE(GROUP_CONCAT(DISTINCT Employees.Role SEPARATOR ', '), 'No employees') AS Employee_roles
FROM Buildings
LEFT JOIN Employees ON Buildings.Building_name = Employees.Building
GROUP BY Buildings.Building_name;