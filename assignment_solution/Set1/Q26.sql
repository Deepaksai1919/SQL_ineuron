use assignment;

create table if not exists products (
    product_id int primary key,
    product_name varchar(25),
    product_category varchar(20)
);

create table if not exists orders (
    product_id int,
    order_date date,
    unit int,
    foreign key (product_id) references products(product_id)
);


insert into products (product_id, product_name, product_category) values
(1,'Leetcode Solutions','Book'),
(2,'Jewels of Stringology','Book'),
(3,'HP','Laptop'),
(4,'Lenovo','Laptop'),
(5,'Leetcode Kit','T-shirt');

insert into orders (product_id, order_date, unit) values
(1,'2020-02-05',60),
(1,'2020-02-10',70),
(2,'2020-01-18',30),
(2,'2020-02-11',80),
(3,'2020-02-17',2),
(3,'2020-02-24',3),
(4,'2020-03-01',20),
(4,'2020-03-04',30),
(4,'2020-03-04',60),
(5,'2020-02-25',50),
(5,'2020-02-27',50),
(5,'2020-03-01',50);

select product_name, sum(unit) unit from orders o join products p on
o.product_id = p.product_id
where order_date between '2020-02-01' and '2020-02-29' group by 1
having unit >= 100;