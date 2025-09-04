 \c live024

 -- DROP VIEW IF EXISTS customers_summary;

 CREATE OR REPLACE VIEW customers_summary AS
 SELECT customer_id,
        SUM(amount)::FLOAT as total_revenue,
        COUNT(id)::INT as total_orders,
        MAX(amount)::FLOAT as max_order,
        MIN(amount)::FLOAT as min_order,
        ROUND(AVG(amount), 2)::FLOAT as average_ticket
       FROM orders
       GROUP BY customer_id
       ORDER BY customer_id
       ;

-- ALTER VIEW customers_summary RENAME total_orders FROM "totalOrders";
-- SELECT * FROM customers_summary
-- ORDER BY total_revenue DESC;

-- SELECT * from pg_views where viewname = 'customers_summary';
