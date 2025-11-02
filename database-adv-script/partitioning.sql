-- Partition Booking table by start_date (range partitioning example)
CREATE TABLE Booking_partitioned (
                                     id INT PRIMARY KEY,
                                     user_id INT,
                                     property_id INT,
                                     start_date DATE,
                                     end_date DATE,
                                     payment_id INT,
    -- other columns
)
    PARTITION BY RANGE (start_date) (
                                        PARTITION p_2025_oct VALUES LESS THAN ('2025-11-01'),
                                        PARTITION p_2025_nov VALUES LESS THAN ('2025-12-01'),
                                        PARTITION p_future VALUES LESS THAN (MAXVALUE)
                                    );

-- Sample query on partitioned Booking table
SELECT * FROM Booking_partitioned
WHERE start_date BETWEEN '2025-10-27' AND '2025-11-03';
