/*
The purpose of this query is to show all the verfied users


This is useful because a user with over a 1000 subseribers must be verfied 

*/

 select username as 'Verified Users'  from users 
 
 where ('subscribers' > 1000)
 order by username;
 
 /*
Verified Users
---------------
BenMatt11
FashionArmy
FashionQueenAmy
GucciDupe
Mart&Benny
MatharIsQueen
ModiboDesigns
SlimeGod
TamiOdet
jessyMama
 */