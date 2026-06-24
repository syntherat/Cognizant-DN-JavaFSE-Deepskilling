-- Schema Setup: Customers & Loans

CREATE TABLE Customers (
    CustomerID   NUMBER PRIMARY KEY,
    CustomerName VARCHAR2(100) NOT NULL,
    DOB          DATE NOT NULL,
    Balance      NUMBER(15, 2) DEFAULT 0,
    IsVIP        VARCHAR2(5)   DEFAULT 'FALSE'
);

CREATE TABLE Loans (
    LoanID       NUMBER PRIMARY KEY,
    CustomerID   NUMBER NOT NULL,
    InterestRate NUMBER(5, 2) NOT NULL,
    DueDate      DATE NOT NULL,
    CONSTRAINT fk_customer FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Sample Data

INSERT INTO Customers VALUES (1,  'Rajesh Kumar',   DATE '1955-03-14', 15000.00, 'FALSE');
INSERT INTO Customers VALUES (2,  'Priya Sharma',   DATE '1990-07-22',  8500.00, 'FALSE');
INSERT INTO Customers VALUES (3,  'Arjun Mehta',    DATE '1958-11-05', 22000.00, 'FALSE');
INSERT INTO Customers VALUES (4,  'Sneha Iyer',     DATE '1985-01-30',  4200.00, 'FALSE');
INSERT INTO Customers VALUES (5,  'Mohan Das',      DATE '1950-06-18', 11500.00, 'FALSE');
INSERT INTO Customers VALUES (6,  'Kavita Nair',    DATE '1995-09-11',  3000.00, 'FALSE');
INSERT INTO Customers VALUES (7,  'Suresh Pillai',  DATE '1952-04-25', 19800.00, 'FALSE');
INSERT INTO Customers VALUES (8,  'Anita Roy',      DATE '1988-12-03',  9900.00, 'FALSE');

INSERT INTO Loans VALUES (101, 1, 10.50, SYSDATE + 15);
INSERT INTO Loans VALUES (102, 2, 12.00, SYSDATE + 90);
INSERT INTO Loans VALUES (103, 3,  9.75, SYSDATE + 10);
INSERT INTO Loans VALUES (104, 4, 11.25, SYSDATE + 45);
INSERT INTO Loans VALUES (105, 5, 10.00, SYSDATE + 25);
INSERT INTO Loans VALUES (106, 6, 13.50, SYSDATE + 5);
INSERT INTO Loans VALUES (107, 7,  8.50, SYSDATE + 60);
INSERT INTO Loans VALUES (108, 8, 11.00, SYSDATE + 20);

COMMIT;
