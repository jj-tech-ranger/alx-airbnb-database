-- Initial complex query: Retrieve bookings with user, property, and payment
EXPLAIN
SELECT b.*, u.*, p.*, pay.*
FROM Booking b
         INNER JOIN User u ON b.user_id = u.id
         INNER JOIN Property p ON b.property_id = p.id
         LEFT JOIN Payment pay ON b.payment_id = pay.id
WHERE b.status = 'confirmed'
AND p.is_available = TRUE;
