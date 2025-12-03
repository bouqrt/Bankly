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

-- Transactions de type "credit"
SELECT * FROM transactions
WHERE transaction_type = 'credit';

-- Transactions du account_id = 1
SELECT * FROM transactions
WHERE account_id = 1;

-- Customers ayant un account géré par l’advisor_id = 2
SELECT DISTINCT c.* FROM customers c JOIN accounts a ON c.id = a.customer_id WHERE a.advisor_id = 2;

-- Accounts ayant account_type = "Savings"
SELECT * FROM accounts WHERE account_type = 'savings';

-- Transactions avec amount ≥ 500
SELECT * FROM transactions WHERE amount >= 500;

-- Transactions amount entre 100 et 1000
SELECT * FROM transaction WHERE amount BETWEEN 100 AND 1000;

-- Accounts du customer_id = 1
SELECT * FROM accounts WHERE customer_id = 1;

-- Accounts triés par balance (croissant)
SELECT * FROM accounts ORDER BY balance ASC;

-- Transactions triées par amount (décroissant)
SELECT * FROM transactions ORDER BY amount DESC;

-- Les 5 plus grandes transactions
SELECT * FROM transactions ORDER BY amount DESC LIMIT 5;

-- Toutes les transactions triées par date décroissante
SELECT * FROM transactions ORDER BY transaction_date DESC;

-- Les 3 dernières transactions
SELECT * FROM transactions ORDER BY transaction_date DESC LIMIT 3;

-- Chaque account avec le nom du customer et du advisor
SELECT 
    a.id AS account_id,
    a.account_number,
    a.balance,
    c.full_name AS customer_name,
    ad.full_name AS advisor_name
FROM accounts a
JOIN customers c ON a.customer_id = c.id
JOIN advisors ad ON a.advisor_id = ad.id;

