--1
SELECT *
FROM Students
WHERE mark < (SELECT AVG(mark) FROM Students);

--2
SELECT gender, COUNT(*) AS Scount
FROM Students
GROUP BY gender;

--3
SELECT (yop), COUNT(*)
FROM Students
where mark>=10
GROUP BY (yop);

--4
SELECT 
    fname, 
    lname,
    CASE
        WHEN mark > 15 THEN 'A'
        WHEN mark BETWEEN 10 AND 15 THEN 'B'
        ELSE 'C'
    END AS 'Rank'
FROM Students;
