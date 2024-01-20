select * from Courses
select * from Enrollments
select * from Majors
select * from Students

update Students set MajorID = 0 where StudentID = 11
--(GROUP BY, ORDER BY): What are the top 5 majors with the most students?
--Provide the major name and the total number of students, 
--ordered by the number of students in descending order.
SELECT M.MajorID, M.MajorName, COUNT(S.StudentID) AS TotalStudents
FROM Students S
JOIN Majors M ON S.MajorID = M.MajorID
GROUP BY M.MajorID, M.MajorName
ORDER BY TotalStudents DESC





---(JOINS): Can you provide a list of students who have not enrolled in any courses?
SELECT *
FROM Students s 
WHERE s.StudentID NOT IN (SELECT  StudentID FROM Enrollments);

---(WITH CTEs): Using a CTE, can you find out the average grade for each course?
WITH CourseAverage
AS (
    SELECT CourseID, AVG(Grade) AS AvgGrade
    FROM Enrollments
    GROUP BY CourseID
)
SELECT C.CourseName, CA.AvgGrade
FROM Courses C
JOIN CourseAverage CA 
ON C.CourseID = CA.CourseID;

--(UNION): Can you create a list of all unique names from both the Students and Majors tables?
SELECT Name FROM Students
UNION
SELECT MajorName FROM Majors;

--(CASE statement): Can you add a column in the output
--of the Enrollments table to classify grades as ‘Pass’ or ‘Fail’ based on the grade value?
SELECT  name,Grade,
CASE 
        WHEN Grade >= 3 THEN 'Pass'
        ELSE 'Fail'
    END AS GradeClassification
FROM Enrollments e 
join Students s
on e.StudentID = s.StudentID;

--(HAVING clause): Can you find out students who have enrolled in more than 5 courses?
SELECT s.Name, COUNT(CourseID) AS EnrolledCourses
FROM Enrollments e
join Students s 
on e.StudentID = s.StudentID
GROUP BY CourseID , name
HAVING CourseID > 5;

--(UPDATE): Can you update the grade of a specific student in a specific course in the Enrollments table?
select * from Enrollments
update Enrollments set Grade = 4 where EnrollmentID = 1;

--(DELETE): Can you delete enrollments that were graded more than a year ago?
 delete from Enrollments
 where EnrollmentID = 3

 ---(TEMP TABLE): Can you create a temporary table to hold the result of the number
-- of students in each major and use it in a subsequent query?
drop table if exists #temp_student
CREATE TABLE #TEMP_student 
(
  id  int ,
  s_id int ,
  coursID int ,
  Grade int
)
insert into #TEMP_student
select * from Enrollments

select * from #TEMP_student


select * from  Students
SELECT	* FROM	Courses
SELECT * FROM Majors
SELECT * FROM Enrollments