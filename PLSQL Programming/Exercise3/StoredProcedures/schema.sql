-- Schema Setup: Accounts, Employees, Departments

CREATE TABLE Accounts (
    AccountID   NUMBER PRIMARY KEY,
    CustomerID  NUMBER NOT NULL,
    AccountType VARCHAR2(20) NOT NULL,   -- 'SAVINGS' or 'CHECKING'
    Balance     NUMBER(15, 2) DEFAULT 0
);

CREATE TABLE Departments (
    DepartmentID   NUMBER PRIMARY KEY,
    DepartmentName VARCHAR2(100) NOT NULL
);

CREATE TABLE Employees (
    EmployeeID   NUMBER PRIMARY KEY,
    EmployeeName VARCHAR2(100) NOT NULL,
    DepartmentID NUMBER NOT NULL,
    Salary       NUMBER(10, 2) NOT NULL,
    CONSTRAINT fk_dept FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

-- Sample Data

-- Accounts
INSERT INTO Accounts VALUES (1001, 1, 'SAVINGS',  25000.00);
INSERT INTO Accounts VALUES (1002, 2, 'CHECKING',  8000.00);
INSERT INTO Accounts VALUES (1003, 3, 'SAVINGS',  15000.00);
INSERT INTO Accounts VALUES (1004, 4, 'SAVINGS',   5000.00);
INSERT INTO Accounts VALUES (1005, 5, 'CHECKING', 12000.00);
INSERT INTO Accounts VALUES (1006, 6, 'SAVINGS',  30000.00);

-- Departments
INSERT INTO Departments VALUES (10, 'Engineering');
INSERT INTO Departments VALUES (20, 'Marketing');
INSERT INTO Departments VALUES (30, 'Operations');

-- Employees
INSERT INTO Employees VALUES (1, 'Amit Verma',    10, 75000.00);
INSERT INTO Employees VALUES (2, 'Neha Joshi',    10, 68000.00);
INSERT INTO Employees VALUES (3, 'Ravi Shankar',  20, 55000.00);
INSERT INTO Employees VALUES (4, 'Pooja Reddy',   20, 52000.00);
INSERT INTO Employees VALUES (5, 'Kiran Desai',   30, 48000.00);
INSERT INTO Employees VALUES (6, 'Sunita Patil',  30, 51000.00);
INSERT INTO Employees VALUES (7, 'Deepak Gupta',  10, 72000.00);

COMMIT;
