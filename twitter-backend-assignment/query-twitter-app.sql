USE twitter_app;

-- ===========================================================
-- i. Get list of users
-- ===========================================================
SELECT * FROM Users;

-- ===========================================================
-- ii. Get list of content producers
-- ===========================================================
SELECT * FROM Users
WHERE role IN ('producer', 'both');

-- ===========================================================
-- iii. Get list of content subscribers (full)
-- ===========================================================
SELECT * FROM Users
WHERE role IN ('subscriber', 'both');

-- ===========================================================
-- iv. Get list of content subscribers subscribed to a specific producer
-- Example: Get all subscribers of producer with user_id = 1 (Alice)
-- ===========================================================
SELECT u.user_id, u.name, u.email
FROM Users u
JOIN Subscriptions s ON u.user_id = s.subscriber_id
WHERE s.producer_id = 1;

-- ===========================================================
-- v. Get all messages
-- ===========================================================
SELECT m.message_id, u.name AS producer_name, m.content, m.created_at
FROM Messages m
JOIN Users u ON m.producer_id = u.user_id
ORDER BY m.created_at;

-- ===========================================================
-- vi. Get all messages created by a specific producer
-- Example: Producer with user_id = 1 (Alice)
-- ===========================================================
SELECT m.message_id, u.name AS producer_name, m.content, m.created_at
FROM Messages m
JOIN Users u ON m.producer_id = u.user_id
WHERE m.producer_id = 1
ORDER BY m.created_at;

-- ===========================================================
-- vii. Get all messages for a given subscriber 
-- (includes all producers they are subscribed to)
-- Example: Subscriber with user_id = 3 (Charlie)
-- ===========================================================
SELECT m.message_id, u.name AS producer_name, m.content, m.created_at
FROM Messages m
JOIN Users u ON m.producer_id = u.user_id
JOIN Subscriptions s ON s.producer_id = m.producer_id
WHERE s.subscriber_id = 3
ORDER BY m.created_at;
