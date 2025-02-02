--query1
SELECT E.Ename FROM EMPLOYEE E
    -> LEFT JOIN CERTIFIED C ON C.Emp_ID = E.Emp_ID
    -> WHERE C.Emp_ID IS NULL;
Empty set (0.00 sec)

--query2
