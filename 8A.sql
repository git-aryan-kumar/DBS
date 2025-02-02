--Query1
SELECT M.Ground FROM MATCHES M
    -> WHERE Team1 = 'Australia' ORDER BY Ground;
+---------------+
| Ground        |
+---------------+
| Adelaide Oval |
| MCG           |
| Perth         |
| SCG           |
+---------------+
4 rows in set (0.00 sec)

--Query2
SELECT M.MatchId FROM MATCHES M
    -> JOIN BATTING B ON M.MatchId = B.MatchId
    -> JOIN PLAYER P ON P.PId = B.PId
    -> WHERE P.Lname = 'Dhoni';
+---------+
| MatchId |
+---------+
|    2689 |
|    2690 |
+---------+
2 rows in set (0.00 sec)

--Query3
SELECT P.Fname,P.Lname FROM PLAYER P
    -> JOIN Batting B ON B.PId = P.PId
    -> WHERE B.MatchId = 2689;
+-------+---------+
| Fname | Lname   |
+-------+---------+
| MS    | Dhoni   |
| Ricky | Ponting |
+-------+---------+
2 rows in set (0.00 sec)
