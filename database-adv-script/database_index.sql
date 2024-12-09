-- Indexes for the User table
CREATE INDEX idx_user_email ON User(email); -- Optimize email lookups
CREATE INDEX idx_user_id ON User(user_id); -- Optimize joins with Booking

-- Indexes for the Property table
CREATE INDEX idx_property_id ON Property(property_id); -- Optimize joins with Booking and Review

-- Indexes for the Booking table
CREATE INDEX idx_booking_id ON Booking(booking_id); -- Optimize joins with Payment
CREATE INDEX idx_booking_user_id ON Booking(user_id); -- Optimize joins with User
CREATE INDEX idx_booking_property_id ON Booking(property_id); -- Optimize joins with Property
