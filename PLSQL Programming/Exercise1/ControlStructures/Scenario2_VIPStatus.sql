-- Scenario 2: Promote customers to VIP status if their
--             account balance exceeds $10,000.

SET SERVEROUTPUT ON;

DECLARE
    CURSOR c_customers IS
        SELECT CustomerID,
               CustomerName,
               Balance
        FROM   Customers;

BEGIN
    FOR rec IN c_customers LOOP
        IF rec.Balance > 10000 THEN
            UPDATE Customers
            SET    IsVIP = 'TRUE'
            WHERE  CustomerID = rec.CustomerID;

            DBMS_OUTPUT.PUT_LINE(
                rec.CustomerName ||
                ' (Balance: $' || rec.Balance || ')' ||
                ' --> Promoted to VIP'
            );
        ELSE
            DBMS_OUTPUT.PUT_LINE(
                rec.CustomerName ||
                ' (Balance: $' || rec.Balance || ')' ||
                ' --> Not eligible'
            );
        END IF;
    END LOOP;

    COMMIT;
    DBMS_OUTPUT.PUT_LINE('--- VIP status update complete. ---');

EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/
