-- Create Students table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(255),
    MajorID INT,
    CONSTRAINT fk_Students_Majors FOREIGN KEY (MajorID) REFERENCES Majors(MajorID)
);

-- Create Majors table
CREATE TABLE Majors (
    MajorID INT PRIMARY KEY,
    MajorName VARCHAR(255)
);

-- Create Courses table
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(255),
    MajorID INT,
    CONSTRAINT fk_Courses_Majors FOREIGN KEY (MajorID) REFERENCES Majors(MajorID)
);

-- Create Enrollments table
CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    Grade VARCHAR(2), -- Assuming grades are represented by two characters (e.g., A, B, C, etc.)
    CONSTRAINT fk_Enrollments_Students FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    CONSTRAINT fk_Enrollments_Courses FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

-- Insert 10 values into Students table
INSERT INTO Students VALUES
(1, 'Ahmed', 1),
(2, 'Fatima', 2),
(3, 'Ali', 3),
(4, 'Ayesha', 1),
(5, 'Omar', 2),
(6, 'Zainab', 3),
(7, 'Mustafa', 1),
(8, 'Khadija', 2),
(9, 'Hassan', 3),
(10, 'Sara', 1)

-- Insert 10 values into Majors table
INSERT INTO Majors VALUES
(1, 'Computer Science'),
(2, 'Biology'),
(3, 'Business Administration'),
(4, 'Chemistry'),
(5, 'Physics'),
(6, 'Mathematics'),
(7, 'English'),
(8, 'History'),
(9, 'Psychology'),
(10, 'Economics');

-- Insert 10 values into Courses table
INSERT INTO Courses VALUES
(1, 'Introduction to Programming', 1),
(2, 'Cell Biology', 2),
(3, 'Principles of Management', 3),
(4, 'Organic Chemistry', 4),
(5, 'Physics I', 5),
(6, 'Calculus I', 6),
(7, 'English Composition', 7),
(8, 'World History', 8),
(9, 'Introduction to Psychology', 9),
(10, 'Microeconomics', 10);

-- Insert 10 values into Enrollments table
INSERT INTO Enrollments VALUES
(1, 1, 1, 'A'),
(2, 2, 2, 'B'),
(3, 3, 3, 'C'),
(4, 4, 4, 'B+'),
(5, 5, 5, 'A-'),
(6, 6, 6, 'A'),
(7, 7, 7, 'B'),
(8, 8, 8, 'C+'),
(9, 9, 9, 'A-'),
(10, 10, 10, 'B');
