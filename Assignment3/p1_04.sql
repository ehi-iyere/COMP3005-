/*Find the names and address of all subscribers 
who subscribe to all of the available services.*/

select name, address  from subscribers join 
service_subscribers on subscribers.portid = service_subscribers.portid
group by name
having count(service) = (select count(services.scode) from services);
 
/* 
expectations
null
*/
