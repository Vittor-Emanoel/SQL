\c live024


-- DROP TABLE bank_accounts;
-- CREATE Table bank_accounts(
--     id SERIAL PRIMARY KEY,
--     user_id INT,
--     balance NUMERIC(10, 2) CHECK (balance >= 0),
--     updated_by INT
-- );

-- CREATE TABLE bank_accounts_transactions_logs(
--     id SERIAL PRIMARY KEY,
--     bank_account_id INT REFERENCES bank_accounts(id),
--     updated_by INT,
--     previuos_balance NUMERIC(10, 2),
--     current_balance NUMERIC(10, 2)
-- )

CREATE OR REPLACE FUNCTION log_bank_account_tx_trigger() RETURNS TRIGGER
AS $$
    BEGIN

    INSERT INTO bank_accounts_transactions_logs(bank_account_id, updated_by, previuos_balance, current_balance)
        VALUES (
            NEW.id,
            NEW.updated_by,
            OLD.balance,
            NEW.balance
        );
    RETURN NEW;
    END;
$$ LANGUAGE plpgsql;



-- CREATE TRIGGER bank_accounts_tx_logs_trigger
-- AFTER UPDATE OR INSERT ON bank_accounts
-- FOR EACH ROW EXECUTE FUNCTION log_bank_account_tx_trigger()

--     bank_account_id INT REFERENCES bank_accounts(id),
--     updated_by INT,
--     previuos_balance NUMERIC(10, 2),
--     current_balance NUMERIC(10, 2)
-- INSERT INTO bank_accounts(user_id, balance) VALUES (1, 1000);

-- SELECT * FROM bank_accounts;

SELECT * FROM bank_accounts_transactions_logs;
