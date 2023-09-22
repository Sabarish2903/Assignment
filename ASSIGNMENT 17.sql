drop database empdependent;

create database EMPDEPENDENT;

use EMPDEPENDENT;

create table EMPLOYEE (
  eaadhaarno bigint (30) PRIMARY KEY,
  ename VARCHAR(50),
  eaddress VARCHAR(100),
  edepartment VARCHAR(50),
  employee_id INT
);

CREATE TABLE DEPENDENT (
  demployee_id INT,
  dependent_name VARCHAR(50),
  relationship VARCHAR(20)
);

select * from employee;

select * from dependent;

insert into employee
values
('657964576343','ramesh','dindigul','sales','10001'),
('678496739645','suresh','karur','null','10002'),
('234675436875','priyan','palani','qualitty','10003'),
('867496473857','dinesh','salem','production','10004');

select * from employee;


insert into dependent
values
('10001','sales','manager'),
('10002','null ','null'),
('10003','quality','manager'),
('10004','production','head');

select * from dependent;

SELECT eName, eDepartment
FROM EMPLOYEE 
INNER JOIN DEPENDENT 
ON employee_id = demployee_id;

SELECT *
FROM EMPLOYEE
WHERE eDepartment = 'PRODUCTION';


SELECT eName
FROM EMPLOYEE 
LEFT JOIN DEPENDENT 
ON employee_id = demployee_id
WHERE dependent_name IS NULL;

SELECT  edepartment
FROM EMPLOYEE 
INNER JOIN dependent_name
ON  employee_id = demployee_id
WHERE e.Department = 'SALES'
GROUP BY  edepartment
HAVING COUNT(d.DependentName) = 2;
