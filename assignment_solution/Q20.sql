use assignment;

create table if not exists ads (
    ad_id int,
    user_id int,
    action enum('Clicked', 'Viewed', 'Ignored'),
    primary key (ad_id, user_id)
);

insert into ads (ad_id, user_id, action) values 
(1,1,'Clicked'),
(2,2,'Clicked'),
(3,3,'Viewed'),
(5,5,'Ignored'),
(1,7,'Ignored'),
(2,7,'Viewed'),
(3,5,'Clicked'),
(1,4,'Viewed'),
(2,11,'Viewed'),
(1,2,'Clicked');


select ad_id, 
case 
    when (total_clicked + total_viewed) = 0 then 0 
    else round(total_clicked * 100/(total_clicked + total_viewed), 2)
end as ctr from (
select ad_id, 
count(case when action = 'Clicked' then 1 else null end) total_clicked ,
count(case when action = 'Viewed' then 1 else null end) total_viewed
from ads
group by ad_id)
tbl
order by ctr desc;
