-- Scenario 3: Send reminder messages for all loans that are
--             due within the next 30 days.

SET SERVEROUTPUT ON;

DECLARE
    CURSOR c_due_loans IS
        SELECT c.CustomerName,
               l.LoanID,
               l.DueDate,
               TRUNC(l.DueDate - SYSDATE) AS DaysLeft
        FROM   Loans l
        JOIN   Customers c ON c.CustomerID = l.CustomerID
        WHERE  l.DueDate BETWEEN SYSDATE AND SYSDATE + 30
        ORDER  BY l.DueDate;

    v_count NUMBER := 0;

BEGIN
    FOR rec IN c_due_loans LOOP
        v_count := v_count + 1;

        DBMS_OUTPUT.PUT_LINE(
            'REMINDER >> Dear ' || rec.CustomerName ||
            ', your Loan (ID: ' || rec.LoanID || ')' ||
            ' is due on ' || TO_CHAR(rec.DueDate, 'DD-MON-YYYY') ||
            ' (' || rec.DaysLeft || ' day(s) remaining).'
        );
    END LOOP;

    IF v_count = 0 THEN
        DBMS_OUTPUT.PUT_LINE('No loans due in the next 30 days.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('--- ' || v_count || ' reminder(s) sent. ---');
    END IF;

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/
