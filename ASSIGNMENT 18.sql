drop database sports;

CREATE DATABASE Sports;

use sports;

CREATE TABLE TEAM (
  TeamID INT NOT NULL,
  TeamName VARCHAR(25) NOT NULL
);

select * from team;

ALTER TABLE TEAM ADD CONSTRAINT PK_Team PRIMARY KEY (TeamID);

DESCRIBE TEAM;

INSERT INTO TEAM VALUES
('1','Team Titan'),
('2','Team Rockers'),
('3','Team Magnet'),
('4','Team Hurricane');

SELECT * FROM TEAM;