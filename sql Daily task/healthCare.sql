-- Create Patients table
--CREATE TABLE Patients (
--    patient_id INT PRIMARY KEY,
--    patient_name VARCHAR(50),
--    admission_date DATE,
--    discharge_date DATE
--)

-- Insert data into Patients table
--INSERT INTO Patients (patient_id, patient_name, admission_date, discharge_date)
--VALUES
--    (1, 'Muhammad Ali', '2022-01-01', '2022-01-10'),
--    (2, 'Aisha Khan', '2022-02-15', '2022-02-28'),
--    (3, 'Zainab Ahmed', '2022-03-10', '2022-03-20'),
--    (4, 'Omar Farooq', '2022-04-05', '2022-04-15'),
--    (5, 'Fatima Malik', '2022-05-12', '2022-05-25');

-- Create Doctors table
--CREATE TABLE Doctors (
--    doctor_id INT PRIMARY KEY,
--    doctor_name VARCHAR(50),
--    specialization VARCHAR(50)
--)

-- Insert data into Doctors table
--INSERT INTO Doctors (doctor_id, doctor_name, specialization)
--VALUES
--    (1, 'Dr. Ahmed Abbas', 'Cardiology'),
--    (2, 'Dr. Sara Rahman', 'Pediatrics'),
--    (3, 'Dr. Ali Khan', 'Orthopedics'),
--    (4, 'Dr. Zainab Malik', 'Dermatology'),
--    (5, 'Dr. Omar Farooq', 'Neurology');

-- Create Appointments table
--CREATE TABLE Appointments (
--    appointment_id INT PRIMARY KEY,
--    patient_id INT,
--    doctor_id INT,
--    appointment_date DATE,
   
--)

-- Insert data into Appointments table
--INSERT INTO Appointments (appointment_id, patient_id, doctor_id, appointment_date)
--VALUES
--    (1, 1, 3, '2022-01-05'),
--    (2, 2, 1, '2022-02-20'),
--    (3, 3, 4, '2022-03-15'),
--    (4, 4, 2, '2022-04-10'),
--    (5, 5, 5, '2022-05-20');

--qustion num01
SELECT  AVG(DATEDIFF(day, admission_date, discharge_date))
AS average_stay_duration
FROM Patients 
--question num02
SELECT d.doctor_id, d.doctor_name, COUNT(appointment_id) AS appointment_count
FROM Appointments a
join Doctors d
on a.doctor_id= d.doctor_id

GROUP BY d.doctor_id, d.doctor_name
ORDER BY appointment_count DESC

--question num 3
SELECT p.patient_name, d.doctor_name,a.appointment_date
from Patients p 
join Appointments a
on p.patient_id = a.patient_id
join Doctors d
on d.doctor_id =a.doctor_id
where p.patient_id = 1
--question num4
   SELECT d.doctor_id, doctor_name,
   count(a.doctor_id)
   AS Total_appointments
   from
Doctors  d
join Appointments a
on d.doctor_id = a.doctor_id
--where a.Doctor_id>2
GROUP BY d.doctor_id, doctor_name;