-- The following SQL statement finds the price of the cheapest product:
SELECT MIN(Price) AS SmallestPrice
FROM Products;

-- Select the top 3 records from peers table which have the maximum possible
-- username.
SELECT TOP 3 * FROM peers
WHERE LENGTH(username) = (SELECT MAX(LENGTH(username)) FROM peers);
-- but more optimized version of this sql query would be:
SELECT TOP 3 * FROM peers
ORDER BY LENGTH(username) DESC;

-- Use the MIN function to select the record with the smallest value of the Price column.
SELECT MIN(Price) FROM Products;

-- Use an SQL function to select the record with the highest value of the Price column.
SELECT MAX(Price) FROM Products;

