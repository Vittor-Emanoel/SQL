-- char (CHARACTER)
-- varchar (VARIABLE CHARACTER)
DROP TABLE IF EXISTS customers;
CREATE TABLE IF NOT EXISTS customers (
  -- Auto increment
  id SERIAL,
  first_name VARCHAR(20),
  last_name VARCHAR(60),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

