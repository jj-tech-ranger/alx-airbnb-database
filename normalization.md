# Database Normalization

## Overview
This database structure meets up to **Third Normal Form (3NF)** by removing redundancy and ensuring data integrity.

---

## Normalization Steps

### First Normal Form (1NF)
- Each table has a primary key.
- All fields hold atomic values with no repeating groups.

### Second Normal Form (2NF)
- All non-key attributes fully depend on the primary key in each table.
- No partial dependency exists since all tables use a single-column primary key.

### Third Normal Form (3NF)
- No transitive dependencies.
- All non-key attributes depend only on the primary key.
- Related information is separated into different tables:
    - User contact details belong in the **users** table.
    - Property information is stored separately and linked to the host user.
    - Bookings connect users and properties.
    - Payments link only to bookings.
    - Reviews and messages have foreign keys to track relationships but contain no redundant user or property details.

---

## Improvements Applied
- Split **property** and **booking** tables for clear separation between hosting and reservations.
- Indexed key columns and enforced unique email on users for fast lookup.
- Created foreign key constraints to support valid references.
- Used realistic attribute types and lengths to match real-world usage.
- Allowed null for optional fields like **phone_number**, but kept all essential fields required.

---

## Result
The schema is normalized to **3NF**.  
Each table has minimal redundancy.  
Any update, insertion, or deletion does not create anomalies.  
Data integrity and query performance are improved.
