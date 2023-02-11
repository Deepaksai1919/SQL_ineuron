use assignment_set3;
show tables;
create table if not exists UserActivity(
    username varchar(20),
    activity varchar(10),
    startDate date,
    endDate date
);

insert into UserActivity (username, activity, startDate, endDate) values
('Alice','Travel','2020-02-12','2020-02-20'),
('Alice','Dancing','2020-02-21','2020-02-23'),
('Alice','Travel','2020-02-24','2020-02-28'),
('Bob','Travel','2020-02-11','2020-02-18');

with cte as (
select *, 
row_number() over(partition by username order by startDate desc, endDate desc) as rn 
from UserActivity),
max_rn_cte as (select username, max(rn) max_rn from cte group by 1),
required_rn as (select username, case when max_rn > 2 then 2 else max_rn end as rn from max_rn_cte)
select a.username, activity, startDate, endDate from cte a join required_rn b
on a.username = b.username and a.rn = b.rn;


