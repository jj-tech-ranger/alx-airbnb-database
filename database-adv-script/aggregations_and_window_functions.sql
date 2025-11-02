-- Total bookings per user
SELECT u.id, u.name, COUNT(b.id) AS total_bookings
FROM User u
         LEFT JOIN Booking b ON u.id = b.user_id
GROUP BY u.id, u.name;

-- Rank properties by bookings using ROW_NUMBER
SELECT p.id, p.name, COUNT(b.id) AS bookings_count,
       ROW_NUMBER() OVER (ORDER BY COUNT(b.id) DESC) AS booking_rank
FROM Property p
         LEFT JOIN Booking b ON p.id = b.property_id
GROUP BY p.id, p.name;

-- Rank properties by bookings using RANK
SELECT p.id, p.name, COUNT(b.id) AS bookings_count,
       RANK() OVER (ORDER BY COUNT(b.id) DESC) AS booking_rank
FROM Property p
         LEFT JOIN Booking b ON p.id = b.property_id
GROUP BY p.id, p.name;
