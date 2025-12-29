-- Create Database
--CREATE DATABASE HospitalManagement;

-- Create Tables
DROP TABLE IF EXISTS Patients;
CREATE TABLE Patients (
    Patient_ID SERIAL PRIMARY KEY,
    Name VARCHAR(100),
    Age INT,
    Gender VARCHAR(10),
    City VARCHAR(50),
    Disease VARCHAR(100),
    Admission_Date DATE
);

DROP TABLE IF EXISTS Doctors;
CREATE TABLE Doctors (
    Doctor_ID SERIAL PRIMARY KEY,
    Name VARCHAR(100),
    Specialization VARCHAR(100),
    Experience INT,
    City VARCHAR(50)
);

DROP TABLE IF EXISTS Appointments;
CREATE TABLE Appointments (
    Appointment_ID SERIAL PRIMARY KEY,
    Patient_ID INT REFERENCES Patients(Patient_ID),
    Doctor_ID INT REFERENCES Doctors(Doctor_ID),
    Appointment_Date DATE,
    Consultation_Fee NUMERIC(10,2)
);

SELECT * FROM Patients;
SELECT * FROM Doctors;
SELECT * FROM Appointments;

--Inserting Sample data into Patients table.
INSERT INTO patients (Name, Age, Gender, City, Disease, Admission_Date) VALUES
('Patient1', 20, 'Male', 'Delhi', 'Fever', '2024-01-01'),
('Patient2', 21, 'Female', 'Mumbai', 'Cold', '2024-01-02'),
('Patient3', 22, 'Male', 'Pune', 'Diabetes', '2024-01-03'),
('Patient4', 23, 'Female', 'Jaipur', 'Asthma', '2024-01-04'),
('Patient5', 24, 'Male', 'Ahmedabad', 'Migraine', '2024-01-05'),
('Patient6', 25, 'Female', 'Delhi', 'Fever', '2024-01-06'),
('Patient7', 26, 'Male', 'Mumbai', 'Cold', '2024-01-07'),
('Patient8', 27, 'Female', 'Pune', 'Diabetes', '2024-01-08'),
('Patient9', 28, 'Male', 'Jaipur', 'Asthma', '2024-01-09'),
('Patient10', 29, 'Female', 'Ahmedabad', 'Migraine', '2024-01-10'),

('Patient11', 30, 'Male', 'Delhi', 'Fever', '2024-01-11'),
('Patient12', 31, 'Female', 'Mumbai', 'Cold', '2024-01-12'),
('Patient13', 32, 'Male', 'Pune', 'Diabetes', '2024-01-13'),
('Patient14', 33, 'Female', 'Jaipur', 'Asthma', '2024-01-14'),
('Patient15', 34, 'Male', 'Ahmedabad', 'Migraine', '2024-01-15'),
('Patient16', 35, 'Female', 'Delhi', 'Fever', '2024-01-16'),
('Patient17', 36, 'Male', 'Mumbai', 'Cold', '2024-01-17'),
('Patient18', 37, 'Female', 'Pune', 'Diabetes', '2024-01-18'),
('Patient19', 38, 'Male', 'Jaipur', 'Asthma', '2024-01-19'),
('Patient20', 39, 'Female', 'Ahmedabad', 'Migraine', '2024-01-20'),

('Patient21', 40, 'Male', 'Delhi', 'Fever', '2024-01-21'),
('Patient22', 41, 'Female', 'Mumbai', 'Cold', '2024-01-22'),
('Patient23', 42, 'Male', 'Pune', 'Diabetes', '2024-01-23'),
('Patient24', 43, 'Female', 'Jaipur', 'Asthma', '2024-01-24'),
('Patient25', 44, 'Male', 'Ahmedabad', 'Migraine', '2024-01-25'),
('Patient26', 45, 'Female', 'Delhi', 'Fever', '2024-01-26'),
('Patient27', 46, 'Male', 'Mumbai', 'Cold', '2024-01-27'),
('Patient28', 47, 'Female', 'Pune', 'Diabetes', '2024-01-28'),
('Patient29', 48, 'Male', 'Jaipur', 'Asthma', '2024-01-29'),
('Patient30', 49, 'Female', 'Ahmedabad', 'Migraine', '2024-01-30'),

