\c live024




EXPLAIN ANALYZE VERBOSE SELECT * FROM CUSTOMERS WHERE first_name = 'Customer-10';

-- EXPLAIN ANALYZE VERBOSE SELECT * FROM customers WHERE id = 1

-- EXPLAIN ANALYZE VERBOSE SELECT * FROM CUSTOMERS WHERE email= 'customer.10@example.com';
--
--
-- CREATE INDEX customers_first_name_idx ON customers(first_name);
-- SELECT * FROM pg_indexes WHERE tablename = 'customers';
