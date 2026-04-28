-- Create Database SQL
CREATE DATABASE bank_management_system;
USE bank_management_system;
--1. BANK Table SQL
CREATE TABLE BANK (
    Code INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Address VARCHAR(200) NOT NULL
);
-- 2. BRANCH Table SQL
CREATE TABLE BRANCH (
    Branch_id INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Address VARCHAR(200) NOT NULL,
    Bank_Code INT,
    FOREIGN KEY (Bank_Code) REFERENCES BANK(Code)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
-- 3. ACCOUNT Table SQL
CREATE TABLE ACCOUNT (
    Account_No INT PRIMARY KEY,
    Acc_Type VARCHAR(50) NOT NULL,
    Balance DECIMAL(12,2) NOT NULL,
    Branch_id INT,
    FOREIGN KEY (Branch_id) REFERENCES BRANCH(Branch_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
-- 4. CUSTOMER Table SQL
CREATE TABLE CUSTOMER (
    Custid INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Phone VARCHAR(15),
    Address VARCHAR(200)
);
-- 5. LOAN Table SQL
CREATE TABLE LOAN (
    Loan_id INT PRIMARY KEY,
    Loan_type VARCHAR(50) NOT NULL,
    Amount DECIMAL(12,2) NOT NULL,
    Branch_id INT,
    FOREIGN KEY (Branch_id) REFERENCES BRANCH(Branch_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
-- 6. HOLD_BY Table (Composite Primary Key)SQL
CREATE TABLE HOLD_BY (
    Account_No INT,
    Custid INT,
    PRIMARY KEY (Account_No, Custid),
    FOREIGN KEY (Account_No) REFERENCES ACCOUNT(Account_No)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (Custid) REFERENCES CUSTOMER(Custid)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
-- 7. AVAILED_BY Table (Composite Primary Key)SQL
CREATE TABLE AVAILED_BY (
    Loan_id INT,
    Custid INT,
    PRIMARY KEY (Loan_id, Custid),
    FOREIGN KEY (Loan_id) REFERENCES LOAN(Loan_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (Custid) REFERENCES CUSTOMER(Custid)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
