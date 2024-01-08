--create table students (
--S_id int primary key,
--S_name varchar (30),
--)
--create table Courses (
--C_id int primary key ,
--C_name varchar(30)
--)
--create table Enrollments (
--S_id int,
--C_id int,
--Grade varchar(10)
--)
-- Insert data into the students table with Muslim names
--INSERT INTO students (S_id, S_name)
--VALUES
--    (1, 'Ali Khan'),
--    (2, 'Fatima Ahmed'),
--    (3, 'Ahmed Mahmood'),
--    (4, 'Aisha Rahman'),
--    (5, 'Omar Malik'),
--    (6, 'Sofia Abbas'),
--    (7, 'Yusuf Hasan'),
--    (8, 'Amina Shah'),
--    (9, 'Ibrahim Hassan'),
--    (10, 'Zainab Ali'),
--    (11, 'Hassan Ahmad'),
--    (12, 'Maryam Abdullah'),
--    (13, 'Yusuf Abdullahi'),
--    (14, 'Layla Hussein'),
--    (15, 'Aliya Mustafa'),
--    (16, 'Ahmad Farid'),
--    (17, 'Khadija Al-Mawla'),
--    (18, 'Zakariya Hamza'),
--    (19, 'Sara Abbas'),
--    (20, 'Hamza Ahmad');

-- Insert data into the Courses table with specific course names
--INSERT INTO Courses (C_id, C_name)
--VALUES
--    (1, 'BSCS'),
--    (2, 'BSIT'),
--    (3, 'BBA'),
--    (4, 'MBA'),
--    (5, 'Computer Engineering'),
--    (6, 'Software Engineering'),
--    (7, 'Electrical Engineering'),
--    (8, 'Physics'),
--    (9, 'Mathematics'),
--    (10, 'Psychology'),
--    (11, 'Chemistry'),
--    (12, 'Biology'),
--    (13, 'Islamic Studies'),
--    (14, 'Economics'),
--    (15, 'Political Science'),
--    (16, 'History'),
--    (17, 'English Literature'),
--    (18, 'Arabic Language'),
--    (19, 'Environmental Science'),
--    (20, 'Information Systems');

-- Insert data into the Enrollments table
--INSERT INTO Enrollments (S_id, C_id, Grade)
--VALUES
--    (1, 1, 'A'),
--    (2, 5, 'B+'),
--    (3, 12, 'A'),
--    (4, 3, 'B'),
--    (5, 6, 'C+'),
--    (6, 11, 'B'),
--    (7, 2, 'A'),
--    (8, 15, 'A+'),
--    (9, 19, 'B'),
--    (10, 7, 'C'),
--    (11, 10, 'A'),
--    (12, 4, 'B+'),
--    (13, 13, 'A'),
--    (14, 8, 'B'),
--    (15, 14, 'A'),
--    (16, 18, 'C+'),
--    (17, 9, 'A+'),
--    (18, 16, 'B'),
--    (19, 20, 'B'),
--    (20, 17, 'A')

select s.S_name, c.C_name , e.Grade  from  students s  
join Enrollments e
on s.S_id = e.S_id
join Courses c 
on e.C_id = c.C_id
where C_name = 'DATABase '
order by Grade desc 

