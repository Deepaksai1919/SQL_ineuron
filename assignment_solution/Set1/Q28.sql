use assignment;

create table if not exists customers (
    customer_id int primary key,
    name varchar(25),
    country varchar(10)
);

create table if not exists products_28 (
    product_id int primary key,
    description varchar(15),
    price int
);

create table if not exists orders_28 (
    order_id int primary key,
    customer_id int,
    product_id int,
    order_date date,
    quantity int
);

insert into customers (customer_id, name, country) values
(1,'Winston','USA'),
(2,'Jonathan','Peru'),
(3,'Moustafa','Egypt');

insert into products_28 (product_id, description, price) values
(10,'LC Phone',300),(20,'LC T-shirt',10),(30,'LC Book',45),(40,'LC Keychain',2);

insert into orders_28 (order_id, customer_id, product_id, order_date, quantity) values
(1,1,10,'2020-06-10',1),(2,1,20,'2020-07-01',1),(3,1,30,'2020-07-08',2),
(4,2,10,'2020-06-15',2),(5,2,40,'2020-07-01',10),(6,3,20,'2020-06-24',2),
(7,3,30,'2020-06-25',2),(9,3,30,'2020-05-08',3);

select customer_id, name from
(select c.customer_id, c.name, monthname(order_date) month_name, sum(o.quantity * p.price) as total from orders_28 o join products_28 p join customers c 
on o.product_id = p.product_id and o.customer_id = c.customer_id
where monthname(order_date) in ('June','July') and year(order_date) = 2020
group by 1,2,3
having total >= 100) a 
group by 1,2
having count(1) = 2;