--use xd

--create table stu (
--id int identity(100,1) primary key,
--fname varchar(20),
--lname varchar(20),
--gender int,
--addres varchar(11)
--)

use msdb

--select * from syscategories
--where category_type=3 and category_class=2


--select * from syscategories
--where category_id<50


--select * from syscategories
--where name = 'Full-Text' 


--select * from syscategories
--where name like '____' 


--select * from syscategories
--where name like '%____' 

--select * from syscategories
--where name like '%database%'


--select Count(*) from syscategories
--where category_id<50 and name like '%category%'


--select Count(*) as title from syscategories
--where name like '%category%'


--select sum(category_id) as title from syscategories
--where category_id<50

--select sum(category_id)/Count(*) as title from syscategories
--where category_id<50

select avg(category_id) as title from syscategories
where category_id<50