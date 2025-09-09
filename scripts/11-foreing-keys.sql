\c live024


-- INSERT INTO orders(customer_id, amount) VALUES (21212121, 10000);

-- DELETE FROM orders WHERE customer_id = 21212121;

ALTER TABLE orders ADD FOREIGN KEY(customer_id) REFERENCES customers(id)
ON UPDATE
ON DELETE
;
