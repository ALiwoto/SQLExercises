-- The following SQL statement selects all the customers from the 
-- country "Mexico", in the "Customers" table:
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

-- `BETWEEN` : Between a certain range
SELECT * FROM Products
    WHERE Price BETWEEN 50 AND 60;

-- `LIKE` : Search for a pattern


-- `IN` : 	To specify multiple possible values for a column