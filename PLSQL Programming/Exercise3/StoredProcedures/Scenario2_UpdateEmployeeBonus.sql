-- Scenario 2: Apply a bonus percentage to all employees
--             in a given department.
-- Parameters:
--   p_department_id  - the target department
--   p_bonus_percent  - bonus as a percentage (e.g. 10 = 10%)

SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE UpdateEmployeeBonus(
    p_department_id IN Employees.DepartmentID%TYPE,
    p_bonus_percent IN NUMBER
) AS
    v_dept_name  Departments.DepartmentName%TYPE;
    v_updated    NUMBER;
BEGIN
    -- Validate department exists
    BEGIN
        SELECT DepartmentName INTO v_dept_name
        FROM   Departments
        WHERE  DepartmentID = p_department_id;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            DBMS_OUTPUT.PUT_LINE('Department ID ' || p_department_id || ' does not exist.');
            RETURN;
    END;

    -- Validate bonus percentage
    IF p_bonus_percent <= 0 THEN
        DBMS_OUTPUT.PUT_LINE('Bonus percentage must be greater than 0.');
        RETURN;
    END IF;

    UPDATE Employees
    SET    Salary = Salary + (Salary * p_bonus_percent / 100)
    WHERE  DepartmentID = p_department_id;

    v_updated := SQL%ROWCOUNT;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE(
        v_updated || ' employee(s) in ' || v_dept_name ||
        ' received a ' || p_bonus_percent || '% bonus.'
    );

EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Error updating bonus: ' || SQLERRM);
        RAISE;
END UpdateEmployeeBonus;
/


-- Test Execution

-- Salaries before for Engineering (dept 10)
SELECT EmployeeID, EmployeeName, Salary FROM Employees WHERE DepartmentID = 10;

-- Apply 15% bonus to Engineering
BEGIN
    UpdateEmployeeBonus(p_department_id => 10, p_bonus_percent => 15);
END;
/

-- Salaries after
SELECT EmployeeID, EmployeeName, Salary FROM Employees WHERE DepartmentID = 10;

-- Test: invalid department
BEGIN
    UpdateEmployeeBonus(p_department_id => 99, p_bonus_percent => 10);
END;
/
