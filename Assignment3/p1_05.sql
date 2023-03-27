/*Find the names of all the subscribers who subscribe to at least three services.*/


select name from subscribers join 
service_subscribers on subscribers.portid = service_subscribers.portid
group by name
having count(service) > 2;

/*

expectations

*/
