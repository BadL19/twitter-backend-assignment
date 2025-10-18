USE twitter_app;

-- ============================
-- INSERT USERS
-- ============================
INSERT INTO Users (name, email, role)
VALUES
('Alice Johnson', 'alice@example.com', 'producer'),
('Bob Smith', 'bob@example.com', 'subscriber'),
('Charlie Davis', 'charlie@example.com', 'both');

-- ============================
-- INSERT SUBSCRIPTIONS
-- (Bob and Charlie subscribe to Alice)
-- (Charlie also subscribes to himself because he’s both roles)
-- ============================
INSERT INTO Subscriptions (subscriber_id, producer_id)
VALUES
(2, 1),  -- Bob subscribes to Alice
(3, 1),  -- Charlie subscribes to Alice
(3, 3);  -- Charlie subscribes to himself (optional)

-- ============================
-- INSERT MESSAGES
-- ============================
INSERT INTO Messages (producer_id, content)
VALUES
(1, 'Hello everyone! This is Alice''s first post.'),
(1, 'Another beautiful day to share ideas!'),
(3, 'Hey all, Charlie here, just testing the app.'),
(3, 'Learning SQL is fun when it finally works!'),
(3, 'What features should we add next?'),
(1, 'Don’t forget to subscribe for updates.'),
(3, 'Final post for testing purposes.');
