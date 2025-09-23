\c live024

-- CREATE OR REPLACE FUNCTION set_updated_at_trigger() RETURNS TRIGGER
-- AS $$
--     BEGIN
--     NEW.updated_at = CURRENT_TIMESTAMP;
--     RETURN NEW;
--     END;
-- $$ LANGUAGE plpgsql;


-- CREATE TRIGGER customers_update_updated_at
-- BEFORE UPDATE ON customers
-- FOR EACH ROW EXECUTE FUNCTION set_updated_at_trigger()

-- ALTER TABLE customers ADD COLUMN updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP;


SELECT * FROM customers ORDER BY id desc LIMIT 1;

UPDATE customers SET first_name = "vittor" WHERE id = 33;
-- INSERT INTO customers(first_name, email) VALUES ('trigger', 'tg@gmail.COLUMN');
