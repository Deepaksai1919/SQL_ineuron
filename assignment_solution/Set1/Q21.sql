-- Active: 1673172981421@@192.168.29.40@3306@assignment
use assignment;

create table if not exists employee (
    employee_id int primary key,
    team_id int
);

insert into employee (employee_id, team_id) values
(1,8),
(2,8),
(3,8),
(4,7),
(5,9),
(6,9);

with team_count as (select team_id, count(1) team_size from employee group by 1)
select e.employee_id, t.team_size from employee e join team_count t on e.team_id = t.team_id;