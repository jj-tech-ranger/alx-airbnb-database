-- INNER JOIN: All bookings with their respective users
SELECT b.*, u.*
FROM Booking b
         INNER JOIN User u ON b.user_id = u.id;

-- LEFT JOIN: All properties and their reviews (include properties without reviews)
SELECT p.*, r.*
FROM Property p
         LEFT JOIN Review r ON p.id = r.property_id
ORDER BY p.property_id;

-- FULL OUTER JOIN: All users and bookings (even if some do not match)
SELECT u.*, b.*
FROM User u
         FULL OUTER JOIN Booking b ON u.id = b.user_id;
