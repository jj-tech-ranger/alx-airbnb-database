-- Indexes for high-usage columns

-- Performance analysis before creating indexes
EXPLAIN ANALYZE
SELECT * FROM Booking WHERE user_id = 1;

EXPLAIN ANALYZE
SELECT * FROM Review WHERE property_id = 1;

EXPLAIN ANALYZE
SELECT * FROM Booking WHERE property_id = 1;

EXPLAIN ANALYZE
SELECT * FROM Booking WHERE start_date >= '2024-01-01';

EXPLAIN ANALYZE
SELECT * FROM Review WHERE rating >= 4;

CREATE INDEX idx_user_id ON Booking(user_id);
CREATE INDEX idx_property_id ON Review(property_id);
CREATE INDEX idx_property_id_booking ON Booking(property_id);
CREATE INDEX idx_start_date_booking ON Booking(start_date);
CREATE INDEX idx_review_rating ON Review(rating);

-- Performance analysis after creating indexes
EXPLAIN ANALYZE
SELECT * FROM Booking WHERE user_id = 1;

EXPLAIN ANALYZE
SELECT * FROM Review WHERE property_id = 1;

EXPLAIN ANALYZE
SELECT * FROM Booking WHERE property_id = 1;

EXPLAIN ANALYZE
SELECT * FROM Booking WHERE start_date >= '2024-01-01';

EXPLAIN ANALYZE
SELECT * FROM Review WHERE rating >= 4;

