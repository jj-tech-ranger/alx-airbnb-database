#  Design Database Schema (DDL)

## Objective
Write SQL queries to define the database schema for the **ALX Airbnb Database Project**.  
This includes creating tables, defining constraints, and optimizing performance with indexes.

---

## Repository Structure
**GitHub Repository:** `alx-airbnb-database`  
**Directory:** `database-script-0x01`

**Files:**
- `schema.sql` — contains SQL DDL commands to create all tables, constraints, and indexes
- `README.md` — describes schema design and implementation details

---

## Task Description
Design the database schema using **Data Definition Language (DDL)** statements.  
Each entity must be implemented with the correct data types, relationships, and constraints.

---

## Requirements
1. Define SQL `CREATE TABLE` statements for all entities:
    - `users`
    - `property`
    - `booking`
    - `payment`
    - `review`
    - `message`
2. Use appropriate **data types** such as:
    - `RAW(16)` for UUIDs
    - `VARCHAR2` for text
    - `NUMBER` for numeric fields
    - `TIMESTAMP` for time-based records
    - `CLOB` for long text
3. Define **primary keys** for unique record identification.
4. Add **foreign keys** to link related entities.
5. Include **constraints** like:
    - `NOT NULL`
    - `UNIQUE`
    - `CHECK`
6. Create **indexes** on frequently queried columns to improve performance.

---

## Implementation Steps
1. Create all main entity tables.
2. Define foreign key relationships for referential integrity.
3. Apply unique and check constraints.
4. Create indexes for:
    - `users.email`
    - `property.host_id`
    - `booking.property_id`
    - `payment.booking_id`
5. Test the schema with `COMMIT` to confirm successful execution.

---

## Performance Optimization
- Indexed columns improve lookup and join performance.
- Normalized structure eliminates redundancy.
- `RAW(16)` keys ensure unique and globally consistent identifiers.

---

## Execution
Run the schema in Oracle SQL*Plus:

```sql
-- Step 1: Connect to Oracle
sqlplus system/password@xe

-- Step 2: Execute the schema file
@schema.sql
