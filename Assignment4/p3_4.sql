/*
The purpose of this query is to show all the designs that are well rated designs that are well rated are usually the better designs


This is usefull to the users because they get to set the best videos

*/

 select *  from design 
 
 where (rating > 2)
 order by design_id;
 
 /*
design_id  title                    rating  era
---------  -----------------------  ------  -------
1          Flared Skirt             5        2000s
2          Bucket Hat               4        2000s
4          Strawberry dress         5        2000s
5          Parashout Pants          3        2010s
6          Destressed Worker Pants  5        1980s
 */