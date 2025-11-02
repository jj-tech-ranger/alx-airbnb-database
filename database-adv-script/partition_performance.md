# Partitioning Performance Report

Partitioned Booking table by start_date. Queries filtered by date range ran significantly faster (from ~N ms to ~M ms). Data scans limited to relevant partitions, reducing I/O and query times.
