--select gender,count(*) as 'F' from student
--group by gender

--select 
--sName,
--iif(mark>=17,'A',iif(mark>=12,'B','C')) as 'SRank'
--from student

--create view SRankView as (

--select 
--sName,
--iif(mark>=17,'A',iif(mark>=12,'B','C')) as 'SRank'
--from student
--)

--select SRank, COUNT(SRank) as 'COUNT' from SRankView
--group by SRank



--select gender,count(*) as 'F' from student
--where mark>=10
--group by gender

--select SRank, COUNT(SRank) as 'COUNT' from SRankView
----where SRank ='A' or SRank='C'
--where SRank in ('A','C')
--group by SRank


select SRank, COUNT(SRank) as 'COUNT' from SRankView
group by SRank
having COUNT(SRank) >10
