use assignment_set3;

create table if not exists employees (
    id int,
    name varchar(10),
    salary bigint
);

insert into employees (id, name, salary) values
(1,'Kristeen',1420),
(2,'Ashley',2006),
(3,'Julia',2210),
(4,'Maria',3000);

select ceil(avg(salary) - avg(regexp_replace(salary,0,''))) as output from employees;

