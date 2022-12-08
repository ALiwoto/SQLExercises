-- The following SQL statement selects all customers
--  with a City starting with "ber":
SELECT * FROM Customers
WHERE City LIKE 'ber%';

-- The following SQL statement selects all customers 
-- with a City containing the pattern "es": 
SELECT * FROM Customers
WHERE City LIKE '%es%';

-- The following SQL statement selects all customers 
-- with a City starting with any character, followed by "ondon":
SELECT * FROM Customers
WHERE City LIKE '_ondon';

-- The following SQL statement selects all customers 
-- with a City starting with "L", followed by any character, 
-- followed by "n", followed by any character, followed by "on":
SELECT * FROM Customers
WHERE City LIKE 'L_n_on';

-- The following SQL statement selects all customers 
-- with a City starting with "b", "s", or "p":
SELECT * FROM Customers
WHERE City LIKE '[bsp]%';

-- The following SQL statement selects all customers 
-- with a City starting with "a", "b", or "c":
SELECT * FROM Customers
WHERE City LIKE '[a-c]%';

-- The two following SQL statements select all customers
-- with a City NOT starting with "b", "s", or "p":
SELECT * FROM Customers
WHERE City LIKE '[!bsp]%';
-- OR can also be written this way:
SELECT * FROM Customers
WHERE City NOT LIKE '[bsp]%';

-- Select all records where the second letter of the City
-- is an "a".
SELECT * FROM Customers
WHERE City LIKE '_a%';

-- Select all peers where the second letter of the username
-- is an "a" and limit the results to 1.
SELECT TOP 1 * FROM peers
WHERE username LIKE '_a%';

-- Select all records where the first letter of the City
-- is an "a" or a "c" or an "s".
SELECT * FROM Customers
WHERE City LIKE '[acs]%';

-- Select all peers where the first letter of the username
-- is an "a" or a "c" or an "s" and limit the results to 3.
SELECT TOP 3 * FROM peers
WHERE username LIKE '[acs]%'

-- Select all records where the first letter of the City 
-- starts with anything from an "a" to an "f".
SELECT * FROM Customers
WHERE City LIKE '[a-f]%';

-- Select all records where the first letter of the City 
-- is NOT an "a" or a "c" or an "f".
SELECT * FROM Customers
WHERE City LIKE '[!acf]';
