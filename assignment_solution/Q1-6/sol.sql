-- Active: 1673172981421@@192.168.29.40@3306@assignment
--1
select * from city where countrycode = 'USA' and population > 100000;

--2
select name from city where countrycode = 'USA' and population > 120000;

--3
select * from city;

--4
select * from city where id = 1661;

--5
select * from city where countrycode = 'JPN';

--6
select name from city where countrycode = 'JPN';