-- Active: 1673172981421@@192.168.29.40@3306@test
use test;

create table if not exists employee_with_constraints(
id int not null,
  name varchar(50) not null,
  salary double,
  hiring_date date default '2023-01-01'
);

insert into employee_with_constraints values (1,'Deepak',14.7, '2019-01-07');

insert into employee_with_constraints values (2,'Deepak',14.7, null);

insert into employee_with_constraints (id, name, salary) values (3,'Deepak',14.7);

select * from employee_with_constraints;

drop table employee_with_constraints;

create table if not exists employee_with_constraints(
id int not null,
  name varchar(50) not null,
  salary double,
  hiring_date date default '2023-01-01',
  constraint unique_id unique (id),
  constraint salary_check check (salary > 1000)
);

insert into employee_with_constraints values (1,'Deepak',14.7, '2019-01-07');
--Check constraint 'salary_check' is violated.

insert into employee_with_constraints values (1,'Deepak',1400, '2019-01-07');

select * from employee_with_constraints;

show create table employee_with_constraints;

alter table employee_with_constraints drop constraint salary_check;

insert into employee_with_constraints values (2,'Deepak',14.7, '2019-01-07');

alter table employee_with_constraints add dob date;

alter table employee_with_constraints add dob2 date default '1990-01-01';

alter table employee_with_constraints MODIFY COLUMN name varchar(60);

desc employee_with_constraints;

ALTER TABLE employee_with_constraints drop COLUMN dob;

alter TABLE employee_with_constraints RENAME COLUMN dob2 to dob;

select count(1) from employee_with_constraints;

TRUNCATE TABLE employee_with_constraints;

drop Table employee_with_constraints;

show tables;

create table if not exists employee(
    id int,
    name varchar(10),
    age INT,
    dob date,
    salary double,
    city varchar(10)
);

alter table employee add constraint unique_id unique(id);

alter table employee add constraint unique_id2 unique(idx);
--Key column 'idx' doesn't exist in table
truncate table employee;
insert into employee values (1,'Deepak',27,'1995-05-23',1000,'Hyd'),
(2,'Sai',27,'1995-05-23',1100,'Hyd'),
(3,'Some',27,'1995-05-23',1200,'Hyd'),
(4,'SomeElse',27,'1995-05-23',1200,'Hyd');

select * from employee;