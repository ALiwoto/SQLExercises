-- Use the correct function to return the number of records that have the Price value set to 18.
SELECT COUNT(*) FROM Products WHERE Price = 18;

-- The following SQL statement finds the number of products:
-- Note: NULL values are not counted.
SELECT COUNT(ProductID)
FROM Products;

-- The following SQL statement finds the average price of all products:
-- Note: NULL values are ignored.
SELECT AVG(Price)
FROM Products;

-- The following SQL statement finds the sum of the "Quantity"
--  fields in the "OrderDetails" table:
SELECT SUM(Quantity)
FROM OrderDetails;

-- Use an SQL function to calculate the average price of all products.
SELECT AVG(Price) FROM Products;

-- Use an SQL function to calculate the sum of all the Price column 
-- values in the Products table.
SELECT SUM(Price) FROM Products;

