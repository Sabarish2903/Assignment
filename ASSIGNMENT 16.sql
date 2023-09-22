drop database company;

create database company;

use company;

create table empdetails (
eid INT PRIMARY KEY,
ename VARCHAR(50),
edept VARCHAR(50),
esalary float(8,2),
elocation VARCHAR(50)
);

select * from empdetails;

insert into empdetails
values
('1','Jay','HR','5000','Chennai'),
('2','Yash','Management','7000','Pune'),
('3','Annand','Training','6000','Chennai'),
('4','Ruhi','Sales','4000','Delhi'),
('5','Pratik','Admin','3000','NULL');

select * from empdetails;

SELECT * FROM empdetails WHERE eNAME LIKE 'P%';

SELECT eNAME FROM empdetails WHERE eSALARY BETWEEN 3000 AND 5000;

SELECT * FROM empdetails ORDER BY eSALARY DESC;

SELECT eNAME AS ENAME, eDEPt AS Dept FROM empdetails LIMIT 2;

SELECT * FROM empdetails WHERE eNAME LIKE '%a_'