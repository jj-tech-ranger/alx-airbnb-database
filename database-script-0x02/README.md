# Task 3: Seed the Database with Sample Data

## Objective
Populate the **Airbnb database** with realistic test data for development and validation.

---

## Files
- **seed.sql**: SQL script that inserts 15 sample records into each table — `Users`, `Properties`, `Bookings`, and `Payments`.
- **README.md**: Documentation describing the purpose, usage, and logic of the seed script.

---

## Usage
1. Ensure your Oracle database and schema are created using `schema.sql`.
2. Open SQL*Plus or Oracle SQL Developer.
3. Run:
   ```sql
   @seed.sql
