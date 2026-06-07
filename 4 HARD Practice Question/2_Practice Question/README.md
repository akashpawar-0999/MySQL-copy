# SQL Practice Question

**Q: Show patient_id, weight, height, and isObese from the patients table.**

Display **isObese** as a boolean value (**0** or **1**).

A patient is considered obese if:

BMI = weight(kg) / (height(m)²) ≥ 30

- weight is in kilograms (kg)
- height is in centimeters (cm)

## Expected Output

| patient_id | weight | height | isObese |
|------------|--------|--------|---------|
| 1 | 65 | 156 | 0 |
| 2 | 76 | 185 | 0 |
| 3 | 106 | 194 | 0 |
| 4 | 104 | 191 | 0 |
| 5 | 10 | 47 | 1 |
| 6 | 5 | 43 | 0 |
