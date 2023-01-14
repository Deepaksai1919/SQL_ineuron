-- Active: 1673172981421@@192.168.29.40@3306@test
select * from employee;

update employee set age=24, salary = 15000 where name = 'Deepak';
update employee set age=25, salary = 14000 where name = 'Sai';
update employee set salary = 10000 where name = 'Some';


select age, sum(salary) salary_sum, avg(salary) avg_salary, count(1) total_employees from employee group by 1;

select age, sum(salary) salary_sum, avg(salary) avg_salary from employee group by 1 having count(1) = 2;

select age, GROUP_CONCAT(name) from employee group by 1;

select age, GROUP_CONCAT(name separator '-') from employee group by 1;


create table orders_data
(
 cust_id int,
 order_id int,
 country varchar(50),
 state varchar(50)
);

insert into orders_data values(1,100,'USA','Seattle');
insert into orders_data values(2,101,'INDIA','UP');
insert into orders_data values(2,103,'INDIA','Bihar');
insert into orders_data values(4,108,'USA','WDC');
insert into orders_data values(5,109,'UK','London');
insert into orders_data values(4,110,'USA','WDC');
insert into orders_data values(3,120,'INDIA','AP');
insert into orders_data values(2,121,'INDIA','Goa');
insert into orders_data values(1,131,'USA','Seattle');
insert into orders_data values(6,142,'USA','Seattle');
insert into orders_data values(7,150,'USA','Seattle');



create table student_marks
(
    stu_id int,
    stu_name varchar(50),
    total_marks int
);

insert into student_marks values (1,'Shashank', 50),
(2,'Rahul',91),
(3,'Amit',74),
(4,'Nikhil',65),
(5,'Rohit',86),
(6,'Deepak',77);

select * from student_marks order by total_marks desc;

select *,
case 
    when total_marks >= 90 then 'A+'
    when total_marks >= 85 then 'A'
    when total_marks >= 75 then 'B+'
    when total_marks >= 60 then 'B'
    else 'C'
end
as grade from student_marks order by total_marks desc;

use test;

