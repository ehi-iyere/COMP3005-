/*
This query shows the desgign information for patterns that need a cutter and over 3 sections


This is usefull to the user because patterns that are over 3 section need a triple rim cutter, while patters 3 and under can use a regular cutter

*/

 select design_id,title, nosection as "patterninfo", era ,rating   from design natural join pattern 
 
 where (( tool = 'cutter') and (nosection > 3))
 order by design_id;
 
 /*
 Expectation :
 title         patterninfo  era      rating
------------  -----------  -------  ------
A line Skirt  4             2000s   2
 */