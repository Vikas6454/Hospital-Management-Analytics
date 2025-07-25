# Hospital-Management-Analytics
Data analytics project to optimize hospital operations and reduce appointment no-shows.
# 🏥 Hospital Management System Analysis

This project analyzes hospital appointment data to uncover patterns in patient visits, no-show behavior, and departmental performance. The insights are used to improve hospital efficiency and patient satisfaction.

---

## 🎯 Project Goals

- Identify appointment trends and departmental loads
- Analyze no-show and rescheduling behavior
- Understand doctor workload and patient demographics
- Create a visual dashboard summarizing key metrics

---

## 🧰 Tools & Technologies

- **Python** (Pandas, Matplotlib, Seaborn)
- **SQL** (for structured queries)
- **Microsoft Excel / Power BI** (Dashboard creation)
- **Jupyter Notebook** (for scripting & exploration)

---

## 📁 Dataset Overview

The dataset contains simulated hospital appointment records with the following columns:

| Column Name       | Description                               |
|-------------------|-------------------------------------------|
| patient_id        | Unique identifier for each patient        |
| patient_name      | Name of the patient                       |
| age               | Age of the patient                        |
| gender            | Gender (Male/Female)                      |
| department        | Department visited (e.g., Cardiology)     |
| doctor            | Name of the attending doctor              |
| appointment_date  | Date of the scheduled appointment         |
| status            | Status (Completed / No-show / Rescheduled) |

---

## 📊 Key Insights

- 🔢 Total appointments and appointment status breakdown
- ❌ Highest no-show rates by department
- 👨‍⚕️ Doctor-wise workload analysis
- 📅 Appointment trends by date
- 👥 Demographic breakdown by age and gender

---

## 💡 Sample SQL Queries

```sql
-- Total Appointments by Doctor
SELECT doctor, COUNT(*) AS total_appointments
FROM appointments
GROUP BY doctor;

-- No-show rate by department
SELECT department,
       ROUND(100.0 * SUM(CASE WHEN status = 'No-show' THEN 1 ELSE 0 END) / COUNT(*), 2) AS no_show_rate
FROM appointments
GROUP BY department;
<img width="1536" height="1024" alt="Hospital Management system" src="https://github.com/user-attachments/assets/d5a46fac-233d-45bf-bea8-7fc0b6723cd5" />
