# SQL Practice Database

## Database: Hospital

### Table: doctors

| doctor_id | first_name | last_name | specialty |
|-----------|------------|-----------|------------|
| 1 | Claude | Walls | Internist |
| 2 | Joshua | Green | Cardiologist |
| 3 | Miriam | Tregre | General Surgeon |
| 4 | James | Russo | Obstetrician/Gynecologist |
| 5 | Scott | Hill | Gastroenterologist |
| 6 | Tasha | Phillips | Psychiatrist |
| 7 | Hazel | Patterson | Oncologist |
| 8 | Mickey | Duval | Pediatrician |
| 9 | Jon | Nelson | Neurologist |
| 10 | Monica | Singleton | Orthopaedic Surgeon |
| 11 | Douglas | Brooks | Respirologist |
| 12 | Flora | Moore | Cardiovascular Surgeon |
| 13 | Angelica | Noe | Nuclear Medicine |
| 14 | Tyrone | Smart | Gerontologist |
| 15 | Marie | Brinkman | Urologist |

---
✅ **Solved Questions :**  3.46 - 3.50 
---

## Table Structure

```sql
CREATE TABLE doctors (
    doctor_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    specialty VARCHAR(100)
);
```