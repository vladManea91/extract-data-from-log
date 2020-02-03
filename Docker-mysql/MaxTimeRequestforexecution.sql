Needed to alter the table to have a timestamp format for Datetime column :

ALTER TABLE test_qa MODIFY Datetime TIMESTAMP;



select DISTINCT tq.request, MIN(TIMEDIFF(tq.Datetime,tqi.Datetime)) as diff_time from test_qa tq
inner join test_qa tqi on (tq.request_id = tqi.request_id and tqi.request_type = 'exit')
where tq.request_type = 'entry' GROUP BY tq.request;

+---------------+-----------+
| request       | diff_time |
+---------------+-----------+
| processClient | -00:05:57 |
| getActions    | -00:09:25 |
| checkAuth     | -00:06:57 |
| addClient     | -00:03:00 |
| acceptToken   | -00:07:44 |
| getData       | -00:02:56 |
| processAction | -00:08:05 |
+---------------+-----------+
7 rows in set (0.58 sec)
