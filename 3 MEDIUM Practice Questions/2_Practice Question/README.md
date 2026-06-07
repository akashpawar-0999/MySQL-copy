

# SQL Practice Database

## Database: Hospital

### Table: admissions

| patient_id | admission_date | discharge_date | diagnosis | attending_doctor_id |
|------------|----------------|----------------|-----------|---------------------|
| 1 | 2018-11-06 | 2018-11-08 | Ovarian Dermoid-Cyct | 21 |
| 1 | 2018-09-20 | 2018-09-20 | Ineffective Breathin Pattern R/T Fluid Accumulatio | 24 |
| 3 | 2019-01-24 | 2019-01-29 | Cardiac Arrest | 2 |
| 3 | 2018-10-21 | 2018-10-27 | Congestive Heart Failure | 8 |
| 6 | 2018-06-13 | 2018-06-15 | Asthma Exacerbation | 3 |
| 6 | 2018-11-08 | 2018-11-09 | Uterine Fibroid | 22 |
| 7 | 2018-06-24 | 2018-07-03 | Cancer | 8 |
| 8 | 2018-09-18 | 2018-09-21 | Amigima | 6 |
| 9 | 2019-03-02 | 2019-03-09 | Osteoarthritis | 8 |
| 9 | 2018-12-31 | 2018-12-31 | Ruptured Appendicitis | 19 |
| 10 | 2018-12-30 | 2019-01-05 | Zenkers Diverticulitis | 14 |
| 10 | 2019-02-27 | 2019-02-27 | Lower Quadrant Pain | 27 |
| 11 | 2018-12-14 | 2018-12-16 | Prostatectomy | 15 |
| 12 | 2019-04-27 | 2019-05-04 | Cerebral Aneurysm Rupture | 21 |
| 13 | 2019-04-28 | 2019-05-01 | Renal Failure | 1 |
| 15 | 2018-10-01 | 2018-10-05 | Hiatal Hernia | 5 |

---
✅ **Solved Questions :**  3.30 - 3.39 
---

## Table Structure

```sql
CREATE TABLE admissions (
    patient_id INT,
    admission_date DATE,
    discharge_date DATE,
    diagnosis VARCHAR(100),
    attending_doctor_id INT
);
```