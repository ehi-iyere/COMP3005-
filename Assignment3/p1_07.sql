/*Write an SQL query that will produce in one table a list of all the acceptable trunks that can be used to route a call to the 416 area code, office code 334.
 This query should list the trunks in the order of preference*/

 select * from trunk_routes natural join trunks 
 natural join channels
 where ((area = "000" or area = "416") and (office = "334" or office = "000") )
 order by office desc;
 
/*
Expectation 

portid  area  office  foreign_switch
------  ----  ------  --------------
102     416   334     RIDEAU
102     416   000     RIDEAU
106     416   000     BAY
107     000   000     Innes
*/