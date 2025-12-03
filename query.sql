use dbbankly;

--Insérer un nouveau customer
INSERT INTO customers (full_name, email, phone, registration_date)
VALUES ('New Customer', 'new@gmail.com', '0700000000', NOW());

-- Modifier le numéro de téléphone d’un customer
UPDATE customers SET phone = '0610101010' WHERE id = 1;

-- Afficher tous les customers
SELECT * FROM customers;

