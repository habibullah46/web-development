select * from Courses
select * from Enrollments
select * from Majors
select * from Students

update Students set MajorID = 0 where StudentID = 11
--GROUP BY AND ORDER BY
select StudentID , Name, MajorName  from Students s
join Majors m
on s.MajorID = m.MajorID
ORDER BY StudentID desc
  

---(JOINS): Can you provide a list of students who have not enrolled in any courses?

select * from Students s
join Enrollments e
on s.StudentID = e.EnrollmentID

