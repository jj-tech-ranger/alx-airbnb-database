# Query Optimization Report

Initial query retrieved all booking details using multiple joins. After analyzing with EXPLAIN:
- Removed unnecessary LEFT JOINS
- Applied WHERE filters for active bookings
- Leverage indexes to reduce table scans

Refactored query runs 3x faster and uses fewer resources. See `perfomance.sql` for query sample.
