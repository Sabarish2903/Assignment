drop database assignment;

create database assignment;

use assignment;

CREATE TABLE hotel(
USER_ID VARCHAR(20),
NAME VARCHAR(20),
CITY VARCHAR(20),
MOBILE_NO VARCHAR(20)
);

describe hotel;

insert into hotel values
(1,'sabari','chennai','9578588998'),
(2,'diya','mumbai','9976018266'),
(3,'priyan','kerala','9994920903'),
(4,'thanya','banglore','6374837792'),
(5,'dhaya','coimbatore','9944974949');

select * from hotel;

SELECT RIGHT(user_id, 2) FROM Hotel;

SELECT LOWER(name) FROM Hotel;

SELECT SUBSTR(city, 3, 3) FROM Hotel;