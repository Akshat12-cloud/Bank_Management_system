--🔷 Database Transactions
--A transaction is a logical unit of work that ensures reliable execution of database operations.
--Example: Money transfer between two accounts.
SQL
START TRANSACTION;
UPDATE Account
SET Balance = Balance - 5000
WHERE Account_No = 'A101';
UPDATE Account
SET Balance = Balance + 5000
WHERE Account_No = 'A102';
COMMIT;
If any error occurs:
SQL
ROLLBACK;
--🔷 ACID Properties
--1. Atomicity
--Ensures all operations in a transaction are completed successfully or none are applied.
--2. Consistency
--Ensures database remains in a valid state before and after the transaction.
--3. Isolation
--Ensures multiple transactions do not affect each other.
--4. Durability
--Ensures committed transactions are permanently stored even after system failure.
