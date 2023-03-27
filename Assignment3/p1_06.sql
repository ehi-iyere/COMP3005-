 /*Produce a table that lists the most popular service (or services).
 That is, give the name of the service that has the most subscribers*/
 
 select service from
(select service, max(c) from 
(select service, count(service) c
from service_subscribers join subscribers on subscribers.portid = service_subscribers.portid
group by service) );

 /* expectation
 service
-------
MSG
 */