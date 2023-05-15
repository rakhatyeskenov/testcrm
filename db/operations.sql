UPDATE clients SET phone = '+1234567890' WHERE id = 1;

ALTER TABLE clients ADD COLUMN middle_name VARCHAR(50);

DELETE FROM clients WHERE id = 2;

UPDATE orders SET status = 'Отправлен' WHERE id = 1;

ALTER TABLE orders ALTER COLUMN total_amount TYPE DECIMAL(12, 2);

DELETE FROM orders WHERE id = 2;


