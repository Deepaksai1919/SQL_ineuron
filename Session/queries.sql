-- Active: 1673172981421@@192.168.29.40@3306@test

CREATE DATABASE test;

SHOW DATABASES;

USE test;
SHOW TABLES;

DROP DATABASE test;
SHOW DATABASES;

CREATE DATABASE test;
USE test;
CREATE TABLE if not exists employee
(
    id INT,
    name VARCHAR(50)
);
SHOW TABLES;

SHOW CREATE TABLE employee;

DROP TABLE employee;
SHOW TABLES;

CREATE TABLE IF NOT EXISTS employee(
    id INT,
    name VARCHAR(50),
    salary DOUBLE,
    hiring_date DATE
);

SHOW TABLES;

INSERT INTO employee VALUES (1,'Deepak',325000,'2019-01-07');

INSERT INTO employee VALUES (2,455161,325000,'2019-01-07');

INSERT INTO employee (name, id, salary) values ('Deepak Sai', 3, 325000);

SELECT * FROM employee;
SELECT name, salary FROM employee;
SELECT * FROM employee WHERE hiring_date IS NULL;