CREATE DATABASE IF NOT EXISTS dbbankly ;
USE dbbankly ;
CREATE TABLE IF NOT EXISTS customers(
    id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(150),
    email VARCHAR(150),
    phone VARCHAR(150),
    registration_date DATETIME
    );
CREATE TABLE IF NOT EXISTS advisors(
    id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(150),
    email VARCHAR(150)
    );
CREATE TABLE IF NOT EXISTS accounts(
    id INT AUTO_INCREMENT PRIMARY KEY,
    account_number INT,
    balance DECIMAL(12,2),
    account_type ENUM('checking','savings','business'),
    customer_id INT,
    advisor_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers (id),
    FOREIGN KEY (advisor_id) REFERENCES advisors (id)
    );
CREATE TABLE IF NOT EXISTS transactions(
    id INT AUTO_INCREMENT PRIMARY KEY,
    amount DECIMAL(12,2),
    transaction_type ENUM('debit','credit'),
    transaction_date DATETIME,
    account_id INT,
    FOREIGN KEY (account_id) REFERENCES accounts (id)
    );


INSERT INTO advisors(full_name,email) VALUES('bouchra','bouchra@gmail.com');

INSERT INTO customers (full_name, email, phone, registration_date) VALUES
('Yaakoub tair', 'yaakoub@gmail.com', '0600000000', '2025-01-10 10:00:00'),
('hamza bouhouch', 'hamza@gmail.com', '0611223344', '2025-01-11 09:30:00'),
('Aymen lakcimi', 'aymen@gmail.com', '0622334455', '2025-01-12 14:45:00'),
('nafiai amine', 'amine@gmail.com', '0666778899', '2025-01-14 11:00:00');

INSERT INTO advisors (full_name, email) VALUES
('Hassan Advisor', 'advisor1@gmail.com'),
('Mona Advisor', 'advisor2@gmail.com'),
('Omar Expert', 'advisor3@gmail.com');

INSERT INTO accounts (account_number, balance, account_type, customer_id, advisor_id) VALUES
(123456, 15000.00, 'Savings', 1, 1),
(789012, 500.00, 'Checking', 1, 2),
(345678, 25000.00, 'Business', 2, 1),
(901234, -50.00, 'Checking', 3, 2),
(555111, 8000.00, 'Savings', 4, 3),
(444222, 1200.00, 'Checking', 5, 1),
(333999, 30000.00, 'Business', 4, 2);

INSERT INTO transactions (amount, transaction_type, transaction_date) VALUES
(200.00, 'debit', '2025-01-15 08:00:00'),
(500.00, 'credit', '2025-01-16 12:30:00'),
(1000.00, 'debit', '2025-01-17 14:10:00'),
(50.00, 'credit', '2025-01-20 10:00:00'),
(700.00, 'debit', '2025-01-22 09:45:00'),
(1200.00, 'credit', '2025-01-23 15:00:00');

