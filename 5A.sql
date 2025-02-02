--query1
SELECT E.Ename FROM EMPLOYEE E
    -> JOIN CERTIFIED C ON C.Emp_ID = E.Emp_ID
    -> JOIN AIRCRAFT A ON A.Aircraft_ID = C.Aircraft_ID
    -> WHERE A.Aircraft_Name LIKE "%Boeing%";
+--------+
| Ename  |
+--------+
| Darwin |
| Aryan  |
| Conan  |

--query2
 SELECT Aircraft_Name FROM AIRCRAFT ORDER BY Cruising_Range ASC;
+---------------+
| Aircraft_Name |
+---------------+
| Boeing747     |
| AirbusA320    |
| Boeing737     |
| AirbusA380    |
| Boeing707     |
+---------------+
5 rows in set (0.00 sec)

--query3
SELECT E.Ename FROM EMPLOYEE E
    -> JOIN CERTIFIED C ON C.Emp_ID = E.Emp_ID
    -> JOIN AIRCRAFT A ON A.Aircraft_ID = C.Aircraft_ID
    -> WHERE A.Cruising_Range > 3000
    -> AND A.Aircraft_Name NOT LIKE "%Boeing%";
+-------+
| Ename |
+-------+
| Brian |
+-------+
1 row in set (0.00 sec)
