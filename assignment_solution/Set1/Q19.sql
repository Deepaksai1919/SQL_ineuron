use assignment;
create table if not exists delivery(
    delivery_id int primary key,
    customer_id int,
    order_date date,
    customer_pref_delivery_date date
);

insert into delivery (delivery_id, customer_id, order_date, customer_pref_delivery_date) VALUES 
(1,1,'2019-08-01','2019-08-02'),
(2,5,'2019-08-02','2019-08-02'),
(3,1,'2019-08-11','2019-08-11'),
(4,3,'2019-08-24','2019-08-26'),
(5,4,'2019-08-21','2019-08-22'),
(6,2,'2019-08-11','2019-08-13');

select
round(
    count(case when order_date = customer_pref_delivery_date then 1 else null end ) * 100/ count(1), 2
) as immediate_percentage
from delivery;