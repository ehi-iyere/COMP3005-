
drop table if exists design;
drop table if exists users;
drop table if exists upload;
drop table if exists pattern;
drop table if exists illustration;
drop table if exists instructionalVideo;
CREATE TABLE design(
design_id int primary key not null, -- unique identifier for a user
title varchar(30 ) NOT NULL, --the users login password
rating varchar(30), --the user's subscribers
era varchar(30) not null --the ear the style is from
);
CREATE TABLE users(
username varchar(30) not null primary key, -- unique identifier for a user
password varchar(30 ) NOT NULL, -- the users login password
subscribers int, --the user's subscribers)
subscriptions int --the user's subscriptions
);

CREATE TABLE upload(
username varchar(30) not null, --user id of the user that uploaded design_id
design_id int not null, -- the design that user_id uploaded
date varchar(30), -- the date the design was uploaded
primary key(username,design_id)

);

CREATE TABLE instructionalVideo(
id not null primary key, --the unquie id
title varchar(30 ) NOT NULL, -- title of the video
 date varchar(30 ) NOT NULL, -- the difficulty of the material in the video
difficulty varchar(30), -- the date  the video was uploaded
rdesign_id int, -- if the information referse to any other existing design
ru_id varchar(30) -- the user who uploads the video

);

CREATE TABLE pattern(
design_id int not null primary key, -- design id to show that pattern is aid to show that pattern is a
nosection int not null, --the number of sections that the pattern has
tool varchar(30) --any special tools needed to create pattern
);
CREATE TABLE illustration(
design_id int not null primary key, -- design id to show that illustration is a show that illustration
type varchar(30 ) NOT NULL, -- the type of media ie pdf, .jpg, .png etc
extra varchar(30 ) --this any extra information about the illustration such as clour, material etc
);
insert into  design values(1,'Flared Skirt','5',' 2000s ');
insert into  design values(2,'Bucket Hat','4',' 2000s ');
insert into  design values(3,'A line Skirt','2',' 2000s ');
insert into  design values(4,'Strawberry dress','5',' 2000s ');
insert into  design values(5,'Parashout Pants','3',' 2010s ');
insert into  design values(6,'Destressed Worker Pants','5',' 1980s ');

insert into  instructionalVideo values(1,'How to make a skirts','03-02-200', 'Hard', 1,'BenMatt11');
insert into  instructionalVideo values(2,'How to make a skirts','04-05-77' ,'medium', 3, 'BenMatt11');
insert into  instructionalVideo values(3,'Cargo Pants tutorial','04-05-2012' ,'medium', 6, 'BenMatt11');
insert into  instructionalVideo values(4,'Pants Anyone?','04-05-2020','Beginner', 2, 'MatharIsQueen');
insert into  instructionalVideo values(5,'A day of making hats','04-05-73' ,'Beginner', 3, 'Mart&Benny');
insert into  instructionalVideo values(6,'Easy home made sundress','03-31-2021' ,'Beginner', 4, 'Mart&Benny');

insert into  pattern values(1,3,'cutter');
insert into  pattern values(2,3,'hammer');
insert into  pattern values(3,'4','cutter');
insert into  pattern values(4,5,'cutter');
insert into  pattern values( 5,3,'nail');

insert into illustration values(1,'pdf',NULL);
insert into illustration values(2,'pdf','silk');
insert into illustration values(3,'png','silk');
insert into illustration values(4,'png','Red');
insert into illustration values(5,'pdf','silk');

insert into  upload values('BenMatt11',1, '20-03-2002');
insert into  upload values('BenMatt11',2, '20-04-2021');
insert into  upload values('SlimeGod',6, '20-03-2002');
insert into  upload values('MatharIsQueen',1, '20-03-202');
insert into  upload values('GucciDupe',4, '20-03-2002');
insert into  upload values('FashionArmy',1, '20-03-2012');
insert into  upload values('jessyMama',6, '20-03-2002');

INSERT INTO users VALUES('BenMatt11','bEnMat2011',1,100);
INSERT INTO users VALUES('MatharIsQueen','matharIsMySlime',10000,10);
INSERT INTO users VALUES('SlimeGod','SlimeSlime1010',100,100);
INSERT INTO users VALUES('FashionQueenAmy','snakesandladders',100,100);
INSERT INTO users VALUES('Mart&Benny','brodas4Life!',0,0);
INSERT INTO users VALUES('jessyMama','jessicaLoves123',10000220,1222);
INSERT INTO users VALUES('FashionArmy','BtsArry',30000,10000);
INSERT INTO users VALUES('TamiOdet','odet123',2000,0);
INSERT INTO users VALUES('GucciDupe','23!4',1777,3000);
INSERT INTO users VALUES('ModiboDesigns','modo24',1000,222);
