--query1
SELECT S.Sid FROM SUPPLIER S
    -> JOIN SHIPMENT SH ON SH.Sid = S.Sid
    -> JOIN PART P ON P.PID = SH.PID
    -> WHERE P.Color = 'Green';
+-----+
| Sid |
+-----+
|   1 |
+-----+
1 row in set (0.00 sec)

--query2
 SELECT S.Sname,COUNT(SH.PID) FROM SUPPLIER S
    -> JOIN SHIPMENT SH ON SH.Sid = S.Sid
    -> GROUP BY S.Sname;
+-------+---------------+
| Sname | COUNT(SH.PID) |
+-------+---------------+
| S1    |             5 |
| S2    |             2 |
| S3    |             1 |
+-------+---------------+
3 rows in set (0.00 sec)

--query3
