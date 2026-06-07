# SQL Practice Database

## Database: Hospital

### Table: patients

| patient_id | first_name | last_name | gender | birth_date | city | province_id | allergies | height | weight |
|------------|------------|------------|--------|------------|------|------------|-----------|--------|--------|
| 1 | Donald | Waterfield | M | 1963-02-12 | Barrie | ON | NULL | 156 | 65 |
| 2 | Mickey | Baasha | M | 1981-05-28 | Dundas | ON | Sulfa | 185 | 76 |
| 3 | Jiji | Sharma | M | 1957-09-05 | Hamilton | ON | Penicillin | 194 | 106 |
| 4 | Blair | Diaz | M | 1967-01-07 | Hamilton | ON | NULL | 191 | 104 |
| 5 | Charles | Wolfe | M | 2017-11-19 | Orillia | ON | Penicillin | 47 | 10 |
| 6 | Sue | Falcon | F | 2017-09-30 | Ajax | ON | Penicillin | 43 | 5 |
| 7 | Thomas | ONeill | M | 1993-01-31 | Burlington | ON | NULL | 180 | 117 |
| 8 | Sonny | Beckett | M | 1952-12-11 | Port Hawkesbury | NS | NULL | 174 | 105 |
| 9 | Sister | Spitzer | F | 1966-10-15 | Toronto | ON | Penicillin | 173 | 95 |
| 10 | Cedric | Coltrane | M | 1961-11-10 | Toronto | ON | NULL | 157 | 61 |
| 11 | Hank | Spencer | M | 1969-08-10 | Peterborough | ON | NULL | 158 | 74 |
| 12 | Sara | di Marco | F | 1949-04-29 | Hamilton | ON | NULL | 145 | 46 |
| 13 | Daphne | Seabright | F | 1954-11-18 | Ancaster | ON | Codeine | 146 | 77 |
| 14 | Rick | Bennett | M | 1977-01-27 | Ancaster | ON | Penicillin | 220 | 95 |
| 15 | Amy | Leela | F | 1977-06-25 | Hamilton | ON | NULL | 172 | 72 |

---
✅ **Solved Questions :**  3.1 - 3.27 
---

## Table Structure

```sql
CREATE TABLE patients (
    patient_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender CHAR(1),
    birth_date DATE,
    city VARCHAR(50),
    province_id CHAR(2),
    allergies VARCHAR(50),
    height INT,
    weight INT
);
```