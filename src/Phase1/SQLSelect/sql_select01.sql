
-- The LENGTH function returns the number of bytes of data in character data. 
-- The OCTET_LENGTH function returns the number of bytes and generally includes 
-- trailing white space characters in the byte count.
SELECT * FROM Customers 
    WHERE CustomerID > 5 AND LENGTH(ContactName) > 13;

-- The SELECT DISTINCT statement is used to return only distinct (different) values. 
-- Inside a table, a column often contains many duplicate values; 
-- and sometimes you only want to list the different (distinct) values.
SELECT DISTINCT Address FROM Customers;
SELECT DISTINCT CustomerName, City FROM Customers;

-- The UPPER(:string:) function in SQL Server helps to convert all the letters of the given string to Uppercase. 
-- If the given string contains special characters or numeric values, then they will remain 
-- unchanged by this function. (See also: https://www.w3schools.com/sql/func_sqlserver_upper.asp)
-- The LOWER(:string:) function converts a string to lower-case. (See also: https://www.w3schools.com/sql/func_sqlserver_lower.asp)
SELECT * FROM Customers
    Where UPPER(CustomerName) = UPPER("du monde entier") OR LOWER(City) = "london"


-- The COUNT() function returns the number of rows in the result set. 
-- For example, SELECT COUNT(*) FROM Customers; The SQL command count rows and
-- returns the total number of rows of the Customers table.
SELECT COUNT(DISTINCT Country) FROM Customers;
