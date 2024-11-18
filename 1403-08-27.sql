--select  mark2,count(mark2) 
--from stu
--where mark2>=10
--group by mark2


--select  mark2,count(mark2) 
--from stu
--group by mark2
--having count(mark2) > 1


--select  mark2,count(mark2) 
--from stu
--where mark2>=10
--group by mark2
--having count(mark2) > 1

--select 
--sName,
--mark2,
--iif(gender=1,'Male','Female') as 'Gender',
--iif(mark2>=17,'A',iif(mark2>=12,'B','C')) as 'Rank',
--iif(mark2>=10,'Y','N') as 'Passed'
--from stu

--create view vRank
--as
--(
--select 
--sName,
--mark2,
--iif(gender=1,'Male','Female') as 'Gender',
--iif(mark2>=17,'A',iif(mark2>=12,'B','C')) as 'Rank',
--iif(mark2>=10,'Y','N') as 'Passed'
--from stu

--)

--select passed,COUNT(*) from vRank
--group by passed

select 
sName,
mark2,
case 
when mark2>=17 then 'A'
when mark2>=12 then 'B'
when mark2<12 then 'C'
end as 'Rank'
from stu