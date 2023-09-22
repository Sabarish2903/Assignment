drop database school;

create database school;

use school;

CREATE TABLE Student (
  SID INT PRIMARY KEY,
  NAME VARCHAR(50),
  LOCATION VARCHAR(50)
);

select * from student;

INSERT INTO Student (SID, NAME, LOCATION)
VALUES (1, 'Ajith', 'Chennai'),
       (2, 'Ramya', 'Pune'),
       (3, 'Divya', 'Delhi'),
       (4, 'Kumar', 'Goa'),
       (5, 'Sanjay', 'Kolkatha'),
       (6, 'Jerry', 'Nagpur');
       
select * from student;

CREATE TABLE Project (
  id INT (5),
  project VARCHAR(50)
);

select * from project;

INSERT INTO Project (id, project)
VALUES (2, 'python'),
       (3, 'web'),
       (3, 'sql'),
       (4, 'python'),
       (2, 'java'),
       (7, null),
       (9, 'Numpy'),
       (9, 'panda');
       
select * from project;

select (student.sid)
from student
inner join project
on student.sid=id;

select (student.sid)
from student
left join project
on student.sid=id;

select (student.sid)
from student
right join project
on student.sid=id;

select (student.sid)
from student
cross join project
on student.sid=id;