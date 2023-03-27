/*
This query shows all the biginner instructional
Videos


This is usefull to the user who are biginners

*/

 select *  from instructionalVideo 
 
 where (difficulty ='Beginner')
 order by id;
 
 /*
id  title                    date        difficulty  rdesign_id  ru_id
--  -----------------------  ----------  ----------  ----------  -------------
4   Pants Anyone?            04-05-2020  Beginner    2           MatharIsQueen
5   A day of making hats     04-05-73    Beginner    3           Mart&Benny
6   Easy home made sundress  03-31-2021  Beginner    4           Mart&Benny
 */