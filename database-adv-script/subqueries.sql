-- Properties with average rating > 4.0 (non-correlated subquery)
SELECT p.*
FROM Property p
WHERE (
          SELECT AVG(r.rating)
          FROM Review r
          WHERE r.property_id = p.id
      ) > 4.0;

-- Correlated subquery: Users who made more than 3 bookings
SELECT u.*
FROM User u
WHERE (
          SELECT COUNT(*)
          FROM Booking b
          WHERE b.user_id = u.id
      ) > 3;
