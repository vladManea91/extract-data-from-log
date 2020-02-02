SELECT request, COUNT(*)  from test_qa
    -> GROUP BY request;
+---------------+----------+
| request       | count(*) |
+---------------+----------+
| processClient |    22805 |
| getData       |    22616 |
| getActions    |    22738 |
| processAction |    23065 |
| acceptToken   |    22670 |
| checkAuth     |    22772 |
| addClient     |    22939 |
+---------------+----------+
7 rows in set (0.11 sec)
