use assignment_set3;

create table if not exists triangles (
    a int,
    b int,
    c int
);

insert into triangles (a,b,c) values
(20,20,23),
(20,20,20),
(20,21,22),
(13,14,30);

select *, 
case when 
        (a+b < c or b+c < a or a+c < b) 
    then 'Not A Triangle'
    when 
        (a=b and b=c and c=a) 
    then 'Equilateral'
    when 
        (a!=b and b!=c and c!=a) 
    then 'Scalene'
    when
        ((a=b and b!=c) or (b=c and c!=a) and (a=c and a!=b))
    then 'Isosceles'
end as op from triangles;

