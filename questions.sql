-- Active: 1673172981421@@192.168.29.40@3306@test


--write a query to get the details of the employee with max salary in company
select * from employee order by salary desc limit 1;
-- if there is only one person with max salary

select * from employee where salary = (select max(salary) from employee);