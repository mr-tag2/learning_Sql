--create table stu(
--id int identity primary key,
--sName varchar(50),
--mark decimal(4,2)

--)

--exec sp_help stu

--exec sp_rename 'stu.mark', 'mark2'

--select * from stu


--select * 
-- into stu2
--from stu 

--select * from stu2

--select * 
-- into stuPassed
--from stu 
--where mark2>10


--select * from stuPassed


--select * 
-- into #stu3
--from stu 

--select * from #stu3

--create view v1 as (
--select * from stu
--)

--select * from v1

with w1 as (
select * from stu
)
select * from w1