-- The following SQL statement selects all customers 
-- from the "Customers" table, sorted by the "Country" column:
SELECT * FROM Customers ORDER BY Country;

-- The following SQL statement selects all customers
-- from the "Customers" table, sorted DESCENDING by the "Country" column:
SELECT * FROM Customers ORDER BY Country DESC;

-- The following SQL statement selects all customers 
-- from the "Customers" table, sorted by the "Country" 
-- and the "CustomerName" column. 
-- This means that it orders by Country, but if some rows
-- have the same Country, it orders them by CustomerName:
SELECT * FROM Customers ORDER BY Country, CustomerName;

-- The following SQL statement selects all customers from 
-- the "Customers" table, sorted ascending by the "Country"
-- and descending by the "CustomerName" column:
SELECT * FROM Customers ORDER BY Country ASC, CustomerName DESC;

-- Select all records from the Customers table, 
-- sort the result alphabetically by the column City.
SELECT * FROM Customers ORDER BY City;

-- Select all records from the Customers table, 
-- sort the result reversed alphabetically by the column City.
SELECT * FROM Customers ORDER BY City DESC;

-- Select all records from the Customers table,
-- sort the result alphabetically, first by the column Country, 
-- then, by the column City.
SELECT * FROM Customers ORDER BY Country, City;
