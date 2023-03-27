/* Produce a table that lists the name of all the service-subscribers that subscribe to at least all the same services as Jason Allison subscribes to but possibly others as well. 
Jason Allison rents the line with portID=2.*/

select service from subscribers join 
service_subscribers on (subscribers.portid = 2 and service_subscribers.portid = 2)
;
select name, service  from subscribers join 
service_subscribers on subscribers.portid = service_subscribers.portid
where service = (select service from subscribers join 
service_subscribers on ( service_subscribers.portid = 2))

;
select name from subscribers
where not exists
(select service from service_subscribers
where portid=2
except 
select service from service_subscribers
where service_subscribers.portid = subscribers.portid
);
/*
Expectation
name
--------------
Jason Allison
Michael Jordan
Joe Carter
Homer Simpson
Matt Stajan
*/