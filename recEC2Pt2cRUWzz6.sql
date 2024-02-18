SELECT *
FROM users
WHERE country IN ('Germany', 'USA') AND is_blocked = 0;

SELECT title
FROM tracks
WHERE duration BETWEEN 300 AND 900; 

UPDATE users
SET is_blocked = 0
WHERE country <> 'Germany';

UPDATE accounts
SET balance = balance + 150
WHERE user_id IN (SELECT user_id FROM users WHERE country <> 'Germany' AND is_blocked = 0);
