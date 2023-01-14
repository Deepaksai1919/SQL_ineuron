use problems;

create table if not exists employee_full_data(
    emp_id int,
    emp_name varchar(50),
    mgr_id int
);

insert into employee_full_data values 
(1,'Shashank',3),
(2,'Amit',3),
(3,'Rajesh',4),
(4,'Ankit',6),
(6,'Nikhil',null);

-- Write a query to print the names of all the managers

select distinct a.emp_name from employee_full_data a join employee_full_data b on a.emp_id = b.mgr_id;

select emp_name from employee_full_data where emp_id in (select distinct mgr_id from employee_full_data);

