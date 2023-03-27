/*
This query shows all the biginner instructional
Videos


This is usefull to the user who are biginners

*/

 select *  from instructionalVideo 
 
 where (difficulty ='Beginner')
 order by id;
 
 /*
 Expectation :
 design_id  title             patterninfo  era      rating
---------  ----------------  -----------  -------  ------
3          A line Skirt      4             2000s   2
4          Strawberry dress  5             2000s   5
 */