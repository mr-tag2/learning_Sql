--use msdb
--declare @x int ;
--set @x=3;
--select @x;


--declare @firstname varchar(20);
--declare @lastname varchar(20);
--set @firstname='Mohmmad';
--set @lastname ='Taji';
--select @firstname+' '+@lastname as FullName;

--select * from syscategories

--create procedure GetAll
--as 
--select * from syscategories
--go

--exec dbo.GetAll

--drop  procedure GetAll

--create procedure GetAllcategory1
--as 
--select * from syscategories
--where category_class=1
--go

--exec dbo.GetAllcategory1

--drop  procedure GetAllcategory1


--create procedure GetAllByCategory @cId int
--as 
--select * from syscategories
--where category_class=@cId
--go

--exec dbo.GetAllByCategory  @cId=2
--exec dbo.GetAllByCategory 2
--drop  procedure GetAllByCategory



create procedure InsertStu
@fname varchar(20) ,@lname varchar(20) ,@mark decimal(4,2)
as 
insert into student values (@fname,@lname,@mark);

select * from student
go

exec dbo.InsertStu  'mhmd' ,'taji ',15.65

--drop  procedure InsertStu


