-- The following SQL statement updates the first customer 
-- (CustomerID = 1) with a new contact person and a new city.
UPDATE Customers
SET ContactName = 'Alfred Schmidt', City= 'Frankfurt'
WHERE CustomerID = 1;

-- The following SQL statement will update the ContactName to 
-- "Juan" for all records where country is "Mexico":
UPDATE Customers
SET ContactName='Juan'
WHERE Country='Mexico';

-- Update the City column of all records in the Customers table.
UPDATE Customers SET City = 'Oslo';

-- Set the value of the City columns to 'Oslo', but only the 
-- ones where the Country column has the value "Norway".
UPDATE Customers SET City = 'Oslo' WHERE Country = 'Norway';

-- Update the City value and the Country value if the CustomerID is 32.
UPDATE Customers SET City = 'Oslo', Country = 'Norway' WHERE CustomerID = 32;




