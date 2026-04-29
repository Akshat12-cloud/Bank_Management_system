CREATE TABLE BANK_DATA_UNF (
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
    Customer_Address VARCHAR(200)
);

--❌ Problems:
--Repeating groups
--Redundancy
--Update anomalies
