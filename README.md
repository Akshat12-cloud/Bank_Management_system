# 🏦 Bank Management System (DBMS Project)

## 📌 Project Overview

The **Bank Management System** is a Database Management System (DBMS) project developed to manage banking operations such as customers, accounts, loans, branches, and banks.

This project demonstrates the practical implementation of:

* ER Modeling
* Schema Conversion
* Normalization (up to BCNF)
* SQL Queries (Basic to Advanced)
* Transactions & ACID Properties
* Concurrency Control
* Hybrid SQL–NoSQL Integration (Advanced Module)

---

## 🎯 Objectives

* Design an efficient database schema for a banking system
* Implement relational algebra and complex SQL queries
* Maintain data integrity using constraints and triggers
* Demonstrate transaction management (COMMIT/ROLLBACK)
* Implement concurrency control mechanisms
* Apply normalization techniques

---

## 🗂 Database Entities

The system consists of the following main tables:

* **BANK**
* **BRANCH**
* **ACCOUNT**
* **CUSTOMER**
* **LOAN**
* **HOLD_BY** (Account–Customer relationship)
* **AVAILED_BY** (Loan–Customer relationship)

---

## 🏗 ER Diagram

The ER diagram represents:

* One Bank has many Branches
* One Branch maintains many Accounts
* One Branch offers many Loans
* Customers can hold multiple Accounts
* Customers can avail multiple Loans

(Refer to `module1/ER_diagram.pdf`)

---

## 🛠 Technologies Used

* MySQL / PostgreSQL
* SQL (DDL, DML, DCL, TCL)
* Git & GitHub
* Draw.io (for ER diagram)

---

## 📁 Project Structure

```
Bank_Management_System/
│
├── module1/
│   ├── ER_diagram.pdf
│   ├── schema.sql
│   └── sample_data.sql
│
├── module2/
│   ├── queries.sql
│   └── query_documentation.pdf
│
├── module3/
│   ├── normalization.sql
│   └── fd_analysis.pdf
│
├── module4/
│   ├── transactions.sql
│   └── acid_tests.sql
│
├── module5/
│   ├── concurrency_scripts.sql
│   └── performance_analysis.pdf
│
├── module6/
│   ├── application_code/
│   ├── mongodb_scripts/
│   └── api_documentation.pdf
│
└── README.md
```

---

## 🔑 Key Features

### ✅ Data Integrity

* Primary Keys
* Foreign Keys
* Composite Keys
* CHECK Constraints
* Triggers

### ✅ Advanced SQL

* Joins (INNER, LEFT, RIGHT)
* Aggregate Functions
* GROUP BY & HAVING
* Subqueries
* Views

### ✅ Transaction Management

* COMMIT
* ROLLBACK
* SAVEPOINT
* ACID property demonstration

### ✅ Concurrency Control

* Lock-based concurrency
* WAIT / NOWAIT scenarios

---

## 🚀 How to Run the Project

1. Clone the repository:

   ```
   git clone <repository_link>
   ```
2. Open MySQL/PostgreSQL.
3. Run:

   ```
   schema.sql
   ```
4. Insert sample data:

   ```
   sample_data.sql
   ```
5. Execute queries from:

   ```
   queries.sql
   ```

---

## 📊 Sample Functionalities

* Create new bank and branch
* Open customer account
* Deposit / Withdraw money
* Apply for loan
* View account details
* Generate loan reports

---

## 🧠 Concepts Implemented

* ER to Relational Schema Conversion
* Functional Dependency Analysis
* 1NF, 2NF, 3NF, BCNF
* ACID Properties
* Locking & Concurrency
* Hybrid SQL–NoSQL integration (advanced module)

---

## 📚 Academic Purpose

This project is developed as part of the **Database Management System** course under B.Tech CSE curriculum.

---

## 👨‍💻 Author

**Your Name**
B.Tech CSE
IILM University Greater Noida
Year: 2025–2028

---

## 📌 Conclusion

The Bank Management System successfully demonstrates core DBMS concepts through real-world banking operations. It ensures data consistency, integrity, and efficient management of banking records.

---

⭐ If you found this project helpful, feel free to explore and contribute!
