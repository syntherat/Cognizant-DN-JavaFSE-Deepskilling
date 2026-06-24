-- Scenario 1: Apply 1% monthly interest to all savings accounts.

SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE ProcessMonthlyInterest AS
    v_updated NUMBER;
BEGIN
    UPDATE Accounts
    SET    Balance = Balance + (Balance * 0.01)
    WHERE  AccountType = 'SAVINGS';

    v_updated := SQL%ROWCOUNT;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Monthly interest applied to ' || v_updated || ' savings account(s).');

EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Error applying interest: ' || SQLERRM);
        RAISE;
END ProcessMonthlyInterest;
/


-- Test Execution

-- Balances before
SELECT AccountID, AccountType, Balance FROM Accounts WHERE AccountType = 'SAVINGS';

BEGIN
    ProcessMonthlyInterest;
END;
/

-- Balances after (each should be 1% higher)
SELECT AccountID, AccountType, Balance FROM Accounts WHERE AccountType = 'SAVINGS';
