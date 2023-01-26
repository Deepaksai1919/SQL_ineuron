-- Active: 1673172981421@@192.168.29.40@3306@assignment
use assignment;

create table if not exists npv (
    id int,
    year int,
    npv int,
    primary key (id, year)
);

create table if not exists queries (
    id int,
    year int,
    primary key (id, year)
);

insert into npv(id, year, npv) values
(1,2018,100),
(7,2020,30),
(13,2019,40),
(1,2019,113),
(2,2008,121),
(3,2009,12),
(11,2020,99),
(7,2019,0);

insert into queries (id, year) values
(1,2019),
(2,2008),
(3,2009),
(7,2018),
(7,2019),
(7,2020),
(13,2019);

select q.id, q.year, coalesce(n.npv,0) as npv from queries q left join npv n on q.id = n.id and q.year = n.year