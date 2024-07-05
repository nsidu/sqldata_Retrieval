-- Create the database if it doesn't exist
CREATE DATABASE IF NOT EXISTS ExpenseTracker;

-- Use the database
USE ExpenseTracker;

-- Create the Expenses table with the DATE data type for the date column
CREATE TABLE IF NOT EXISTS Expenses ;

-- Insert sample data into the Expenses table
INSERT INTO Expenses (expense_id, amount, date, category)
VALUES (1, 25.50, '2024-04-10', 'Groceries'),
       (2, 72.89, '2024-04-15', 'Entertainment'),
       (3, 40.00, '2024-04-20', 'Transportation'),
       (4, 120.00, '2024-04-22', 'Rent'),
       (5, 38.99, '2024-04-25', 'Food');
       
      -- Retrieving All Expenses
       SELECT * FROM Expenses;


-- Retrieve specific columns: date, category, and amount
SELECT * FROM Expenses;
SELECT expense_id FROM Expenses;
SELECT amount FROM Expenses;
SELECT date FROM Expenses;
SELECT category FROM Expenses;


-- Filtering by Date Range
SELECT date
FROM Expenses 
WHERE date BETWEEN '2024-04-20' AND '2024-04-25';

-- Filtering by Category
SELECT * 
FROM Expenses
WHERE category = 'Entertainment';

-- Filtering with Comparison Operators
SELECT * 
FROM Expenses
WHERE amount > 50;


-- Combining Filters (AND)
SELECT * FROM Expenses
WHERE  category = 'Food'  AND   amount < 75 ;



-- Combining Filters (OR)
SELECT * FROM Expenses
WHERE category = 'Transportation' OR category = 'Groceries';


--  Filtering with NOT
SELECT * FROM Expenses
WHERE NOT category LIKE 'Rent';


-- Sorting by Amount
SELECT * FROM Expenses
ORDER BY amount DESC;


-- Sorting by Date and Category
SELECT * FROM Expenses
ORDER BY  date DESC, 
 category ASC;

-- Create the Income table
CREATE TABLE IF NOT EXISTS Income (
  expense_id INT PRIMARY KEY AUTO_INCREMENT,
  amount DECIMAL(10,2) NOT NULL,
  date DATE NOT NULL,
  category VARCHAR(50) NOT NULL
);

-- Alter the Income table to add a new column named "category"
ALTER TABLE Income
ADD COLUMN category VARCHAR(50);

-- Alter the Income table to remove the "source" column
ALTER TABLE Income
DROP COLUMN source;

-- Drop the Income table
DROP TABLE IF EXISTS Income;















