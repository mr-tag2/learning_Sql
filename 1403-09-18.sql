--select * from student

--select gender ,count(gender) from student
--group by gender


--select gender ,avg(mark) from student
--group by gender

--select * from course

--select * from s2c

--select * from s2c  as sc 
--inner join student as s on s.id=sc.sid
--inner join course  as c on c.id=sc.cid


--select iif(gender=1,'M','F')as 'gender',count(*) as 'count' from s2c  as sc 
--inner join student as s on s.id=sc.sid
--group by gender

--select sname,count(*) as 'count' from s2c  as sc 
--inner join student as s on s.id=sc.sid
--group by sname

--select sname,count(*) as 'count' from s2c  as sc 
--inner join student as s on s.id=sc.sid
--group by sname
--having count(*) >=3


select sname,count(*) from s2c  as sc 
inner join student as s on s.id=sc.sid
where s.mark>=10
group by sname