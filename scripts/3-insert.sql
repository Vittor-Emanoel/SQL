\c pg1

-- INSERT INTO customers VALUES(DEFAULT, 'Vittor', 'Emanoel', DEFAULT, 'vittor@test.com')

-- INSERT INTO customers VALUES(DEFAULT, 'Vittor', 'Emanoel', DEFAULT, 'vittor@test.com')

-- INSERT INTO customers VALUES (DEFAULT, 'Gustavo', 'Ramos', DEFAULT, 'guga@.com');

-- INSERT INTO customers VALUES(DEFAULT, 'Beatriz', 'Galdino', DEFAULT, 'bibia@com')


-- MANY VALUES: BATCH INSERTS
-- INSERT INTO customers(first_name, last_name, email)
--   VALUES
--   ('Javacripto', 'Silva', 'javacripto@.com'),
--   ('Rose', 'Silva', 'rose@com'),
--   ('Reacto', 'Silva', 'reacto@.com'),
--   ('Dora', 'Silva', 'dora@.com')
--   ;

-- INSERT INTO customers(first_name, last_name, email)
--   VALUES ('Javacripto', 'Silva', 'javacripto@.com')
--   RETURNING id, created_at ;


-- INSERT INTO customers(first_name, last_name, email)
--   VALUES ('Javacripto', 'Silva', 'javacripto@.com')


-- POPULATE DATABASE - SEED
DO $$
DECLARE
  i INT := 1;
  created_customers INT := 0;
  customer_id INT;
BEGIN
  WHILE i <= 20 LOOP 
    INSERT INTO customers(first_name, last_name, email) 
    VALUES ('Customer-' || i, 'Doe-'|| i, 'customer.' || i || '@email.com')
    RETURNING id INTO customer_id;
  
    INSERT INTO orders(amount, customer_id)
    VALUES(RANDOM() * 1000, customer_id);

    i := i + 1;
    created_customers := created_customers + 1;
  END LOOP;

  RAISE NOTICE '% customers successfully created', created_customers;
END $$;