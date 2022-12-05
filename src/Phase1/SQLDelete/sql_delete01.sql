-- The following SQL statement deletes the customer 
-- "Alfreds Futterkiste" from the "Customers" table:
DELETE FROM Customers WHERE CustomerName='Alfreds Futterkiste';

-- The following SQL statement deletes all rows in the
--  "Customers" table, without deleting the table:
DELETE FROM Customers;

-- Delete all the records from the Customers table where 
-- the Country value is 'Norway'.
DELETE FROM Customers WHERE Country = 'Norway';
