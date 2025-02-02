--Query1
SELECT RegNo FROM PARTICIPATED;
+-------+
| RegNo |
+-------+
|   444 |
|  1615 |
|  3905 |
|  9081 |
+-------+
4 rows in set (0.00 sec)
  
--Query2
SELECT P.RegNo,C.Model FROM PARTICIPATED P
    -> JOIN CAR C ON C.RegNo = P.RegNo
    -> WHERE DamageAmount = (SELECT MAX(DamageAmount) FROM PARTICIPATED);
+-------+--------+
| RegNo | Model  |
+-------+--------+
|   444 | Suzuki |
  
--Query3
SELECT O.DriverIdNo,COUNT(O.RegNo)
    -> FROM OWNS O
    -> GROUP BY O.DriverIdNo;
+------------+----------------+
| DriverIdNo | COUNT(O.RegNo) |
+------------+----------------+
|          1 |              2 |
|          2 |              1 |
|          3 |              3 |
+------------+----------------+
3 rows in set (0.00 sec)
