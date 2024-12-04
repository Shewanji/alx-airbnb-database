-- Sample data in User table
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at) VALUES
('11111111-1111-1111-1111-111111111111', 'John', 'Doe', 'john.doe@example.com', 'hashedpassword1', '1234567890', 'guest', CURRENT_TIMESTAMP),
('22222222-2222-2222-2222-222222222222', 'Jane', 'Smith', 'jane.smith@example.com', 'hashedpassword2', '2345678901', 'host', CURRENT_TIMESTAMP),
('33333333-3333-3333-3333-333333333333', 'Alice', 'Johnson', 'alice.johnson@example.com', 'hashedpassword3', '3456789012', 'admin', CURRENT_TIMESTAMP);

-- Sample data in Property table
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight, created_at, updated_at) VALUES
('44444444-4444-4444-4444-444444444444', '22222222-2222-2222-2222-222222222222', 'Cozy Apartment', 'A small but cozy apartment in the city center.', 'New York, NY', 120.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('55555555-5555-5555-5555-555555555555', '22222222-2222-2222-2222-222222222222', 'Beachfront Villa', 'Luxury villa with a private beach and pool.', 'Miami, FL', 450.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('66666666-6666-6666-6666-666666666666', '22222222-2222-2222-2222-222222222222', 'Mountain Cabin', 'Rustic cabin surrounded by nature.', 'Aspen, CO', 200.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- Sample data in Booking table
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at) VALUES
('77777777-7777-7777-7777-777777777777', '44444444-4444-4444-4444-444444444444', '11111111-1111-1111-1111-111111111111', '2024-12-10', '2024-12-15', 600.00, 'confirmed', CURRENT_TIMESTAMP),
('88888888-8888-8888-8888-888888888888', '55555555-5555-5555-5555-555555555555', '11111111-1111-1111-1111-111111111111', '2024-12-20', '2024-12-25', 2250.00, 'pending', CURRENT_TIMESTAMP),
('99999999-9999-9999-9999-999999999999', '66666666-6666-6666-6666-666666666666', '11111111-1111-1111-1111-111111111111', '2024-12-28', '2024-12-30', 400.00, 'canceled', CURRENT_TIMESTAMP);

-- Sample data in Payment table
INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method) VALUES
('aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '77777777-7777-7777-7777-777777777777', 600.00, CURRENT_TIMESTAMP, 'credit_card'),
('aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '88888888-8888-8888-8888-888888888888', 2250.00, CURRENT_TIMESTAMP, 'paypal');

-- Sample data in Review table
INSERT INTO Review (review_id, property_id, user_id, rating, comment, created_at) VALUES
('bbbbbbb1-bbbb-bbbb-bbbb-bbbbbbbbbbbb', '44444444-4444-4444-4444-444444444444', '11111111-1111-1111-1111-111111111111', 5, 'Amazing place, very comfortable and clean!', CURRENT_TIMESTAMP),
('bbbbbbb2-bbbb-bbbb-bbbb-bbbbbbbbbbbb', '55555555-5555-5555-5555-555555555555', '11111111-1111-1111-1111-111111111111', 4, 'Great location, but a bit pricey.', CURRENT_TIMESTAMP);

-- Sample data in Message table
INSERT INTO Message (message_id, sender_id, recipient_id, message_body, sent_at) VALUES
('ccccccc1-cccc-cccc-cccc-cccccccccccc', '11111111-1111-1111-1111-111111111111', '22222222-2222-2222-2222-222222222222', 'Hello, is the apartment available for my dates?', CURRENT_TIMESTAMP),
('ccccccc2-cccc-cccc-cccc-cccccccccccc', '22222222-2222-2222-2222-222222222222', '11111111-1111-1111-1111-111111111111', 'Yes, it is available. Let me know if you have questions.', CURRENT_TIMESTAMP);

