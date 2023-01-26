--7
select city, state from station;

--8
select distinct city from station where id % 2 = 0;

--9
select (count(city) - count(distinct city)) as difference from station;

--10
select * from 
(select city, length(city) from station order by length(city) desc, city limit 1) a
UNION
(select city, length(city) from station order by length(city), city limit 1);

--11
select distinct city from station where lower(left(city, 1)) in ('a','e','i','o','u');

--12
select distinct city from station where lower(right(city, 1)) in ('a','e','i','o','u');

--13
select distinct city from station where lower(left(city, 1)) not in ('a','e','i','o','u');

--14
select distinct city from station where lower(right(city, 1)) not in ('a','e','i','o','u');

--15
select distinct city from station where lower(right(city, 1)) not in ('a','e','i','o','u')
or lower(left(city, 1)) not in ('a','e','i','o','u');

--16
select distinct city from station where lower(right(city, 1)) not in ('a','e','i','o','u')
and lower(left(city, 1)) not in ('a','e','i','o','u');


