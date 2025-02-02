--Query i) No. of Orders in Bangalore with Customer Name
SELECT C.Cname,COUNT(O.OrderNo) AS ORDERS FROM CUSTOMER C
    -> JOIN OORDER O ON C.CustNo = O.CustNo
    -> WHERE City = 'Bangalore'
    -> GROUP BY C.Cname;
+--------+--------+
| Cname  | ORDERS |
+--------+--------+
| Aryan  |      3 |
| Aditya |      1 |
| Raj    |      2 |
+--------+--------+
3 rows in set (0.00 sec)

--Query ii)
SELECT C.Cname,COUNT(O.OrderNo) AS ORDERS FROM CUSTOMER C
    -> JOIN OORDER O ON O.CustNo = C.CustNo
    -> GROUP BY C.Cname HAVING COUNT(O.OrderNo) >= 3;
+-------+--------+
| Cname | ORDERS |
+-------+--------+
| Aryan |      3 |
+-------+--------+
1 row in set (0.00 sec)

--Query iii)
SELECT C.Cname FROM CUSTOMER C
    -> WHERE NOT EXISTS (
    -> SELECT 1
    -> FROM OORDER O
    -> JOIN ORDERITEM OI ON OI.OrderNo = O.OrderNo
    -> WHERE O.CustNo = C.CustNo
    -> AND OI.ItemNo = 10);
+--------+
| Cname  |
+--------+
| Aditya |
| Ram    |
| Virat  |
| Rohit  |
+--------+
4 rows in set (0.00 sec)
