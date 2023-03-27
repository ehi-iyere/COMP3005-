/*
This query shows all the biginner instructional
Videos


This is usefull to the user who are biginners

*/

 select title  from design join illustration
 where(extra = 'silk')
 group by title;

 
 
 /*
 title
-----------------------
A line Skirt
Bucket Hat
Destressed Worker Pants
Flared Skirt
Parashout Pants
Strawberry dress
 */