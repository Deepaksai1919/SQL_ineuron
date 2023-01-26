use assignment;

create table if not exists prices (
    product_id int,
    start_date date,
    end_date date,
    price int,
    primary key (product_id, start_date, end_date)
);

create table if not exists unitssold (
    product_id int,
    purchase_date date,
    units int
);

insert into prices (product_id, start_date, end_date, price) values 
(1, '2019-02-17', '2019-02-28', 5),
(1, '2019-03-01', '2019-03-22', 20),
(2, '2019-02-01', '2019-02-20', 15),
(2, '2019-02-21', '2019-03-31', 30);

insert into unitssold (product_id, purchase_date, units) values 
(1, '2019-02-25', 100),
(1, '2019-03-01', 15),
(2, '2019-02-10', 200),
(2, '2019-03-22', 30);

select p.product_id, round(sum(p.price * u.units) / sum(u.units), 2) as average_price from unitssold u join prices p on u.product_id = p.product_id 
and (u.purchase_date between p.start_date and p.end_date)
group by 1;