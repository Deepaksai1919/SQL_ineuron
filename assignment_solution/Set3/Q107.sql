use assignment_set3;

select  (months * salary) as total_earning, count(1) as employee_count 
from employee group by 1 order by 1 desc limit 1;