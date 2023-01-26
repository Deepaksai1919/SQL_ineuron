use assignment;

create table if not exists views (
    article_id int,
    author_id int,
    viewer_id int,
    view_date date
);

insert into views (article_id, author_id, viewer_id, view_date) values
(1,3,5,'2019-08-01'),
(1,3,6,'2019-08-02'),
(2,7,7,'2019-08-01'),
(2,7,6,'2019-08-02'),
(4,7,1,'2019-07-22'),
(3,4,4,'2019-07-21'),
(3,4,4,'2019-07-21');

select distinct author_id from views where author_id = viewer_id order by author_id;

