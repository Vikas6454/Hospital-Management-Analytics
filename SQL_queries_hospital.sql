
-- Hospital Management System Analysis SQL Queries

-- 1. Total appointments by status
SELECT Status, COUNT(*) AS Total
FROM hospital_data
GROUP BY Status;

-- 2. Peak appointment booking dates
SELECT Appointment_Date, COUNT(*) AS Appointments
FROM hospital_data
GROUP BY Appointment_Date
ORDER BY Appointments DESC
LIMIT 5;

-- 3. Most visited department
SELECT Department, COUNT(*) AS Visit_Count
FROM hospital_data
GROUP BY Department
ORDER BY Visit_Count DESC;

-- 4. No-shows by department
SELECT Department, COUNT(*) AS No_Shows
FROM hospital_data
WHERE Status = 'No-Show'
GROUP BY Department
ORDER BY No_Shows DESC;

-- 5. Gender-wise appointment analysis
SELECT Gender, COUNT(*) AS Total_Appointments
FROM hospital_data
GROUP BY Gender;
