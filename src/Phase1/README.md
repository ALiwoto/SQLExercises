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

<hr/>

## The SQL AND, OR and NOT Operators

The `WHERE` clause can be combined with `AND`, `OR`, and `NOT` operators.

The `AND` and `OR` operators are used to filter records based on more than one condition:

  - The `AND` operator displays a record if all the conditions separated by `AND` are `TRUE`.
  - The `OR` operator displays a record if any of the conditions separated by `OR` is `TRUE`.

The `NOT` operator displays a record if the condition(s) is NOT TRUE.

```sql
SELECT column1, column2, ...
FROM table_name
WHERE condition1 AND condition2 AND condition3 ...;
```

```sql
SELECT column1, column2, ...
FROM table_name
WHERE condition1 OR condition2 OR condition3 ...;
```

```sql
SELECT column1, column2, ...
FROM table_name
WHERE NOT condition;
```

<hr/>

## The SQL ORDER BY Keyword

The ORDER BY keyword is used to sort the result-set in ascending or descending order.

The ORDER BY keyword sorts the records in ascending order by default. To sort the records in descending order, use the DESC keyword.

```sql
SELECT column1, column2, ...
FROM table_name
ORDER BY column1, column2, ... ASC|DESC;
```

<hr/>

## The SQL INSERT INTO Statement
The INSERT INTO statement is used to insert new records in a table.


It is possible to write the INSERT INTO statement in two ways:
1. Specify both the column names and the values to be inserted:

```sql
INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);
```

2. If you are adding values for all the columns of the table, you do not need to specify the column names in the SQL query. However, make sure the order of the values is in the same order as the columns in the table. Here, the INSERT INTO syntax would be as follows:

```sql
INSERT INTO table_name
VALUES (value1, value2, value3, ...);
```

<hr/>

## SQL NULL Values

What is a NULL Value?
A field with a NULL value is a field with no value.

If a field in a table is optional, it is possible to insert a new record or update a record without adding a value to this field. Then, the field will be saved with a NULL value.

> Note: A NULL value is different from a zero value or a field that contains spaces. A field with a NULL value is one that has been left blank during record creation!

How to Test for NULL Values?
It is not possible to test for NULL values with comparison operators, such as =, <, or <>.

We will have to use the `IS NULL` and `IS NOT NULL` operators instead.

```sql
SELECT column_names
FROM table_name
WHERE column_name IS NULL;
```

```sql
SELECT column_names
FROM table_name
WHERE column_name IS NOT NULL;
```

The `IS NULL` operator is used to test for empty values (NULL values).

The `IS NOT NULL` operator is used to test for non-empty values (NOT NULL values).

<hr/>

## The SQL UPDATE Statement
The `UPDATE` statement is used to modify the existing records in a table.

```sql
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;
```

> Note: Be careful when updating records in a table! Notice the WHERE clause in the UPDATE statement. The WHERE clause specifies which record(s) that should be updated. If you omit the WHERE clause, **all records** in the table will be updated!


