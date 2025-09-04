\c pg1

-- * = ALL
-- SELECT * FROM customers;

-- SELECT id, first_name, last_name, email FROM customers;

-- SELECT id AS Id, first_name AS "firstName", last_name, email FROM customers;

-- select * from customers;

--INSERT INTO customers(first_name) VALUES('Ana');

-- select * from customers 
-- ORDER BY first_name ASC
-- --LIMIT 3
-- OFFSET 3
-- ;

-- select * from customers 
--   WHERE id > 10 AND last_name = 'Doe-19'
--  ;

--  select * from customers 
--   WHERE id > 10 OR last_name = 'Doe-19'
--  ;


-- select * from customers
--   WHERE id in(1, 2, 3) 

-- ;

-- select * from customers 
--   WHERE id BETWEEN 1 AND 2
--  ;

--  select * from customers 
--   WHERE id NOT BETWEEN 1 AND 2
--  ;

-- select * from customers
-- where email is null;

-- full text search

-- select * from customers
-- where first_name like '%C%'

-- not case case sensitive
select * from customers ;
  -- where first_name ilike '%C%'
--  ;