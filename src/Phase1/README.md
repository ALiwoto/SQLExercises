## Some of The Most Important SQL Commands:

```sql
    SELECT -- extracts data from a database
    UPDATE -- updates data in a database
    DELETE -- deletes data from a database
    INSERT INTO -- inserts new data into a database
    CREATE DATABASE -- creates a new database
    ALTER DATABASE -- modifies a database
    CREATE TABLE -- creates a new table
    ALTER TABLE -- modifies a table
    DROP TABLE -- deletes a table
    CREATE INDEX -- creates an index (search key)
    DROP INDEX -- deletes an index
```

<hr/>

## The SQL SELECT Statement

The `SELECT` statement is used to select data from a database.

The data returned is stored in a result table, called the result-set.

```sql
SELECT column1, column2, ...
FROM table_name;
```

Here, column1, column2, ... are the field names of the table you want to select data from. If you want to select all the fields available in the table, use the following syntax:

```sql
SELECT * FROM table_name;
```

<hr/>

## The SQL SELECT DISTINCT Statement

The `SELECT DISTINCT` statement is used to return only distinct (different) values.

Inside a table, a column often contains many duplicate values; and sometimes you only want to list the different (distinct) values.

```sql
SELECT DISTINCT column1, column2, ...
FROM table_name;
```

<hr/>

## The SQL WHERE Clause

The `WHERE` clause is used to filter records.

It is used to extract only those records that fulfill a specified condition.

```sql
SELECT column1, column2, ...
FROM table_name
WHERE condition;
```

>  Note: The `WHERE` clause is not only used in SELECT statements, it is also used in `UPDATE`, `DELETE`, etc.!

Text Fields vs. Numeric Fields
SQL requires single quotes around text values (most database systems will also allow double quotes).

However, numeric fields should not be enclosed in quotes:

```sql
SELECT * FROM Customers
WHERE CustomerID=1;
```

Operators:

  - `=`  : Equal
  - `>`  : Greater than
  - `<`  : Less than
  - `>=` : Greater than or equal
  - `<=` : Less than or equal
  - `<>` : Not equal
  - `!=` : Not equal
  - `BETWEEN` : Between a certain range
  - `LIKE` : Search for a pattern
  - `IN` : 	To specify multiple possible values for a column

