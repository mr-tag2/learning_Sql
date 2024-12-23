--create table Movie(
--ID int identity primary key ,
--Name varchar(50) ,
--YOP decimal(4) ,
--Stars smallint,
--Genre varchar(50) ,
--Income decimal(10)
--)

-- 1. نمایش اطلاعات کامل فیلم‌های تولید شده در سال 1403
SELECT * FROM Movie
WHERE YOP = 1403;

-- 2. تعداد فیلم‌هایی که در سال 1402 اکران شده و 3 ستاره هستند
SELECT COUNT(*) AS CountMovies
FROM Movie
WHERE YOP = 1402 AND Stars = 3;

-- 3. تعداد فیلم‌های ژانر کمدی در سال 1401
SELECT COUNT(*) AS ComedyMovies
FROM Movie
WHERE YOP = 1401 AND Genre = 'Comedy';

-- 4. میانگین رتبه فیلم‌های ژانر وحشت در سال 1403
SELECT AVG(Stars) AS AvgHorrorStars
FROM Movie
WHERE YOP = 1403 AND Genre = 'Horror';

-- 5. میانگین درآمد حاصل از اکران فیلم‌های 3 ستاره طی 10 سال گذشته
SELECT AVG(Income) AS AvgIncome
FROM Movie
WHERE Stars = 3 AND YOP BETWEEN 1393 AND 1403;

-- 6. نمایش فیلم‌ها به تفکیک سال ساخت، در صورتی که درآمد حاصل از اکران آن‌ها کمتر از 1000 باشد
SELECT YOP, *
FROM Movie
WHERE Income < 1000
ORDER BY YOP ;

-- 7. پر فروش‌ترین فیلم هر سال
SELECT YOP, Name, MAX(Income) AS MaxIncome
FROM Movie
GROUP BY YOP, Name;

-- 8. بررسی نام فیلمی با بیشترین امتیاز که پر فروش‌ترین فیلم سال 1402 بوده است
SELECT Name
FROM Movie
WHERE YOP = 1402
ORDER BY Income DESC, Stars DESC
LIMIT 1;

-- 9. مرتب‌سازی فیلم‌ها بر اساس گروه درآمد (3 گروه: بالای 3000، بین 1000 تا 3000، زیر 1000)
SELECT *, 
       CASE 
           WHEN Income > 3000 THEN 'Group 1'
           WHEN Income BETWEEN 1000 AND 3000 THEN 'Group 2'
           WHEN Income < 1000 THEN 'Group 3'
       END AS IncomeGroup
FROM Movie
ORDER BY IncomeGroup, Income DESC;

-- 10. میانگین فروش فیلم‌ها به تفکیک گروه فروش
SELECT 
       CASE 
           WHEN Income > 3000 THEN 'Group 1'
           WHEN Income BETWEEN 1000 AND 3000 THEN 'Group 2'
           WHEN Income < 1000 THEN 'Group 3'
       END AS IncomeGroup,
       AVG(Income) AS AvgIncome
FROM Movie
GROUP BY IncomeGroup;

select * from Movie




