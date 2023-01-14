
--     6
--   /   \ 
--   8    9
--  /\   /\
-- 4  5  2 1
-- write a query to print the type of each node in the tree
--Input:
-- node, parent
-- 8, 6
-- 9, 6
-- 4, 8
-- 5, 8
-- 2, 9
-- 1, 9
-- 6, null
-- Output:
-- node, type
-- 8, internal
-- 9, internal
-- 4, leaf
-- 5, leaf
-- 2, leaf
-- 1, leaf
-- 6, root
use problems;
create table if not exists tree(
    node int,
    parent int
);
insert into tree values (8, 6),(9, 6),(4, 8),(5, 8),(2, 9),(1, 9),(6, null);
select * from tree;


--Solution
select distinct a.node, 
case when a.parent is null then 'root' 
when b.node is null then 'leaf'
else 'internal'
end as type
from tree a left join tree b on a.node = b.parent;

select node,
case
    when parent is null then 'root'
    when node in (select distinct parent from tree) then 'internal'
    else 'leaf'
end as type
from tree;