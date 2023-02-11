use assignment_set3;

create table if not exists employee (
    employee_id int,
    name varchar(10),
    months int,
    salary int
);

insert into employee (employee_id, name, months, salary) values
(12228,'Rose',15,1968),
(33645,'Angela',1,3443),
(45692,'Frank',17,1608),
(56118,'Patrick',7,1345),
(59725,'Lisa',11,2330),
(74197,'Kimberly',16,4372),
(78454,'Bonnie',8,1771),
(83565,'Michael',6,2017),
(98607,'Todd',5,3396),
(99989,'Joe',9,3573);

select name from employee where salary > 2000 and months < 10 order by employee_id;