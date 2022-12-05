-- The following SQL statement selects the first three records
-- from the "Customers" table (for SQL Server/MS Access):
SELECT TOP 3 * FROM Customers;

-- The following SQL statement shows the equivalent example for MySQL:
--SELECT * FROM Customers 
--LIMIT 3;

-- The following SQL statement selects the first 50% of 
-- the records from the "Customers" table (for SQL Server/MS Access):
SELECT TOP 50 PERCENT * FROM Customers;

-- The following SQL statement selects the first three records 
-- from the "Customers" table, where the country is "Germany" (for SQL Server/MS Access):
SELECT TOP 3 * FROM Customers
WHERE Country='Germany';

-- The following SQL statement shows the equivalent example for MySQL:
-- SELECT * FROM Customers
-- WHERE Country='Germany'
-- LIMIT 3;

-- The following SQL statement shows the equivalent example for Oracle:
-- SELECT * FROM Customers
-- WHERE Country='Germany'
-- FETCH FIRST 3 ROWS ONLY;

