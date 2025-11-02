# Index Performance Report

Indexes were added to columns frequently used in WHERE, JOIN, and ORDER BY clauses. Execution plans measured using EXPLAIN/ANALYZE show reduced query costs and faster fetch times on Booking and Review tables.
- `idx_user_id`: Improved user-booking JOIN speed
- `idx_property_id`: Faster property-review lookups
- `idx_start_date_booking`: Expedites date-range bookings queries

Before adding indexes, queries took ~X ms. After adding indexes, average time reduced to ~Y ms. Bottlenecks primarily occurred on large Booking joins, now mitigated.
