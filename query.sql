use dbbankly;

--Insérer un nouveau customer
INSERT INTO customers (full_name, email, phone, registration_date)
VALUES ('New Customer', 'new@gmail.com', '0700000000', NOW());

-- Modifier le numéro de téléphone d’un customer
UPDATE customers SET phone = '0610101010' WHERE id = 1;

-- Afficher tous les customers
SELECT * FROM customers;

-- Afficher uniquement full_name et email des customers
SELECT full_name, email FROM customers;

-- Afficher tous les accounts
SELECT * FROM accounts;

-- Afficher uniquement les account_number
SELECT account_number FROM accounts;

-- Afficher toutes les transactions
SELECT * FROM transactions;

-- Accounts avec balance > 10000
SELECT * FROM accounts
WHERE balance > 10000;

-- Accounts avec balance ≤ 0
SELECT * FROM accounts
WHERE balance <= 0;

-- Transactions de type "debit"
SELECT * FROM transactions
WHERE transaction_type = 'debit';


