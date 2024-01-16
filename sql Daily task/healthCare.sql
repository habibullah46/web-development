
--create table parents (
--P_id int primary key,
--p_name varchar(30),
--admission_date varchar (30),
--discharge_date varchar (30)
--)

--insert into parents values
--(101, 'Habibullah', '01-03-2023','01-06-2023'),
--(102, 'Abdullah', '02-05-2024','01-09-2024'),
--(103, 'ASlam', '11-12-2022','11-12-2023'),
--(104, 'Ejaz', '14-03-2023','01-06-2025'),
--(105, 'Ahmed', '15-05-2021','15-06-2022'),
--(106, 'Azkar', '01-03-2023','01-07-2023')
--create table doctors(
--D_id int primary key ,
--D_name varchar(30),
--speciialization varchar(30)
--)
--insert into doctors values
--(201,'Zulfiqar','heart'),
--(202,'Aqeel','eyes'),
--(203,'Zulfiqar','hear'),
--(204,'Zulfiqar','kidney'),
--(205,'Zulfiqar','heart'),
--(206,'Zulfiqar','blood')
--create table appointments(
--A_id int primary key,
--P_id int ,
--D_id int 
--)
--insert into appointments 
--values (301 , 101 ,201),
-- (302 , 102 ,202),
--  (303 , 103 ,203),
--   (304 , 104 ,204),
--    (305 , 105 ,205),
--	 (306 , 106 ,206)
select * from parents 
select * from doctors
select * from appointments

select p.p_name , d.D_name ,  from appointments a 
join doctors d
on a.D_id=d.D_id
join parents p 
on a.P_id = p.P_id