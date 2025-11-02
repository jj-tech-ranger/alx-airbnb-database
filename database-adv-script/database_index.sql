-- Indexes for high-usage columns
CREATE INDEX idx_user_id ON Booking(user_id);
CREATE INDEX idx_property_id ON Review(property_id);
CREATE INDEX idx_property_id_booking ON Booking(property_id);
CREATE INDEX idx_start_date_booking ON Booking(start_date);
CREATE INDEX idx_review_rating ON Review(rating);