('Patient31', 50, 'Male', 'Delhi', 'Checkup', '2024-02-01'),
('Patient32', 51, 'Female', 'Mumbai', 'Checkup', '2024-02-02'),
('Patient33', 52, 'Male', 'Pune', 'Checkup', '2024-02-03'),
('Patient34', 53, 'Female', 'Jaipur', 'Checkup', '2024-02-04'),
('Patient35', 54, 'Male', 'Ahmedabad', 'Checkup', '2024-02-05'),
('Patient36', 55, 'Female', 'Delhi', 'Injury', '2024-02-06'),
('Patient37', 56, 'Male', 'Mumbai', 'Injury', '2024-02-07'),
('Patient38', 57, 'Female', 'Pune', 'Injury', '2024-02-08'),
('Patient39', 58, 'Male', 'Jaipur', 'Injury', '2024-02-09'),
('Patient40', 59, 'Female', 'Ahmedabad', 'Injury', '2024-02-10'),

('Patient41', 60, 'Male', 'Delhi', 'Viral', '2024-02-11'),
('Patient42', 61, 'Female', 'Mumbai', 'Viral', '2024-02-12'),
('Patient43', 62, 'Male', 'Pune', 'Viral', '2024-02-13'),
('Patient44', 63, 'Female', 'Jaipur', 'Viral', '2024-02-14'),
('Patient45', 64, 'Male', 'Ahmedabad', 'Viral', '2024-02-15'),
('Patient46', 65, 'Female', 'Delhi', 'Allergy', '2024-02-16'),
('Patient47', 66, 'Male', 'Mumbai', 'Allergy', '2024-02-17'),
('Patient48', 67, 'Female', 'Pune', 'Allergy', '2024-02-18'),
('Patient49', 68, 'Male', 'Jaipur', 'Allergy', '2024-02-19'),
('Patient50', 69, 'Female', 'Ahmedabad', 'Allergy', '2024-02-20'),

('Patient51', 70, 'Male', 'Delhi', 'Checkup', '2024-02-21'),
('Patient52', 71, 'Female', 'Mumbai', 'Checkup', '2024-02-22'),
('Patient53', 72, 'Male', 'Pune', 'Checkup', '2024-02-23'),
('Patient54', 73, 'Female', 'Jaipur', 'Checkup', '2024-02-24'),
('Patient55', 74, 'Male', 'Ahmedabad', 'Checkup', '2024-02-25'),
('Patient56', 75, 'Female', 'Delhi', 'Cold', '2024-02-26'),
('Patient57', 76, 'Male', 'Mumbai', 'Cold', '2024-02-27'),
('Patient58', 77, 'Female', 'Pune', 'Cold', '2024-02-28'),
('Patient59', 78, 'Male', 'Jaipur', 'Cold', '2024-02-29'),
('Patient60', 79, 'Female', 'Ahmedabad', 'Cold', '2024-03-01'),

('Patient61', 80, 'Male', 'Delhi', 'Fever', '2024-03-02'),
('Patient62', 81, 'Female', 'Mumbai', 'Fever', '2024-03-03'),
('Patient63', 82, 'Male', 'Pune', 'Fever', '2024-03-04'),
('Patient64', 83, 'Female', 'Jaipur', 'Fever', '2024-03-05'),
('Patient65', 84, 'Male', 'Ahmedabad', 'Fever', '2024-03-06'),
('Patient66', 85, 'Female', 'Delhi', 'Diabetes', '2024-03-07'),
('Patient67', 86, 'Male', 'Mumbai', 'Diabetes', '2024-03-08'),
('Patient68', 87, 'Female', 'Pune', 'Diabetes', '2024-03-09'),
('Patient69', 88, 'Male', 'Jaipur', 'Diabetes', '2024-03-10'),
('Patient70', 89, 'Female', 'Ahmedabad', 'Diabetes', '2024-03-11'),

('Patient71', 90, 'Male', 'Delhi', 'Asthma', '2024-03-12'),
('Patient72', 91, 'Female', 'Mumbai', 'Asthma', '2024-03-13'),
('Patient73', 92, 'Male', 'Pune', 'Asthma', '2024-03-14'),
('Patient74', 93, 'Female', 'Jaipur', 'Asthma', '2024-03-15'),
('Patient75', 94, 'Male', 'Ahmedabad', 'Asthma', '2024-03-16'),
('Patient76', 95, 'Female', 'Delhi', 'Migraine', '2024-03-17'),
('Patient77', 96, 'Male', 'Mumbai', 'Migraine', '2024-03-18'),
('Patient78', 97, 'Female', 'Pune', 'Migraine', '2024-03-19'),
('Patient79', 98, 'Male', 'Jaipur', 'Migraine', '2024-03-20'),
('Patient80', 99, 'Female', 'Ahmedabad', 'Migraine', '2024-03-21'),

