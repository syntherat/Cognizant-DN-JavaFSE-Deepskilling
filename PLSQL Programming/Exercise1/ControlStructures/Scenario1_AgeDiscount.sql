-- Scenario 1: Apply 1% interest rate discount to customers
--             who are above 60 years old.

SET SERVEROUTPUT ON;

DECLARE
    CURSOR c_senior_loans IS
        SELECT c.CustomerID,
               c.CustomerName,
               TRUNC(MONTHS_BETWEEN(SYSDATE, c.DOB) / 12) AS Age,
               l.LoanID,
               l.InterestRate
        FROM   Customers c
        JOIN   Loans l ON l.CustomerID = c.CustomerID
        WHERE  TRUNC(MONTHS_BETWEEN(SYSDATE, c.DOB) / 12) > 60;

    v_new_rate Loans.InterestRate%TYPE;

BEGIN
    FOR rec IN c_senior_loans LOOP
        v_new_rate := rec.InterestRate - 1;

        UPDATE Loans
        SET    InterestRate = v_new_rate
        WHERE  LoanID = rec.LoanID;

        DBMS_OUTPUT.PUT_LINE(
            'Customer: ' || rec.CustomerName ||
            ' | Age: '   || rec.Age          ||
            ' | Old Rate: ' || rec.InterestRate || '%' ||
            ' | New Rate: ' || v_new_rate     || '%'
        );
    END LOOP;

    COMMIT;
    DBMS_OUTPUT.PUT_LINE('--- Discount update complete. ---');

EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/
