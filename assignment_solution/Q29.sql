use assignment;

create table if not exists tvprogram (
    program_date date,
    content_id int,
    channel varchar(15),
    primary key (program_date, content_id)
);

create table if not exists content (
    content_id int primary key,
    title varchar(50),
    kids_content enum('Y','N'),
    content_type varchar(30)
);

insert into tvprogram (program_date, content_id, channel) values
('2020-06-10 08:00', 1, 'LC-Channel'),
('2020-05-11 12:00', 2, 'LC-Channel'),
('2020-05-12 12:00', 3, 'LC-Channel'),
('2020-05-13 14:00', 4, 'Disney Ch'),
('2020-06-18 14:00', 4, 'Disney Ch'),
('2020-07-15 16:00', 5, 'Disney Ch');

insert into content (content_id, title, kids_content, content_type) values
(1,'Leetcode Movie','N','Movies'),(2,'Alg. for kids','Y','Series'),(3,'Database sols','N','Series'),
(4,'Aladdin','Y','Movies'),(5,'Cindrella','Y','Movies');

select distinct title from tvprogram t join content c on t.content_id = c.content_id
where monthname(program_date) = 'June' and 
year(program_date) = 2020 and kids_content = 'Y' and content_type = 'Movies';