('Patient81', 45, 'Male', 'Delhi', 'Checkup', '2024-03-22'),
('Patient82', 46, 'Female', 'Mumbai', 'Checkup', '2024-03-23'),
('Patient83', 47, 'Male', 'Pune', 'Checkup', '2024-03-24'),
('Patient84', 48, 'Female', 'Jaipur', 'Checkup', '2024-03-25'),
('Patient85', 49, 'Male', 'Ahmedabad', 'Checkup', '2024-03-26'),
('Patient86', 50, 'Female', 'Delhi', 'Viral', '2024-03-27'),
('Patient87', 51, 'Male', 'Mumbai', 'Viral', '2024-03-28'),
('Patient88', 52, 'Female', 'Pune', 'Viral', '2024-03-29'),
('Patient89', 53, 'Male', 'Jaipur', 'Viral', '2024-03-30'),
('Patient90', 54, 'Female', 'Ahmedabad', 'Viral', '2024-03-31'),

('Patient91', 55, 'Male', 'Delhi', 'Infection', '2024-04-01'),
('Patient92', 56, 'Female', 'Mumbai', 'Infection', '2024-04-02'),
('Patient93', 57, 'Male', 'Pune', 'Infection', '2024-04-03'),
('Patient94', 58, 'Female', 'Jaipur', 'Infection', '2024-04-04'),
('Patient95', 59, 'Male', 'Ahmedabad', 'Infection', '2024-04-05'),
('Patient96', 60, 'Female', 'Delhi', 'Allergy', '2024-04-06'),
('Patient97', 61, 'Male', 'Mumbai', 'Allergy', '2024-04-07'),
('Patient98', 62, 'Female', 'Pune', 'Allergy', '2024-04-08'),
('Patient99', 63, 'Male', 'Jaipur', 'Allergy', '2024-04-09'),
('Patient100', 64, 'Female', 'Ahmedabad', 'Allergy', '2024-04-10');

--Inserting Sample data into Doctors table.
INSERT INTO doctors (Name, Specialization, Experience, City) VALUES
('Dr1', 'Cardiology', 5, 'Delhi'),
('Dr2', 'Neurology', 6, 'Mumbai'),
('Dr3', 'Orthopedic', 7, 'Pune'),
('Dr4', 'Dermatology', 8, 'Jaipur'),
('Dr5', 'General', 9, 'Ahmedabad'),
('Dr6', 'Cardiology', 10, 'Delhi'),
('Dr7', 'Neurology', 11, 'Mumbai'),
('Dr8', 'Orthopedic', 12, 'Pune'),
('Dr9', 'Dermatology', 13, 'Jaipur'),
('Dr10', 'General', 14, 'Ahmedabad'),
('Dr11', 'Cardiology', 15, 'Delhi'),
('Dr12', 'Neurology', 16, 'Mumbai'),
('Dr13', 'Orthopedic', 17, 'Pune'),
('Dr14', 'Dermatology', 18, 'Jaipur'),
('Dr15', 'General', 19, 'Ahmedabad'),
('Dr16', 'Cardiology', 20, 'Delhi'),
('Dr17', 'Neurology', 21, 'Mumbai'),
('Dr18', 'Orthopedic', 22, 'Pune'),
('Dr19', 'Dermatology', 23, 'Jaipur'),
('Dr20', 'General', 24, 'Ahmedabad');

--Inserting Sample data into Appointments table.

INSERT INTO appointments (Patient_ID, Doctor_ID, Appointment_Date, Consultation_Fee) VALUES
(1,1,'2024-04-01',300),(2,2,'2024-04-02',350),(3,3,'2024-04-03',400),
(4,4,'2024-04-04',450),(5,5,'2024-04-05',500),(6,6,'2024-04-06',550),
(7,7,'2024-04-07',600),(8,8,'2024-04-08',650),(9,9,'2024-04-09',700),
(10,10,'2024-04-10',750),(11,11,'2024-04-11',800),(12,12,'2024-04-12',850),
(13,13,'2024-04-13',900),(14,14,'2024-04-14',950),(15,15,'2024-04-15',1000),
(16,16,'2024-04-16',1050),(17,17,'2024-04-17',1100),(18,18,'2024-04-18',1150),
(19,19,'2024-04-19',1200),(20,20,'2024-04-20',1250),

