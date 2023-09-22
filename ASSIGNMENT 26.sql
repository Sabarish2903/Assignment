drop database schooldetails;

create database schooldetails;

use schooldetails;

CREATE TABLE UNIFORM (
  Ucode INT PRIMARY KEY,
  Uname VARCHAR(50),
  Ucolor VARCHAR(20)
);

INSERT INTO UNIFORM (Ucode, Uname, Ucolor)
VALUES (1, 'Shirt', 'White'),
       (2, 'Pant', 'Grey'),
       (3, 'Tie', 'Blue');

CREATE TABLE COST (
  Ucode INT (5),
  Size VARCHAR(10),
  Price DECIMAL(10,2)
);

INSERT INTO COST (Ucode, Size, Price)
VALUES (1, 'L', 580),
       (1, 'M', 500),
       (1, 'L', 890),
       (2, 'L', 810);
       
SELECT UNIFORM.Ucode, UNIFORM.Uname, UNIFORM.Ucolor, COST.Size, COST.Price
FROM UNIFORM, COST
WHERE UNIFORM.Ucode = COST.Ucode;

SELECT UNIFORM.Ucode, UNIFORM.Uname, UNIFORM.Ucolor, COST.Size, COST.Price
FROM UNIFORM
JOIN COST ON UNIFORM.Ucode = COST.Ucode;

SELECT Ucode, Uname, Ucolor, Size, Price
FROM UNIFORM
NATURAL JOIN COST;