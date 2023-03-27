/*Write an SQL query that would find if the line with phone number (613) 712-0024 is currently available to take a call because its channel is IDLE.*/

select lines.portid, lines.areacode ||  lines.officecode || lines.stationcode as "directory number" , "state" from  lines
join channels on (lines.portid = channels.portid)
where ("directory number" = "6137120024" and "state" = "IDEL");

/*
Expectation
NULL 
this is because the line is not IDEL
*/