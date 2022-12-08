## The SQL MIN() and MAX() Functions

The `MIN()` function returns the smallest value of the selected column.

The `MAX()` function returns the largest value of the selected column.

```sql
SELECT MIN(column_name)
FROM table_name
WHERE condition;
```

```sql
SELECT MAX(column_name)
FROM table_name
WHERE condition;
```

<hr/>

## The SQL COUNT(), AVG() and SUM() Functions

The `COUNT()` function returns the number of rows that matches a specified criterion.
```sql
SELECT COUNT(column_name)
FROM table_name
WHERE condition;
```

The `AVG()` function returns the average value of a numeric column. 
```sql
SELECT AVG(column_name)
FROM table_name
WHERE condition;
```

The `SUM()` function returns the total sum of a numeric column. 
```sql
SELECT SUM(column_name)
FROM table_name
WHERE condition;
```

<hr/>

## The SQL LIKE Operator
The `LIKE` operator is used in a `WHERE` clause to search for a specified pattern in a column.

There are two wildcards often used in conjunction with the `LIKE` operator:
  - The percent sign (`%`) represents zero, one, or multiple characters
  - The underscore sign (`_`) represents one, single character


> **Note**: MS Access uses an asterisk (*) instead of the percent sign (%), and a question mark (?) instead of the underscore (_).


> The percent sign and the underscore can also be used in combinations!

```sql
SELECT column1, column2, ...
FROM table_name
WHERE columnN LIKE pattern;
```

> **Tip**: You can also combine any number of conditions using AND or OR operators.

Here are some examples showing different `LIKE` operators with `'%'` and `'_'` wildcards:
  - `WHERE CustomerName LIKE 'a%'`: Finds any values that start with "a"
  - `WHERE CustomerName LIKE '%a'`: Finds any values that end with "a"
  - `WHERE CustomerName LIKE '%or%'`: Finds any values that have "or" in any position
  - `WHERE CustomerName LIKE '_r%'`: Finds any values that have "r" in the second position
  - `WHERE CustomerName LIKE 'a_%'`: Finds any values that start with "a" and are at least 2 characters in length
  - `WHERE CustomerName LIKE 'a__%'`: Finds any values that start with "a" and are at least 3 characters in length
  - `WHERE ContactName LIKE 'a%o'`: Finds any values that start with "a" and ends with "o"


<hr/>

## SQL Wildcard Characters

A wildcard character is used to substitute one or more characters in a string.

Wildcard characters are used with the `LIKE` operator. The `LIKE` operator is used in a `WHERE` clause to search for a specified pattern in a column.

### Wildcard Characters in SQL Server

|  Symbol  |              Description              |               Example                 |
--------------------------------------------------------------------------------------------
|   `%`    |  Represents zero or more characters   | `bl%` finds bl, black, blue, and blob |
|   `_`    |    Represents a single character      |   	`h_t` finds hot, hat, and hit      |


