🔷 Concurrency Control in Bank Management System

📌 Introduction

Concurrency Control is a mechanism used in DBMS to ensure that multiple transactions executed at the same time do not lead to data inconsistency.
In a Bank Management System, multiple users may perform operations like deposit, withdrawal, or money transfer simultaneously. Concurrency control ensures that the database remains accurate and consistent.


🏦 Real-World Example

Suppose:
Account Balance = ₹8,000

User A withdraws ₹5,000

User B also withdraws ₹5,000 at the same time
Without concurrency control:

Both transactions may read ₹8,000 and deduct ₹5,000.
Final balance becomes ₹3,000 ❌ (Incorrect)
Correct behavior:

Only one withdrawal should succeed.
Concurrency control prevents this problem.

⚠ Problems Without Concurrency Control
1️⃣ Lost Update Problem
Two transactions update the same data, and one update is lost.
2️⃣ Dirty Read
A transaction reads data that has not been committed by another transaction.
3️⃣ Non-Repeatable Read
A row is read twice in the same transaction and gives different values.
4️⃣ Phantom Read
New rows appear in the result set during the execution of a transaction.


🔐 Techniques Used for Concurrency Control
1️⃣ Lock-Based Protocol
Locks prevent other transactions from modifying data until the current transaction finishes.
Types of Locks:
Shared Lock (Read Lock)
Exclusive Lock (Write Lock)
Example:



SQL
START TRANSACTION;
SELECT * FROM Account
WHERE Account_No = 'A101'
FOR UPDATE;
UPDATE Account
SET Balance = Balance - 5000
WHERE Account_No = 'A101';
COMMIT;



2️⃣ Two-Phase Locking (2PL)

Two phases:
• Growing Phase – Locks are acquired
• Shrinking Phase – Locks are released
This ensures serializability of transactions.

3️⃣ Isolation Levels

Isolation levels control how transactions interact with each other.

SQL

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

Isolation Levels:
READ UNCOMMITTED
READ COMMITTED
REPEATABLE READ
SERIALIZABLE (Highest level of isolation)


🎯 Importance in Bank Management System
Concurrency control ensures:
-Accurate account balance
-No data corruption
-Safe simultaneous transactions
-Reliable banking operations
✅ Conclusion


Concurrency control is essential in a Bank Management System to maintain data consistency and prevent transaction conflicts when multiple users access the system at the same time.
