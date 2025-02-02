--query1
SELECT E.Salary FROM EMPLOYEE E WHERE E.Salary > (SELECT Salary FROM EMPLOYEE WHERE D
no = 5);
+--------+
| Salary |
+--------+
| 300000 |
+--------+
1 row in set (0.00 sec)

--query2
SELECT E.Fname FROM EMPLOYEE E
    -> JOIN WORKS_ON W ON W.ESSN = E.SSN
    -> WHERE W.Pno IN (1,2,3);
+----------+
| Fname    |
+----------+
| Aryan    |
| Hamilton |
| Hamilton |
| Hamilton |
| Naidu    |
| Shetty   |
| Shetty   |
+----------+
7 rows in set (0.00 sec)
--query3
