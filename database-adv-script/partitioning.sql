-- Start by creating the parent table for partitioning
CREATE TABLE Booking (
    booking_id UUID PRIMARY KEY,
    property_id UUID REFERENCES Property(property_id),
    user_id UUID REFERENCES User(user_id),
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    total_price DECIMAL NOT NULL,
    status ENUM('pending', 'confirmed', 'canceled') NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) PARTITION BY RANGE (start_date);  -- Partition based on start_date

-- Create partitions for each year (example for 2023, 2024)
CREATE TABLE Booking_2023 PARTITION OF Booking
    FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');

CREATE TABLE Booking_2024 PARTITION OF Booking
    FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');
    
-- Insert Data into the Partitioned Table

INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES 
    ('booking_id_1', 'property_id_1', 'user_id_1', '2023-05-01', '2023-05-07', 100.00, 'confirmed'),
    ('booking_id_2', 'property_id_2', 'user_id_2', '2024-02-01', '2024-02-10', 150.00, 'pending');

-- Query the Partitioned Table
-- Example query to fetch bookings in 2023
SELECT * 
FROM Booking
WHERE start_date >= '2023-01-01' AND start_date < '2024-01-01';

-- Example query to fetch bookings in 2024
SELECT * 
FROM Booking
WHERE start_date >= '2024-01-01' AND start_date < '2025-01-01';

-- Dropping Old Partitions 
-- Drop the 2023 partition if no longer needed
DROP TABLE Booking_2023;

-- Testing the Performance

EXPLAIN ANALYZE
SELECT * 
FROM Booking
WHERE start_date >= '2023-06-01' AND start_date <= '2023-06-30';
