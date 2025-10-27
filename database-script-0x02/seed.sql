-- SEED DATA FOR ALX AIRBNB DATABASE
-- ---------------------------------

-- USERS
INSERT INTO Users (user_id, full_name, email, phone, password_hash, created_at) VALUES
                                                                                    (1, 'Alice Johnson', 'alice@example.com', '+254700111222', 'hash1', SYSDATE),
                                                                                    (2, 'Brian Mwangi', 'brian@example.com', '+254700333444', 'hash2', SYSDATE),
                                                                                    (3, 'Carol Wanjiru', 'carol@example.com', '+254700555666', 'hash3', SYSDATE),
                                                                                    (4, 'David Ochieng', 'david@example.com', '+254700777888', 'hash4', SYSDATE),
                                                                                    (5, 'Evelyn Akinyi', 'evelyn@example.com', '+254700999000', 'hash5', SYSDATE),
                                                                                    (6, 'Frank Otieno', 'frank@example.com', '+254701123456', 'hash6', SYSDATE),
                                                                                    (7, 'Grace Chebet', 'grace@example.com', '+254701654321', 'hash7', SYSDATE),
                                                                                    (8, 'Henry Kimani', 'henry@example.com', '+254701789012', 'hash8', SYSDATE),
                                                                                    (9, 'Irene Njeri', 'irene@example.com', '+254702321456', 'hash9', SYSDATE),
                                                                                    (10, 'James Kiptoo', 'james@example.com', '+254702987654', 'hash10', SYSDATE),
                                                                                    (11, 'Kate Wambui', 'kate@example.com', '+254703111222', 'hash11', SYSDATE),
                                                                                    (12, 'Leon Otieno', 'leon@example.com', '+254703333444', 'hash12', SYSDATE),
                                                                                    (13, 'Mary Atieno', 'mary@example.com', '+254703555666', 'hash13', SYSDATE),
                                                                                    (14, 'Nathan Kiplangat', 'nathan@example.com', '+254703777888', 'hash14', SYSDATE),
                                                                                    (15, 'Olivia Achieng', 'olivia@example.com', '+254703999000', 'hash15', SYSDATE);

-- PROPERTIES
INSERT INTO Properties (property_id, host_id, title, description, location, price_per_night, max_guests, created_at) VALUES
                                                                                                                         (1, 1, 'Oceanview Apartment', '2-bedroom by the sea', 'Mombasa', 12000, 4, SYSDATE),
                                                                                                                         (2, 2, 'City Loft', 'Modern studio near CBD', 'Nairobi', 8000, 2, SYSDATE),
                                                                                                                         (3, 3, 'Cottage Retreat', 'Quiet escape in the hills', 'Naivasha', 10000, 5, SYSDATE),
                                                                                                                         (4, 4, 'Beach Bungalow', 'Private home on the beach', 'Diani', 15000, 6, SYSDATE),
                                                                                                                         (5, 5, 'Mountain Cabin', 'Rustic cabin with great views', 'Mt. Kenya', 11000, 4, SYSDATE),
                                                                                                                         (6, 6, 'Suburban Home', 'Perfect for families', 'Thika', 9000, 5, SYSDATE),
                                                                                                                         (7, 7, 'Luxury Villa', 'High-end 3-bedroom villa', 'Karen', 20000, 6, SYSDATE),
                                                                                                                         (8, 8, 'Safari Lodge', 'Stay near the park', 'Nakuru', 14000, 8, SYSDATE),
                                                                                                                         (9, 9, 'Studio Flat', 'Ideal for solo travelers', 'Westlands', 7000, 2, SYSDATE),
                                                                                                                         (10, 10, 'Countryside Farmhouse', 'Serene stay on a farm', 'Eldoret', 9500, 5, SYSDATE),
                                                                                                                         (11, 11, 'Lakeview Cottage', 'Peaceful lakeside escape', 'Kisumu', 10500, 4, SYSDATE),
                                                                                                                         (12, 12, 'Urban Apartment', 'New 2-bedroom downtown', 'Nairobi', 11500, 4, SYSDATE),
                                                                                                                         (13, 13, 'Desert Getaway', 'Unique stay near Chalbi', 'Marsabit', 8500, 3, SYSDATE),
                                                                                                                         (14, 14, 'Forest Cabin', 'Cabin in Karura woods', 'Nairobi', 12500, 4, SYSDATE),
                                                                                                                         (15, 15, 'Island Resort Suite', 'Luxury stay on an island', 'Lamu', 25000, 6, SYSDATE);

