-- Active: 1673172981421@@192.168.29.40@3306@assignment
create database if not exists assignment;
use assignment;

create table if not exists city(
    id int,
    name varchar(17),
    countrycode varchar(5),
    district varchar(20),
    population long
);