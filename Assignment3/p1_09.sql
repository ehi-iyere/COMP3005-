/*Problem 1.9 Do the same as question 1.7 but this time only include trunks that have at least one 'IDLE' channel. That is, write an SQL query that will produce in one table a list of all the acceptable trunks that can be used to route a call to the 416 area code, office code 334 have at least one idle channel. This query should list the trunks in the order of preference.
 (The answer should list trunks routes 416,334 then 416,000 then 000,000 for*/

 
select * from trunk_routes natural join trunks natural join channels
 where ((area = "000" or area = "416") and (office = "334" or office = "000") and "state" = "IDLE")
 order by office desc;
 
/*
EXCEPTION
portid  area  office  foreign_switch  channel  state
------  ----  ------  --------------  -------  -----
102     416   334     RIDEAU          0        IDLE
102     416   334     RIDEAU          1        IDLE
102     416   334     RIDEAU          3        IDLE
102     416   334     RIDEAU          4        IDLE
102     416   334     RIDEAU          5        IDLE
102     416   334     RIDEAU          6        IDLE
102     416   334     RIDEAU          7        IDLE
102     416   334     RIDEAU          8        IDLE
102     416   334     RIDEAU          9        IDLE
102     416   334     RIDEAU          10       IDLE
102     416   334     RIDEAU          11       IDLE
102     416   334     RIDEAU          12       IDLE
102     416   334     RIDEAU          14       IDLE
102     416   334     RIDEAU          15       IDLE
102     416   334     RIDEAU          16       IDLE
102     416   334     RIDEAU          17       IDLE
102     416   334     RIDEAU          18       IDLE
102     416   334     RIDEAU          19       IDLE
102     416   334     RIDEAU          20       IDLE
102     416   334     RIDEAU          22       IDLE
102     416   334     RIDEAU          23       IDLE
102     416   000     RIDEAU          0        IDLE
102     416   000     RIDEAU          1        IDLE
102     416   000     RIDEAU          3        IDLE
102     416   000     RIDEAU          4        IDLE
102     416   000     RIDEAU          5        IDLE
102     416   000     RIDEAU          6        IDLE
102     416   000     RIDEAU          7        IDLE
102     416   000     RIDEAU          8        IDLE
102     416   000     RIDEAU          9        IDLE
102     416   000     RIDEAU          10       IDLE
102     416   000     RIDEAU          11       IDLE
102     416   000     RIDEAU          12       IDLE
102     416   000     RIDEAU          14       IDLE
102     416   000     RIDEAU          15       IDLE
102     416   000     RIDEAU          16       IDLE
102     416   000     RIDEAU          17       IDLE
102     416   000     RIDEAU          18       IDLE
102     416   000     RIDEAU          19       IDLE
102     416   000     RIDEAU          20       IDLE
102     416   000     RIDEAU          22       IDLE
102     416   000     RIDEAU          23       IDLE
106     416   000     BAY             0        IDLE
106     416   000     BAY             1        IDLE
106     416   000     BAY             2        IDLE
106     416   000     BAY             3        IDLE
106     416   000     BAY             4        IDLE
106     416   000     BAY             7        IDLE
106     416   000     BAY             8        IDLE
106     416   000     BAY             9        IDLE
106     416   000     BAY             10       IDLE
106     416   000     BAY             11       IDLE
106     416   000     BAY             12       IDLE
106     416   000     BAY             13       IDLE
106     416   000     BAY             14       IDLE
106     416   000     BAY             15       IDLE
106     416   000     BAY             16       IDLE
106     416   000     BAY             17       IDLE
106     416   000     BAY             18       IDLE
106     416   000     BAY             19       IDLE
106     416   000     BAY             20       IDLE
106     416   000     BAY             21       IDLE
106     416   000     BAY             22       IDLE
106     416   000     BAY             23       IDLE
107     000   000     Innes           0        IDLE
107     000   000     Innes           1        IDLE
107     000   000     Innes           2        IDLE
107     000   000     Innes           3        IDLE
107     000   000     Innes           6        IDLE
107     000   000     Innes           7        IDLE
107     000   000     Innes           8        IDLE
107     000   000     Innes           9        IDLE
107     000   000     Innes           10       IDLE
107     000   000     Innes           11       IDLE
107     000   000     Innes           12       IDLE
107     000   000     Innes           13       IDLE
107     000   000     Innes           14       IDLE
107     000   000     Innes           15       IDLE
107     000   000     Innes           16       IDLE
107     000   000     Innes           17       IDLE
107     000   000     Innes           19       IDLE
107     000   000     Innes           20       IDLE
107     000   000     Innes           21       IDLE
107     000   000     Innes           22       IDLE
107     000   000     Innes           23       IDLE
*/