-- BOOKINGS
INSERT INTO Bookings (booking_id, user_id, property_id, check_in, check_out, total_amount, status, created_at) VALUES
                                                                                                                   (1, 2, 1, TO_DATE('2025-11-01', 'YYYY-MM-DD'), TO_DATE('2025-11-04', 'YYYY-MM-DD'), 36000, 'Confirmed', SYSDATE),
                                                                                                                   (2, 3, 2, TO_DATE('2025-11-05', 'YYYY-MM-DD'), TO_DATE('2025-11-08', 'YYYY-MM-DD'), 24000, 'Confirmed', SYSDATE),
                                                                                                                   (3, 4, 3, TO_DATE('2025-12-01', 'YYYY-MM-DD'), TO_DATE('2025-12-05', 'YYYY-MM-DD'), 40000, 'Pending', SYSDATE),
                                                                                                                   (4, 5, 4, TO_DATE('2025-10-25', 'YYYY-MM-DD'), TO_DATE('2025-10-30', 'YYYY-MM-DD'), 75000, 'Confirmed', SYSDATE),
                                                                                                                   (5, 6, 5, TO_DATE('2025-11-10', 'YYYY-MM-DD'), TO_DATE('2025-11-15', 'YYYY-MM-DD'), 55000, 'Cancelled', SYSDATE),
                                                                                                                   (6, 7, 6, TO_DATE('2025-10-15', 'YYYY-MM-DD'), TO_DATE('2025-10-17', 'YYYY-MM-DD'), 18000, 'Confirmed', SYSDATE),
                                                                                                                   (7, 8, 7, TO_DATE('2025-12-20', 'YYYY-MM-DD'), TO_DATE('2025-12-24', 'YYYY-MM-DD'), 80000, 'Pending', SYSDATE),
                                                                                                                   (8, 9, 8, TO_DATE('2025-10-05', 'YYYY-MM-DD'), TO_DATE('2025-10-10', 'YYYY-MM-DD'), 70000, 'Confirmed', SYSDATE),
                                                                                                                   (9, 10, 9, TO_DATE('2025-11-15', 'YYYY-MM-DD'), TO_DATE('2025-11-17', 'YYYY-MM-DD'), 14000, 'Confirmed', SYSDATE),
                                                                                                                   (10, 11, 10, TO_DATE('2025-12-10', 'YYYY-MM-DD'), TO_DATE('2025-12-15', 'YYYY-MM-DD'), 47500, 'Confirmed', SYSDATE),
                                                                                                                   (11, 12, 11, TO_DATE('2025-10-12', 'YYYY-MM-DD'), TO_DATE('2025-10-14', 'YYYY-MM-DD'), 21000, 'Cancelled', SYSDATE),
                                                                                                                   (12, 13, 12, TO_DATE('2025-11-22', 'YYYY-MM-DD'), TO_DATE('2025-11-26', 'YYYY-MM-DD'), 46000, 'Confirmed', SYSDATE),
                                                                                                                   (13, 14, 13, TO_DATE('2025-10-30', 'YYYY-MM-DD'), TO_DATE('2025-11-02', 'YYYY-MM-DD'), 25500, 'Confirmed', SYSDATE),
                                                                                                                   (14, 15, 14, TO_DATE('2025-12-01', 'YYYY-MM-DD'), TO_DATE('2025-12-04', 'YYYY-MM-DD'), 37500, 'Pending', SYSDATE),
                                                                                                                   (15, 1, 15, TO_DATE('2025-10-05', 'YYYY-MM-DD'), TO_DATE('2025-10-09', 'YYYY-MM-DD'), 100000, 'Confirmed', SYSDATE);

-- PAYMENTS
INSERT INTO Payments (payment_id, booking_id, user_id, amount, payment_date, payment_method, status) VALUES
                                                                                                         (1, 1, 2, 36000, SYSDATE, 'M-Pesa', 'Successful'),
                                                                                                         (2, 2, 3, 24000, SYSDATE, 'Card', 'Successful'),
                                                                                                         (3, 3, 4, 0, SYSDATE, 'Card', 'Pending'),
                                                                                                         (4, 4, 5, 75000, SYSDATE, 'M-Pesa', 'Successful'),
                                                                                                         (5, 5, 6, 0, SYSDATE, 'M-Pesa', 'Failed'),
                                                                                                         (6, 6, 7, 18000, SYSDATE, 'Card', 'Successful'),
                                                                                                         (7, 7, 8, 0, SYSDATE, 'M-Pesa', 'Pending'),
                                                                                                         (8, 8, 9, 70000, SYSDATE, 'Card', 'Successful'),
                                                                                                         (9, 9, 10, 14000, SYSDATE, 'M-Pesa', 'Successful'),
                                                                                                         (10, 10, 11, 47500, SYSDATE, 'Card', 'Successful'),
                                                                                                         (11, 11, 12, 0, SYSDATE, 'M-Pesa', 'Failed'),
                                                                                                         (12, 12, 13, 46000, SYSDATE, 'Card', 'Successful'),
                                                                                                         (13, 13, 14, 25500, SYSDATE, 'M-Pesa', 'Successful'),
                                                                                                         (14, 14, 15, 0, SYSDATE, 'Card', 'Pending'),
                                                                                                         (15, 15, 1, 100000, SYSDATE, 'M-Pesa', 'Successful');
