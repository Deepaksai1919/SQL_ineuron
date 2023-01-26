-- Active: 1673172981421@@192.168.29.40@3306@assignment
use assignment;

create table if not exists users(
    user_id int primary key,
    name varchar(10),
    mail varchar(25)
);

insert into users (user_id, name, mail) values
(1,'Winston','winston@leetcode.com'),
(2,'Jonathan','jonathanisgreat'),
(3,'Annabelle','bella-@leetcode.com'),
(4,'Sally','sally.come@leetcode.com'),
(5,'Marwan','quarz#2020@leetcode.com'),
(6,'David','david69@gmail.com'),
(7,'Shapiro','.shapo@leetcode.com');

select * from users where mail regexp '^([A-Za-z])[A-Za-z0-9.-]*(@leetcode.com)$';