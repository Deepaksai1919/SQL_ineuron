use assignment_set3;

create table if not exists occupations (
    name varchar(10),
    occupation varchar(10)
);

insert into occupations (name, occupation) values 
('Samantha','Doctor'),
('Julia','Actor'),
('Maria','Actor'),
('Meera','Singer'),
('Ashely','Professor'),
('Ketty','Professor'),
('Christeen','Professor'),
('Jane','Actor'),
('Jenny','Doctor'),
('Priya','Singer');

with cte1 as (
select concat(name,'(',left(occupation,1),')') as output from occupations
),
cte2 as (
    select occupation, count(1) as total_count from occupations group by 1 order by total_count asc, occupation asc
),
cte3 as (select concat('There are a total of ', total_count, ' ', lower(occupation), 's') from cte2)

select * from cte1
union
select * from cte3
order by output asc;


with cte as (select 
max(case when occupation = 'Doctor' then name end) as Doctor,
max(case when occupation = 'Professor' then name end) as Professor,
max(case when occupation = 'Singer' then name  end) as Singer,
max(case when occupation = 'Actor' then name  end) as Actor

from occupations
group by  name
)
select * from
(select Doctor, row_number() over() rn from cte where Doctor is not null) a
full outer join
(select Professor, row_number() over() rn from cte where Professor is not null) b
on a.rn = b.rn
-- full outer join
-- select Singer, row_number() over() rn from cte c where Doctor is not null
-- on b.rn = c.rn
-- full outer join
-- select Actor, row_number() over() rn from cte d where Doctor is not null
-- on c.rn = d.rn