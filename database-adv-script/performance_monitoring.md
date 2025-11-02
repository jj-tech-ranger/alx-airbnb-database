# Database Performance Monitoring

Used `EXPLAIN ANALYZE` and `SHOW PROFILE` to test query plans and execution times on high-usage queries.
- Detected bottleneck on Booking JOIN queries
- Added indexes and partitioning for performance
- Refined Booking and Review schema types for faster access

Observed significant improvements in query run times and resource usage. Recommendations: periodic profiling, adaptive indexing, and incremental schema tuning.
