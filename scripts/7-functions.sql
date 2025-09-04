\c live024;


-- Concat
-- SELECT id, first_name, last_name FROM customers;

--
-- SELECT id, Concat(first_name, ' ', last_name) as full_name FROM customers;

--INSERT INTO orders(customer_id, amount) VALUES (2, 50);

-- COUNT
-- SELECT COUNT(*) FROM customers;
--

-- SELECT SUM(amount) as total_revenue,
--       COUNT(id) as total_orders FROM orders;


 SELECT customer_id,
        SUM(amount) as total_revenue,
        COUNT(id) as total_orders,
        MAX(amount) as max_order,
        MIN(amount) as min_order,
        ROUND(AVG(amount), 2) as average_ticket
       FROM orders
       GROUP BY customer_id
       HAVING COUNT(id) > 1
       ORDER BY customer_id
       ;





      -- SELECT customer_id, COUNT(*) as gasto FROM orders
      --   GROUP BY customer_id
      --   Order BY customer_id ASC
      -- ;
