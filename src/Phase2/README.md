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



