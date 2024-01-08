----create table orders (
----O_id int primary key ,
----c_Id int,
---- amount int
----)
----create table customers (
----C_id int primary key,
----c_name varchar (20),
----country varchar (30),
----)
---- Insert data into the customers table with Muslim names
--INSERT INTO customers (C_id, c_name, country)
--VALUES
--    (1, 'Muhammad Ali', 'Pakistan'),
--    (2, 'Fatima Ahmed', 'Saudi Arabia'),
--    (3, 'Ahmed Khan', 'Egypt'),
--    (4, 'Aisha Rahman', 'United Arab Emirates'),
--    (5, 'Omar Malik', 'Jordan'),
--    (6, 'Sofia Abbas', 'Qatar'),
--    (7, 'Yusuf Hasan', 'Indonesia'),
--    (8, 'Amina Shah', 'Malaysia'),
--    (9, 'Ibrahim Hassan', 'Turkey'),
--    (10, 'Zainab Ali', 'Morocco'),
--    (11, 'Hassan Ahmad', 'Iraq'),
--    (12, 'Maryam Abdullah', 'Kuwait'),
--    (13, 'Yusuf Abdullahi', 'Nigeria'),
--    (14, 'Layla Hussein', 'Lebanon'),
--    (15, 'Aliya Mustafa', 'Oman'),
--    (16, 'Ahmad Farid', 'Afghanistan'),
--    (17, 'Khadija Al-Mawla', 'Syria'),
--    (18, 'Zakariya Hamza', 'Yemen'),
--    (19, 'Sara Abbas', 'Iran'),
--    (20, 'Hamza Ahmad', 'Maldives');

---- Insert data into the orders table
--INSERT INTO orders (O_id, c_Id, amount)
--VALUES
--    (1, 3, 150),
--    (2, 8, 200),
--    (3, 5, 120),
--    (4, 12, 80),
--    (5, 16, 250),
--    (6, 7, 180),
--    (7, 11, 300),
--    (8, 19, 90),
--    (9, 2, 130),
--    (10, 14, 220),
--    (11, 6, 170),
--    (12, 10, 190),
--    (13, 15, 110),
--    (14, 1, 240),
--    (15, 4, 160),
--    (16, 18, 280),
--    (17, 9, 140),
--    (18, 13, 100),
--    (19, 20, 210),
--    (20, 17, 230);
select c.c_name ,c.country,o.amount  from  customers c
join orders o
on  c.C_id = o.c_Id
where amount >1000 and country = 'USA'