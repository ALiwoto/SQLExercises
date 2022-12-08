-- The following SQL statement selects all customers with 
-- a CustomerName starting with "a":
SELECT * FROM Customers
WHERE CustomerName LIKE 'a%';

-- The following SQL statement selects all customers with a
-- CustomerName ending with "a":
SELECT * FROM Customers
WHERE CustomerName LIKE '%a';

-- The following SQL statement selects all customers with a
-- CustomerName that have "or" in any position:
SELECT * FROM Customers
WHERE CustomerName LIKE '%or%';

-- The following SQL statement selects all customers with a 
-- CustomerName that have "r" in the second position:
SELECT * FROM Customers
WHERE CustomerName LIKE '_r%';

-- The following SQL statement selects all customers with a 
-- CustomerName that starts with "a" and are at least 3 characters in length:
SELECT * FROM Customers
WHERE CustomerName LIKE 'a__%';

-- The following SQL statement selects all customers with a 
-- ContactName that starts with "a" and ends with "o":
SELECT * FROM Customers
WHERE ContactName LIKE 'a%o';

-- The following SQL statement selects all customers with a
-- CustomerName that does NOT start with "a":
SELECT * FROM Customers
WHERE CustomerName NOT LIKE 'a%';

-- Select all records where the value of the City column 
-- starts with the letter "a".
SELECT * FROM Customers
WHERE City LIKE 'a%';

-- Select all records where the value of the City column
-- ends with the letter "a".
SELECT * FROM Customers
WHERE City LIKE '%a';

-- Select all records where the value of the City column
-- contains the letter "a".
SELECT * FROM Customers
WHERE City LIKE '%a%';

-- Select all records where the value of the City column 
-- starts with letter "a" and ends with the letter "b".
SELECT * FROM Customers
WHERE City LIKE 'a%b';

-- Select all records where the value of the City column
-- does NOT start with the letter "a".
SELECT * FROM Customers
WHERE City NOT LIKE 'a%';


