# SQL Practice Database

## Database: Hospital

### Table: province_names

| province_id | province_name |
|------------|---------------|
| AB | Alberta |
| BC | British Columbia |
| MB | Manitoba |
| NB | New Brunswick |
| NL | Newfoundland and Labrador |
| NT | Northwest Territories |
| NS | Nova Scotia |
| NU | Nunavut |
| ON | Ontario |
| PE | Prince Edward Island |
| QC | Quebec |
| SK | Saskatchewan |
| YT | Yukon |

---
✅ **Solved Question :**  4.60
---

## Table Structure

```sql
CREATE TABLE province_names (
    province_id VARCHAR(2) PRIMARY KEY,
    province_name VARCHAR(50)
);
```