-- The following SQL statement inserts a new record in the "Customers" table:
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');

-- The following SQL statement will insert a new record, but only insert 
-- data in the "CustomerName", "City", and "Country" columns 
-- (CustomerID will be updated automatically):
INSERT INTO Customers (CustomerName, City, Country)
VALUES ('Cardinal', 'Stavanger', 'Norway');

INSERT INTO ShopItems (ItemName, Prize, Creator)
VALUES ('bag', 1500, 'woto')

-- The following SQL lists all customers with a NULL value in the "Address" field:
SELECT CustomerName, ContactName, Address
FROM Customers
WHERE Address IS NULL;

-- insert and then select
INSERT INTO Customers (CustomerName, ContactName)
VALUES ('Ali.w2', 'Woto2');
SELECT * FROM Customers WHERE Address IS NULL;

-- The following SQL lists all customers with a value in the "Address" field:
SELECT CustomerName, ContactName, Address
FROM Customers
WHERE Address IS NOT NULL;

-- Select all records from the Customers where the PostalCode column is empty.
SELECT * FROM Customers WHERE PostalCode IS NULL;

-- Select all records from the Customers where the PostalCode column is NOT empty.
SELECT * FROM Customers WHERE PostalCode IS NOT NULL;
