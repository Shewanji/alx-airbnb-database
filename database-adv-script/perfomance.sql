-- Initial query to retrieve all bookings with associated user, property, and payment details
-- Use EXPLAIN to analyze the query performance
EXPLAIN 
SELECT 
    b.booking_id,
    b.start_date,
    b.end_date,
    b.total_price,
    b.status AS booking_status,
    u.user_id,
    u.first_name,
    u.last_name,
    u.email AS user_email,
    p.property_id,
    p.name AS property_name,
    p.description AS property_description,
    p.location AS property_location,
    p.pricepernight AS property_pricepernight,
    pay.payment_id,
    pay.amount AS payment_amount,
    pay.payment_date,
    pay.payment_method
FROM 
    Booking b
JOIN 
    User u ON b.user_id = u.user_id
JOIN 
    Property p ON b.property_id = p.property_id
LEFT JOIN 
    Payment pay ON pay.booking_id = b.booking_id
WHERE 
    b.status = 'confirmed' 
    AND p.location = 'Mombasa'
    AND pay.payment_method = 'credit_card';

