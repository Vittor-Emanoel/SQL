 \c live024

-- constraint: restricao

-- INSERT INTO customers(first_name) VALUES('vanessa');

-- SELECT * FROM customers ORDER BY id Desc;

-- ALTER TABLE customers ALTER COLUMN email SET NOT NULL;
--
-- ALTER TABLE customers ADD CONSTRAINT customers_email_unique UNIQUE(email);

-- ALTER TABLE customers DROP CONSTRAINT customers_email_unique;
--
-- ALTER TABLE orders ADD CHECK(amount >= 0);

-- ALTER TABLE customers ALTER COLUMN id PRIMARY KEY();

-- INSERT INTO orders(customer_id, amount) VALUES(29, 10);

-- SELECT constraint_name, constraint_type, table_name FROM information_schema.table_constraints WHERE table_schema =  'public';

-- INSERT INTO customers(first_name, email) VALUES('vanessa1', 'zezin@gmail.com');
