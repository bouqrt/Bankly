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


