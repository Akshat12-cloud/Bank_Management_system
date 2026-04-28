-- 1. Insert into BANK
INSERT INTO BANK (Code, Name, Address) VALUES
(101, 'State Bank', 'Delhi'),
(102, 'HDFC Bank', 'Mumbai');

-- 2. Insert into BRANCH
INSERT INTO BRANCH (Branch_id, Name, Address, Bank_Code) VALUES
(1, 'Connaught Branch', 'Connaught Place, Delhi', 101),
(2, 'Karol Bagh Branch', 'Karol Bagh, Delhi', 101),
(3, 'Andheri Branch', 'Andheri East, Mumbai', 102);

-- 3. Insert into CUSTOMER
INSERT INTO CUSTOMER (Custid, Name, Phone, Address) VALUES
(1001, 'Rahul Sharma', '9876543210', 'Delhi'),
(1002, 'Priya Singh', '9123456780', 'Mumbai'),
(1003, 'Amit Verma', '9988776655', 'Noida');

-- 4. Insert into ACCOUNT
INSERT INTO ACCOUNT (Account_No, Acc_Type, Balance, Branch_id) VALUES
(5001, 'Savings', 25000.00, 1),
(5002, 'Current', 50000.00, 2),
(5003, 'Savings', 15000.00, 3);

-- 5. Insert into LOAN
INSERT INTO LOAN (Loan_id, Loan_type, Amount, Branch_id) VALUES
(9001, 'Home Loan', 500000.00, 1),
(9002, 'Car Loan', 300000.00, 3);

-- 6. Insert into HOLD_BY (Account–Customer Relationship)
INSERT INTO HOLD_BY (Account_No, Custid) VALUES
(5001, 1001),
(5002, 1002),
(5003, 1003),
(5001, 1003);  
-- Joint account example

-- 7. Insert into AVAILED_BY (Loan–Customer Relationship)
INSERT INTO AVAILED_BY (Loan_id, Custid) VALUES
(9001, 1001),
(9002, 1002);
