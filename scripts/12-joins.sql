\c live024


-- DELETE FROM orders WHERE customer_id = 9;

INSERT INTO orders(customer_id, amount) VALUES(9, 1000);

-- SELECT * FROM customers as c
--  INNER JOIN  orders ON customer_id = c.id
--  WHERE c.id = 9
-- ;

-- SELECT * FROM customers as c
--  LEFT JOIN  orders ON customer_id = c.id
--  WHERE c.id = 9
-- ;


-- SELECT * FROM customers as c
--  RIGHT JOIN  orders ON customer_id = c.id
--  WHERE c.id = 9
-- ;


-- SELECT * FROM customers as c
--  FULL JOIN  orders ON customer_id = c.id
--  WHERE c.id = 9
-- ;


-- SELECT * FROM customers as c
--  CROSS JOIN  orders
--  WHERE c.id = 9
-- ;
