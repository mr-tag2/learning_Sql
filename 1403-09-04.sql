--select gender,avg(mark2) from stu
--group by gender

--create view viewStu
--as 
--(

--select
--gender,
--avg(mark2) as 'avg'
--from stu
--group by gender

--)
--select * from viewStu

--create view viewStumark2
--as 
--(

--select
--sName
--from stu
--where mark2=(select max(mark2) from stu)
--)
--select * from viewStumark2


--create view viewStumark3
--as 
--(

--declare @tmp int 
--set @tmp =(select max(mark2) from stu)

--select
--sName
--from stu
--where mark2=@tmp

--)


--select sName,count(sName) as 'count' from student
--group by sName
--having count(sName)>1


--select
--sName,mark
--from student
--where mark in (
--select distinct top 2 mark
--from student 
--order by 
-- mark DESC
-- )


 
--select
--sName,mark
--from student
--where mark in (
--select distinct top 3 mark
--from student 
--order by 
-- mark DESC
-- ) and mark !=(select max(mark) from student)

--create view vTopMark as (
--select distinct top 3 mark
--from student 
--order by 
-- mark DESC
--) 

-- select
--sName,mark
--from student
--where mark in (
--select top 2 mark
--from vTopMark 
--order by 
-- mark asc
--) 
