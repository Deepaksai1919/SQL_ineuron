-- Active: 1673172981421@@192.168.29.40@3306@assignment
use assignment;

create table if not exists product(
    product_id int primary key,
    product_name varchar(10),
    unit_price int
);

create table if not exists sales(
    seller_id int,
    product_id int,
    buyer_id int,
    sale_date date,
    quantity int,
    price int,
    Foreign Key (product_id) REFERENCES product(product_id)
);

insert into product (product_id, product_name, unit_price) values 
(1,'S8',1000),
(2,'G4',800),
(3,'iPhone',1400);

insert into sales (seller_id,product_id,buyer_id,sale_date,quantity,price) values
(1,1,1,'2019-01-21',2,2000),
(1,2,2,'2019-02-17',1,800),
(2,2,3,'2019-06-02',1,800),
(3,3,4,'2019-05-13',2,2800);

select p.product_id, product_name from product p join sales s on s.product_id = p.product_id
where sale_date between '2019-01-01' and '2019-03-31' and s.product_id not in 
(select product_id from sales where sale_date not between '2019-01-01' and '2019-03-31');