Drop database sample;

create database sample;

use sample;

create table users(
userid int,
first_name varchar(100),
last_name varchar(100),
age int,
country varchar(100));

SELECT SUBSTR('INDIA SHINING', 7, 7);

SELECT INSTR('WELCOME WORLD', 'COME');

SELECT ROUND(23.78, 1);

SELECT 100 % 9;

SELECT trim(userid) FROM USERS;