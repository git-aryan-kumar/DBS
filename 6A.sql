--query3
SELECT Dname FROM DEPARTMENT WHERE Dname LIKE "%Tech%";
+-----------------+
| Dname           |
+-----------------+
| Info Technology |
| Tech Support    |
+-----------------+
2 rows in set (0.00 sec)

--query2
  SELECT E.Fname,E.Lname FROM EMPLOYEE E
    -> JOIN DEPARTMENT D ON E.Dno = D.Dnumber
    -> JOIN DEPENDENT DE ON DE.ESSN = E.SSN
    -> WHERE D.MgrSSN IN (SELECT ESSN FROM DEPENDENT);
+----------+-----------+
| Fname    | Lname     |
+----------+-----------+
| Aryan    | Kumar     |
| Mitchell | Pritchett |
| Jay      | Pritchett |
| Joe      | Pritchett |
| Phil     | Dunphy    |
| Luke     | Dunphy    |
| Frank    | Dunphy    |
| Cameron  | Tucker    |
+----------+-----------+
8 rows in set (0.00 sec)

--query1
SELECT D.Dname,AVG(E.Salary) AS AVERAGESALARY
    -> FROM DEPARTMENT D
    -> JOIN EMPLOYEE E ON E.Dno = D.Dnumber
    -> GROUP BY D.Dname;
+-----------------+---------------+
| Dname           | AVERAGESALARY |
+-----------------+---------------+
| Info Technology |  1500000.0000 |
| HR              |    15000.0000 |
| Tech Support    |    15000.0000 |
| Resources       |    10000.0000 |
| Software        |    10000.0000 |
| Hardware        |     9000.0000 |
| Tools           |     8500.0000 |
| Customer Care   |     7500.0000 |
+-----------------+---------------+
8 rows in set (0.00 sec)
