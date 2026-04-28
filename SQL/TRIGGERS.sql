-- 1️ Prevent Negative Balance in ACCOUNT

-- A customer should not withdraw more than available balance.

DELIMITER $$

CREATE TRIGGER prevent_negative_balance
BEFORE UPDATE ON ACCOUNT
FOR EACH ROW
BEGIN
   IF NEW.Balance < 0 THEN
      SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'Balance cannot be negative';
   END IF;
END$$

DELIMITER ;
-- 2️ Automatically Deduct Loan Amount from Branch (Optional Logic)
--Example: If loan is inserted, check amount must be greater than 0.

DELIMITER $$

CREATE TRIGGER check_loan_amount
BEFORE INSERT ON LOAN
FOR EACH ROW
BEGIN
   IF NEW.Amount <= 0 THEN
      SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'Loan amount must be greater than zero';
   END IF;
END$$

DELIMITER ;
-- 3️ Prevent Duplicate Account Holder Entry (HOLD_BY)
--(Though composite PK already prevents it, this is good for viva explanation)

DELIMITER $$

CREATE TRIGGER prevent_duplicate_holdby
BEFORE INSERT ON HOLD_BY
FOR EACH ROW
BEGIN
   IF EXISTS (
      SELECT 1 FROM HOLD_BY
      WHERE Account_No = NEW.Account_No
      AND Custid = NEW.Custid
   ) THEN
      SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'Customer already linked to this account';
   END IF;
END$$

DELIMITER ;
-- 4️ Prevent Deleting Branch if Accounts Exist
DELIMITER $$

CREATE TRIGGER prevent_branch_delete
BEFORE DELETE ON BRANCH
FOR EACH ROW
BEGIN
   IF EXISTS (
      SELECT 1 FROM ACCOUNT
      WHERE Branch_id = OLD.Branch_id
   ) THEN
      SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'Cannot delete branch with existing accounts';
   END IF;
END$$

DELIMITER ;
-- 5️ Automatically Set Minimum Balance for Savings Account
--Example rule:
--Savings account must have minimum ₹1000
DELIMITER $$

CREATE TRIGGER check_minimum_balance
BEFORE INSERT ON ACCOUNT
FOR EACH ROW
BEGIN
   IF NEW.Acc_Type = 'Savings' AND NEW.Balance < 1000 THEN
      SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'Minimum balance for Savings account is 1000';
   END IF;
END$$
DELIMITER;
