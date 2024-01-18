-- Create Books table
--CREATE TABLE Books (
--    b_id INT PRIMARY KEY,
--    title VARCHAR(30),
--    Authore VARCHAR(30),
--    Genre VARCHAR(30),
--    Publish_date DATE
--);

-- Insert data into Books table
--INSERT INTO Books (b_id, title, Authore, Genre, Publish_date)
--VALUES
--    (1, 'Islamic Wisdom', 'Muhammad Abdullah', 'Religion', '2023-01-15'),
--    (2, 'The Guiding Light', 'Aisha Rahman', 'Spirituality', '2022-05-20'),
--    (3, 'Hearts in Harmony', 'Ali Hassan', 'Fiction', '2024-03-10'),
--    (4, 'Journey of Faith', 'Fatima Ali', 'Biography', '2021-09-08'),
--    (5, 'Path to Peace', 'Ahmed Khan', 'Philosophy', '2023-11-25');

-- Create Authors table
--CREATE TABLE Authors (
--    A_id INT PRIMARY KEY,
--    A_name VARCHAR(30),
--    Date_Birth DATE
--);

-- Insert data into Authors table
--INSERT INTO Authors (A_id, A_name, Date_Birth)
--VALUES
--    (1, 'Muhammad Abdullah', '1980-06-12'),
--    (2, 'Aisha Rahman', '1975-03-28'),
--    (3, 'Ali Hassan', '1990-11-15'),
--    (4, 'Fatima Ali', '1985-09-30'),
--    (5, 'Ahmed Khan', '1978-02-18');

-- Create Members table
--CREATE TABLE Members (
--    M_id INT PRIMARY KEY,
--    M_Name VARCHAR(30),
--    Registration_date DATE
--);

-- Insert data into Members table
--INSERT INTO Members (M_id, M_Name, Registration_date)
--VALUES
--    (1, 'Nadia Ahmed', '2022-02-10'),
--    (2, 'Farhan Mahmood', '2023-05-08'),
--    (3, 'Sara Khan', '2021-11-20'),
--    (4, 'Ahmed Ali', '2024-01-02'),
--    (5, 'Zainab Hassan', '2020-07-15');

-- Create BorrowedBooks table
--CREATE TABLE BorrowedBooks (
--    Bor_id INT PRIMARY KEY,
--    b_id INT,
--    m_id INT,
--    BorrowDate DATE,
--    return_date DATE
--);

-- Insert data into BorrowedBooks table
--INSERT INTO BorrowedBooks (Bor_id, b_id, m_id, BorrowDate, return_date)
--VALUES
--    (1, 1, 3, '2023-02-20', '2023-03-10'),
--    (2, 4, 2, '2022-06-15', '2022-07-05'),
--    (3, 2, 1, '2024-04-12', '2024-05-02'),
--    (4, 5, 4, '2021-10-05', '2021-11-15'),
--    (5, 3, 5, '2023-12-18', '2024-01-08');


--question no 1
--SELECT B.Genre,B.title
--FROM BorrowedBooks BB
--JOIN Books B 
--ON BB.b_id = B.b_id
--where Genre = 'Religion'
--question no 2
SELECT M.M_id, M.M_Name
FROM Members M
JOIN BorrowedBooks BB 
ON M.M_id = BB.m_id
WHERE BB.return_date <'2024-01-16'
GROUP BY M.M_id, M.M_Name
HAVING COUNT(*) > 0;

--question no 3 pending 
--SELECT A.A_id, a.A_name,
--COUNT(A_id) AS book_count
--FROM Authors A
--JOIN Books B
--ON A.A_id = 1
--group by A_id , A_name

SELECT A.A_id, A.A_name, COUNT(*) AS book_count
FROM Authors A
JOIN Books B 
ON A.A_id = B.b_id
GROUP BY A.A_id, A.A_name
ORDER BY book_count DESc

----question no 4
SELECT B.title, B.Authore, B.genre, COUNT(*) as numberOfBooks
FROM Books B
join Authors a 
on b.b_id = a.A_id
group by title , Authore , Genre


--question no 5
SELECT M.M_id, M.M_Name , COUNT(*) AS total_books_borrowed
FROM Members M
JOIN BorrowedBooks BB 
ON m.M_id = BB.m_id
GROUP BY M.M_id, M.M_Name