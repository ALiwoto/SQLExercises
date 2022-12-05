-- The following SQL statement selects all the customers from the 
-- country "Mexico", in the "Customers" table: (See also: https://www.w3schools.com/sql/sql_where.asp)
SELECT * FROM Customers
    WHERE Country = 'Mexico';
-- or for numbers
SELECT * FROM Customers
    WHERE CustomerID = 1;
-- or combined
SELECT * FROM Customers
    WHERE Country = 'Mexico' AND CustomerID = 1;


-- `=`  : Equal
SELECT * FROM Products
    WHERE Price = 18;

-- `>`  : Greater than
SELECT * FROM Products
    WHERE Price > 30;

-- `<`  : Less than
SELECT * FROM Products
    WHERE Price < 30;

-- `>=` : Greater than or equal
SELECT * FROM Products
    WHERE Price >= 30;

-- `<=` : Less than or equal
SELECT * FROM Products
    WHERE Price <= 30;

-- `<>` : Not equal
SELECT * FROM Products
    WHERE Price <> 18;

-- `!=` : Not equal
SELECT * FROM Products
    WHERE Price != 18;
-- or
SELECT * FROM Products
    WHERE NOT Price = 18;

-- `BETWEEN` : Between a certain range
SELECT * FROM Products
    WHERE Price BETWEEN 50 AND 60;

-- `LIKE` : Search for a pattern
SELECT * FROM Customers
    WHERE City LIKE 's%';

-- `IN` : 	To specify multiple possible values for a column
SELECT * FROM Customers
    WHERE City IN ('Paris','London');


SELECT * FROM Customers
    WHERE City = 'Berlin' OR City = 'London';


-- The following SQL statement selects all fields from 
-- "Customers" where country is "Germany" AND city is "Berlin":
SELECT * FROM Customers
    WHERE Country = 'Germany' AND City = 'Berlin';

-- The following SQL statement selects all fields from \
-- Customers" where city is "Berlin" OR "München":
SELECT * FROM Customers
    WHERE City = 'Berlin' OR City = 'München';

-- The following SQL statement selects all fields from
-- "Customers" where country is "Germany" OR "Spain":
SELECT * FROM Customers
    WHERE Country = 'Germany' OR Country = 'Spain';

-- The following SQL statement selects all fields from 
-- "Customers" where country is NOT "Germany" and NOT "USA":
SELECT * FROM Customers
    WHERE NOT Country = 'Germany' AND NOT Country = 'USA';
