use assignment_set3;

show tables;

create table if not exists students (
    id int,
    name varchar(15),
    marks int
);

insert into students (id, name, marks) values
(1,'Ashley',81),
(2,'Samantha',75),
(4,'Julia',76),
(3,'Belvet',84);

select name from students where marks > 75 order by right(name,3)