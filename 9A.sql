--Query1
SELECT C.Cname,COUNT(O.OrderNo) AS ORDERS FROM CUSTOMER C
    -> JOIN OORDER O ON O.CustNo = C.CustNo
    -> GROUP BY (C.Cname)
    -> HAVING COUNT(O.OrderNo) >= 2;
+---------+--------+
| Cname   | ORDERS |
+---------+--------+
| Aryan   |      3 |
| Raj     |      2 |
| Karthik |      2 |
+---------+--------+
3 rows in set (0.00 sec)

--Query2
SELECT O.Odate,SUM(O.OrdAmt) FROM OORDER O
    -> GROUP BY O.Odate;
+------------+---------------+
| Odate      | SUM(O.OrdAmt) |
+------------+---------------+
| 2024-01-01 |         13000 |
| 2024-01-02 |          6500 |
+------------+---------------+

--Query3
