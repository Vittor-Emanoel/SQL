\c live024

-- -- Pegar todos os dados dos clientes e total gastos;
-- SELECT cus.*, SUM(ord.amount) FROM customers as cus
--   LEFT JOIN orders as ord ON ord.customer_id = cus.id
--   GROUP BY cus.id
--   ORDER BY id desc
-- ;


-- Pegar todos os dados dos clientes que gastaram mais do que a media;



-- SUBQUERIES/INNER QUERIES
-- SELECT AVG(amount) FROM orders

-- SELECT cus.*, SUM(ord.amount) FROM customers as cus
--   LEFT JOIN orders as ord ON ord.customer_id = cus.id
--   GROUP BY cus.id
--   HAVING(SUM(ord.amount)) > (SELECT AVG(amount) FROM orders)
--   ORDER BY id desc
-- ;




SELECT * FROM orders WHERE customer_id IN (
    SELECT id FROM customers WHERE first_name LIKE '%5%'
);