(21,1,'2024-04-21',300),(22,2,'2024-04-22',350),(23,3,'2024-04-23',400),
(24,4,'2024-04-24',450),(25,5,'2024-04-25',500),(26,6,'2024-04-26',550),
(27,7,'2024-04-27',600),(28,8,'2024-04-28',650),(29,9,'2024-04-29',700),
(30,10,'2024-04-30',750),

(31,11,'2024-05-01',800),(32,12,'2024-05-02',850),(33,13,'2024-05-03',900),
(34,14,'2024-05-04',950),(35,15,'2024-05-05',1000),(36,16,'2024-05-06',1050),
(37,17,'2024-05-07',1100),(38,18,'2024-05-08',1150),(39,19,'2024-05-09',1200),
(40,20,'2024-05-10',1250),

(41,1,'2024-05-11',300),(42,2,'2024-05-12',350),(43,3,'2024-05-13',400),
(44,4,'2024-05-14',450),(45,5,'2024-05-15',500),(46,6,'2024-05-16',550),
(47,7,'2024-05-17',600),(48,8,'2024-05-18',650),(49,9,'2024-05-19',700),
(50,10,'2024-05-20',750),

(51,11,'2024-05-21',800),(52,12,'2024-05-22',850),(53,13,'2024-05-23',900),
(54,14,'2024-05-24',950),(55,15,'2024-05-25',1000),(56,16,'2024-05-26',1050),
(57,17,'2024-05-27',1100),(58,18,'2024-05-28',1150),(59,19,'2024-05-29',1200),
(60,20,'2024-05-30',1250),

(61,1,'2024-06-01',300),(62,2,'2024-06-02',350),(63,3,'2024-06-03',400),
(64,4,'2024-06-04',450),(65,5,'2024-06-05',500),(66,6,'2024-06-06',550),
(67,7,'2024-06-07',600),(68,8,'2024-06-08',650),(69,9,'2024-06-09',700),
(70,10,'2024-06-10',750),

(71,11,'2024-06-11',800),(72,12,'2024-06-12',850),(73,13,'2024-06-13',900),
(74,14,'2024-06-14',950),(75,15,'2024-06-15',1000),(76,16,'2024-06-16',1050),
(77,17,'2024-06-17',1100),(78,18,'2024-06-18',1150),(79,19,'2024-06-19',1200),
(80,20,'2024-06-20',1250),

(81,1,'2024-06-21',300),(82,2,'2024-06-22',350),(83,3,'2024-06-23',400),
(84,4,'2024-06-24',450),(85,5,'2024-06-25',500),(86,6,'2024-06-26',550),
(87,7,'2024-06-27',600),(88,8,'2024-06-28',650),(89,9,'2024-06-29',700),
(90,10,'2024-06-30',750),

(91,11,'2024-07-01',800),(92,12,'2024-07-02',850),(93,13,'2024-07-03',900),
(94,14,'2024-07-04',950),(95,15,'2024-07-05',1000),(96,16,'2024-07-06',1050),
(97,17,'2024-07-07',1100),(98,18,'2024-07-08',1150),(99,19,'2024-07-09',1200),
(100,20,'2024-07-10',1250),

(1,5,'2024-07-11',500),(2,10,'2024-07-12',750),
(3,15,'2024-07-13',1000),(4,20,'2024-07-14',1250),
(5,1,'2024-07-15',300),(6,2,'2024-07-16',350),
(7,3,'2024-07-17',400),(8,4,'2024-07-18',450),
(9,5,'2024-07-19',500),(10,6,'2024-07-20',550);

SELECT * FROM Patients;
SELECT * FROM Doctors;
SELECT * FROM Appointments;

 
								--SQL QUERIES--

-- 1.Display all patients.
SELECT * FROM patients;

-- 2.Show only patient names and their cities.
SELECT name, city FROM Patients;

-- 3.Find all female patients.
SELECT * FROM Patients
WHERE gender='Female';

-- 4.List patients whose age is greater than 50.
SELECT * FROM Patients
WHERE age>50;

-- 5.Show all patients from Delhi.
SELECT * FROM Patients
WHERE city='Delhi';

-- 6.Display all doctors.
SELECT * FROM Doctors;

-- 7.List doctors who work in Mumbai.
SELECT * FROM Doctors
WHERE city='Mumbai';
-- 8.Show doctors with experience more than 15 years.
SELECT * FROM Doctors
WHERE experience>15;

