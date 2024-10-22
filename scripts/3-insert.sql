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

INSERT INTO customers(first_name, last_name, email)
  VALUES ('Javacripto', 'Silva', 'javacripto@.com')
  RETURNING id, created_at ;

