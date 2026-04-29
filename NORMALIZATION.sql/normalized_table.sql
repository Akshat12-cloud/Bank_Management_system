--🔷 STEP 1 – FIRST NORMAL FORM (1NF)
--✔ Atomic values
--✔ No repeating groups
-- one large table but structured:

CREATE TABLE BANK_DATA_1NF (
    Code VARCHAR(10),
    Bank_Name VARCHAR(100),
    Bank_Address VARCHAR(200),

    Branch_id VARCHAR(10),
    Branch_Name VARCHAR(100),
    Branch_Address VARCHAR(200),

    Account_No VARCHAR(20),
    Acc_Type VARCHAR(50),
    Balance DECIMAL(12,2),

    Loan_id VARCHAR(20),
    Loan_type VARCHAR(50),
    Amount DECIMAL(12,2),

    Custid VARCHAR(20),
    Customer_Name VARCHAR(100),
    Phone VARCHAR(15),
    Customer_Address VARCHAR(200),

    PRIMARY KEY (Account_No, Loan_id, Custid)
);
--❌ Still has partial dependency.
--🔷 STEP 2 – SECOND NORMAL FORM (2NF)
--✔ Remove partial dependency
--✔ Separate entities
--1️⃣ Bank Table
--SQL
CREATE TABLE Bank (
    Code VARCHAR(10) PRIMARY KEY,
    Name VARCHAR(100),
    Address VARCHAR(200)
);
--2️⃣ Branch Table
--SQL
CREATE TABLE Branch (
    Branch_id VARCHAR(10) PRIMARY KEY,
    Name VARCHAR(100),
    Address VARCHAR(200),
    Code VARCHAR(10),
    FOREIGN KEY (Code) REFERENCES Bank(Code)
);
--3️⃣ Account Table
--SQL
CREATE TABLE Account (
    Account_No VARCHAR(20) PRIMARY KEY,
    Acc_Type VARCHAR(50),
    Balance DECIMAL(12,2),
    Branch_id VARCHAR(10),
    FOREIGN KEY (Branch_id) REFERENCES Branch(Branch_id)
);
--4️⃣ Loan Table
--SQL
CREATE TABLE Loan (
    Loan_id VARCHAR(20) PRIMARY KEY,
    Loan_type VARCHAR(50),
    Amount DECIMAL(12,2),
    Branch_id VARCHAR(10),
    FOREIGN KEY (Branch_id) REFERENCES Branch(Branch_id)
);
--5️⃣ Customer Table
--SQL
CREATE TABLE Customer (
    Custid VARCHAR(20) PRIMARY KEY,
    Name VARCHAR(100),
    Phone VARCHAR(15),
    Address VARCHAR(200)
);
--6️⃣ Hold_By (M:N relationship)
--SQL
CREATE TABLE Hold_By (
    Account_No VARCHAR(20),
    Custid VARCHAR(20),
    PRIMARY KEY (Account_No, Custid),
    FOREIGN KEY (Account_No) REFERENCES Account(Account_No),
    FOREIGN KEY (Custid) REFERENCES Customer(Custid)
);
--7️⃣ Available_By (M:N relationship)
--SQL
CREATE TABLE Available_By (
    Loan_id VARCHAR(20),
    Custid VARCHAR(20),
    PRIMARY KEY (Loan_id, Custid),
    FOREIGN KEY (Loan_id) REFERENCES Loan(Loan_id),
    FOREIGN KEY (Custid) REFERENCES Customer(Custid)
);
--✔ Now all non-key attributes fully depend on primary key
--✔ Database is in 2NF
--Now 3NF 
CREATE TABLE Bank (
    Code VARCHAR(10) PRIMARY KEY,
    Name VARCHAR(100),
    Address VARCHAR(200)
);

CREATE TABLE Branch (
    Branch_id VARCHAR(10) PRIMARY KEY,
    Name VARCHAR(100),
    Address VARCHAR(200),
    Code VARCHAR(10),
    FOREIGN KEY (Code) REFERENCES Bank(Code)
);

CREATE TABLE Account (
    Account_No VARCHAR(20) PRIMARY KEY,
    Acc_Type VARCHAR(50),
    Balance DECIMAL(12,2),
    Branch_id VARCHAR(10),
    FOREIGN KEY (Branch_id) REFERENCES Branch(Branch_id)
);

CREATE TABLE Loan (
    Loan_id VARCHAR(20) PRIMARY KEY,
    Loan_type VARCHAR(50),
    Amount DECIMAL(12,2),
    Branch_id VARCHAR(10),
    FOREIGN KEY (Branch_id) REFERENCES Branch(Branch_id)
);

CREATE TABLE Customer (
    Custid VARCHAR(20) PRIMARY KEY,
    Name VARCHAR(100),
    Phone VARCHAR(15),
    Address VARCHAR(200)
);

CREATE TABLE Hold_By (
    Account_No VARCHAR(20),
    Custid VARCHAR(20),
    PRIMARY KEY (Account_No, Custid),
    FOREIGN KEY (Account_No) REFERENCES Account(Account_No),
    FOREIGN KEY (Custid) REFERENCES Customer(Custid)
);

CREATE TABLE Available_By (
    Loan_id VARCHAR(20),
    Custid VARCHAR(20),
    PRIMARY KEY (Loan_id, Custid),
    FOREIGN KEY (Loan_id) REFERENCES Loan(Loan_id),
    FOREIGN KEY (Custid) REFERENCES Customer(Custid)
);
--BCNF is same as 3NF