-- 9.Display all appointments.
SELECT * FROM Appointments;

-- 10.Find appointments with consultation fee greater than 1000.
SELECT * FROM Appointments
WHERE consultation_fee>1000;


-- 11.Show patient name with appointment date.
--(JOIN patients + appointments)
SELECT p.name, p.patient_id, a.appointment_date 
FROM Patients p
JOIN Appointments a ON p.patient_id=a.patient_id;

-- Display patient name, doctor name, and consultation fee.
SELECT p.name AS Patient_Name,
       d.name AS Doctor_Name,
	   a.consultation_fee 
FROM Appointments a
JOIN Patients p ON a.patient_id=p.patient_id
JOIN Doctors d ON a.doctor_id=d.doctor_id;

-- Find total number of patients.
SELECT COUNT(*) AS Total_Patients FROM Patients;

-- Count total number of doctors.
SELECT COUNT(*) AS Total_Doctors FROM Doctors;

-- Find total number of appointments.
SELECT COUNT(*) AS Total_Appointments FROM Appointments;

-- Show number of patients in each city.
SELECT city, COUNT(*) AS Patients_Count FROM Patients
GROUP BY city;

-- Find average age of patients.
SELECT AVG(age) AS avg_age FROM Patients;

-- Show total appointments handled by each doctor.
SELECT d.name, COUNT(a.appointment_id) AS Total_Appointments
FROM Doctors d
JOIN Appointments a ON d.doctor_id=a.doctor_id
GROUP BY d.name;

-- Find total consultation fee collected.
SELECT SUM(consultation_fee) AS Total_Revenue FROM Appointments;

-- Show patients who visited more than one time.
SELECT p.name, COUNT(a.appointment_id) AS Visit_Count
FROM Patients p
JOIN Appointments a ON p.patient_id=a.patient_id
GROUP BY p.name
HAVING COUNT(a.appointment_id)>1;

-- Find the doctor who has handled the maximum appointments.
SELECT d.name, COUNT(a.appointment_id) AS appointments_count
FROM Doctors d
JOIN Appointments a ON d.doctor_id=a.doctor_id
GROUP BY d.name
ORDER BY appointments_count DESC
LIMIT 1;

-- Find the patient who paid the highest total consultation fee.
SELECT p.name, SUM(a.consultation_fee) AS Total_Paid
FROM Patients p
JOIN Appointments a ON p.patient_id= a.patient_id
GROUP BY p.name
ORDER BY Total_Paid DESC
LIMIT 1;

-- Show city-wise total consultation revenue.
SELECT p.city, SUM(a.consultation_fee) AS Total_Revenue
FROM Patients p
JOIN Appointments a ON p.patient_id= a.patient_id
GROUP BY p.city;

-- List patients who never visited any doctor.
SELECT p.name
FROM Patients p
LEFT JOIN Appointments a ON p.patient_id=a.patient_id
WHERE a.patient_id IS NULL;

-- Find average consultation fee per doctor.
SELECT d.name, AVG(a.consultation_fee) AS Avg_Fee
FROM Doctors d
JOIN Appointments a ON d.doctor_id=a.doctor_id
GROUP BY d.name;

-- Show doctors who handled more than 5 appointments.
SELECT d.name, COUNT(a.appointment_id) AS Total_Appointments
FROM Doctors d
JOIN Appointments a ON d.doctor_id=a.doctor_id
GROUP BY d.name
HAVING COUNT(a.appointment_id)>5;

-- Find month-wise appointment count.
SELECT EXTRACT(MONTH FROM appointment_date) AS Month,
    COUNT(*) AS Total_Appointment
FROM Appointments
GROUP BY Month
ORDER BY Month;
-- Display patients with disease = 'Fever' who visited in January.
SELECT DISTINCT p.name
FROM Patients p
JOIN Appointments a ON p.patient_id=a.patient_id
WHERE p.disease= 'Fever' AND EXTRACT(MONTH FROM a.appointment_date) =1;

-- Find top 3 doctors based on number of appointments.
SELECT d.name, COUNT(a.appointment_id) AS Appointment_Count
FROM Doctors d
JOIN Appointments a ON d.doctor_id=a.doctor_id
GROUP BY d.name
ORDER BY Appointment_Count DESC
LIMIT 3;

-- Show appointments where consultation fee is between 500 and 800.	
SELECT * FROM Appointments
WHERE consultation_fee BETWEEN 500 AND 800;