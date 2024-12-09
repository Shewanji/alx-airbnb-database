-- Query Performance Measurement Before Adding Indexes
-- Measure performance for finding bookings for a specific user
EXPLAIN ANALYZE
SELECT * 
FROM Booking
WHERE user_id = '00000000-0000-0000-0000-000000000001';

-- Measure performance for finding properties in a specific location
EXPLAIN ANALYZE
SELECT * 
FROM Property
WHERE location = 'California, USA';

-- Measure performance for finding bookings within a date range
EXPLAIN ANALYZE
SELECT * 
FROM Booking
WHERE start_date BETWEEN '2024-12-01' AND '2024-12-31';

-- Indexes for the User table
CREATE INDEX idx_user_email ON User(email); -- Optimize email lookups
CREATE INDEX idx_user_id ON User(user_id); -- Optimize joins with Booking

-- Indexes for the Property table
CREATE INDEX idx_property_id ON Property(property_id); -- Optimize joins with Booking and Review

-- Indexes for the Booking table
CREATE INDEX idx_booking_id ON Booking(booking_id); -- Optimize joins with Payment
CREATE INDEX idx_booking_user_id ON Booking(user_id); -- Optimize joins with User
CREATE INDEX idx_booking_property_id ON Booking(property_id); -- Optimize joins with Property

-- Query Performance Measurement After Adding Indexes
-- Measure performance for finding bookings for a specific user
EXPLAIN ANALYZE
SELECT * 
FROM Booking
WHERE user_id = '00000000-0000-0000-0000-000000000001';

-- Measure performance for finding properties in a specific location
EXPLAIN ANALYZE
SELECT * 
FROM Property
WHERE location = 'California, USA';

-- Measure performance for finding bookings within a date range
EXPLAIN ANALYZE
SELECT * 
FROM Booking
WHERE start_date BETWEEN '2024-12-01' AND '2024-12-31';