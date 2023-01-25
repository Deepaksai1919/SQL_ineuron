-- Active: 1673172981421@@192.168.29.40@3306@assignment
use assignment;

create table if not exists station(
    id int,
    city varchar(21),
    state varchar(2),
    lat_n float,
    long_w float
);