-- Active: 1673172981421@@192.168.29.40@3306@test


--1) write a query to get the details of the employee with max salary in company
select * from employee order by salary desc limit 1;
-- if there is only one person with max salary

select * from employee where salary = (select max(salary) from employee);

--2) write a query to find countries and states which have only one order in total
-- order_id, cust_id, country, state, item_id, quantity
select country, state from orders group by 1, 2 having count(1) = 1
