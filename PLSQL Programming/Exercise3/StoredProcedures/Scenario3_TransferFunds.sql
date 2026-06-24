-- Scenario 3: Transfer a specified amount between two accounts.
--             Checks for sufficient balance before deducting.
-- Parameters:
--   p_from_account - source account ID
--   p_to_account   - destination account ID
--   p_amount       - amount to transfer

SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE TransferFunds(
    p_from_account IN Accounts.AccountID%TYPE,
    p_to_account   IN Accounts.AccountID%TYPE,
    p_amount       IN NUMBER
) AS
    v_source_balance Accounts.Balance%TYPE;
BEGIN
    -- Basic input validation
    IF p_amount <= 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Transfer amount must be greater than zero.');
    END IF;

    IF p_from_account = p_to_account THEN
        RAISE_APPLICATION_ERROR(-20002, 'Source and destination accounts cannot be the same.');
    END IF;

    -- Lock the source row and read its balance
    SELECT Balance INTO v_source_balance
    FROM   Accounts
    WHERE  AccountID = p_from_account
    FOR UPDATE;

    IF v_source_balance < p_amount THEN
        RAISE_APPLICATION_ERROR(
            -20003,
            'Insufficient balance. Available: ' || v_source_balance ||
            ', Requested: ' || p_amount
        );
    END IF;

    -- Debit source account
    UPDATE Accounts
    SET    Balance = Balance - p_amount
    WHERE  AccountID = p_from_account;

    -- Credit destination account
    UPDATE Accounts
    SET    Balance = Balance + p_amount
    WHERE  AccountID = p_to_account;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE(
        'Transfer successful: $' || p_amount ||
        ' transferred from Account ' || p_from_account ||
        ' to Account ' || p_to_account || '.'
    );

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Error: Source account ' || p_from_account || ' not found.');
        RAISE;
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Transfer failed: ' || SQLERRM);
        RAISE;
END TransferFunds;
/


-- Test Execution

-- Balances before transfer
SELECT AccountID, AccountType, Balance FROM Accounts WHERE AccountID IN (1001, 1003);

-- Valid transfer: $5000 from Account 1001 to Account 1003
BEGIN
    TransferFunds(p_from_account => 1001, p_to_account => 1003, p_amount => 5000);
END;
/

-- Balances after transfer
SELECT AccountID, AccountType, Balance FROM Accounts WHERE AccountID IN (1001, 1003);

-- Test: insufficient balance (try to transfer $50000 from Account 1004 which has $5000)
BEGIN
    TransferFunds(p_from_account => 1004, p_to_account => 1001, p_amount => 50000);
END;
/

-- Test: same account
BEGIN
    TransferFunds(p_from_account => 1001, p_to_account => 1001, p_amount => 100);
END;
/
