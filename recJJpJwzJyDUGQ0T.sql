
CREATE PROCEDURE PaymentSystemTasks()
BEGIN

    CREATE TABLE Users (
        user_id INT PRIMARY KEY,
        username VARCHAR(255),
        email VARCHAR(255),
        password VARCHAR(255),
        country VARCHAR(255)
    );

    CREATE TABLE Accounts (
        account_id INT PRIMARY KEY,
        user_id INT,
        balance DECIMAL(10, 2),
        account_type VARCHAR(50),
        FOREIGN KEY (user_id) REFERENCES Users(user_id)
    );

    CREATE TABLE Transactions (
        transaction_id INT PRIMARY KEY,
        sender_account_id INT,
        receiver_account_id INT,
        amount DECIMAL(10, 2),
        timestamp TIMESTAMP,
        FOREIGN KEY (sender_account_id) REFERENCES Accounts(account_id),
        FOREIGN KEY (receiver_account_id) REFERENCES Accounts(account_id)
    );

    SELECT title
    FROM music.tracks
    ORDER BY duration DESC
    LIMIT 3;

    SELECT username
    FROM music.users
    WHERE country <> 'USA'
    ORDER BY RAND()
    LIMIT 1;
END;
