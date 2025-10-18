-- Create database
CREATE DATABASE twitter_app;
USE twitter_app;

-- ============================
-- USERS TABLE
-- ============================
CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    role ENUM('producer', 'subscriber', 'both') NOT NULL DEFAULT 'subscriber'
);

-- ============================
-- MESSAGES TABLE
-- ============================
CREATE TABLE Messages (
    message_id INT AUTO_INCREMENT PRIMARY KEY,
    producer_id INT NOT NULL,
    content TEXT NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (producer_id) REFERENCES Users(user_id)
        ON DELETE CASCADE
);

-- ============================
-- SUBSCRIPTIONS TABLE
-- ============================
CREATE TABLE Subscriptions (
    subscriber_id INT NOT NULL,
    producer_id INT NOT NULL,
    PRIMARY KEY (subscriber_id, producer_id),
    FOREIGN KEY (subscriber_id) REFERENCES Users(user_id)
        ON DELETE CASCADE,
    FOREIGN KEY (producer_id) REFERENCES Users(user_id)
        ON DELETE CASCADE
);


