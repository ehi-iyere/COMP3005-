/*Produce a table that lists all the area code,
 office code combinations and the number of subscribers with that area code, 
 office code combination.*/
 
 select   lines.areacode ||  lines.officecode as "area+officecode", count(subscribers.portid) as numSubscribers from lines join
 subscribers on subscribers.portid = lines.portid
 group by lines.areacode , lines.officecode;
/*
expectations
area+officecode  numSubscribers
---------------  --------------
416219           2
416331           2
416333           2
416334           2
416756           2
613134           1
613136           1
613156           1
613220           1
613221           1
613222           1
613223           1
613226           1
613227           1
613229           1
613310           1
613322           1
613333           1
613334           1
613389           1
613457           1
613489           1
613523           1
613568           1
613578           1
613623           1
613645           1
613657           1
613712           1
613728           1
613798           1
705221           3
819223           2
819227           3
905347           2
905657           2
905819           2
*/