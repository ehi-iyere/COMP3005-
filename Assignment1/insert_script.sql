PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;

DELETE FROM cds WHERE cd_id LIKE '101120396%';
DELETE FROM songs WHERE cd_id LIKE '101120396%';

INSERT INTO cds VALUES('101120396CD1','GOLD','Le Mav and Tay Iwar','Le Mav',2019,'101120396');
INSERT INTO cds VALUES('101120396CD2','Channel Orange','Frank Ocean','Everest and Various Producers',2012,'101120396');

INSERT INTO songs  (title,composer,cd_id,track,contributer) VALUES('Seal','Tay Iwar','101120396CD1',1,'101120396');
INSERT INTO songs  (title,composer,cd_id,track,contributer) VALUES('Champion','Tay Iwar','101120396CD1',2,'101120396');
INSERT INTO songs  (title,composer,cd_id,track,contributer) VALUES('Credits','Le Mav and Tay Iwar','101120396CD1',3,'101120396');
INSERT INTO songs  (title,composer,cd_id,track,contributer) VALUES('Heat','Le Mav and Tay Iwar','101120396CD1',4,'101120396');
INSERT INTO songs  (title,composer,cd_id,track,contributer) VALUES('Gun Fighter','Le Mav and Tay Iwar','101120396CD1',5,'101120396');
INSERT INTO songs  (title,composer,cd_id,track,contributer) VALUES('Ricochet','Le Mav and Tay Iwar','101120396CD1',6,'101120396');
INSERT INTO songs  (title,composer,cd_id,track,contributer) VALUES('Shoreditch Swing','Le Mav and Tay Iwar','101120396CD1',7,'101120396');
INSERT INTO songs  (title,composer,cd_id,track,contributer) VALUES('Karma','Le Mav and Tay Iwar','101120396CD1',8,'101120396');
INSERT INTO songs  (title,composer,cd_id,track,contributer) VALUES('Super Rich Kids','Nathaniel Robinson, Kirk Robinson, Cory Rooney, Frank Ocean and Earl Sweatshirt','101120396CD2',7,'101120396');
INSERT INTO songs  (title,composer,cd_id,track,contributer) VALUES('Start','Lonnie Breaux and James Ho','101120396CD2',1,'101120396');
INSERT INTO songs  (title,composer,cd_id,track,contributer) VALUES('Thinkin Bout You','Lonnie Breaux and Shea Taylor','101120396CD2',2,'101120396');
INSERT INTO songs  (title,composer,cd_id,track,contributer) VALUES('Pilot Jones','Lonnie Breaux and Shea Taylor','101120396CD2',8,'101120396');
INSERT INTO songs  (title,composer,cd_id,track,contributer) VALUES('Fertilizer','James Fauntleroy and R.Perry','101120396CD2',3,'101120396');
INSERT INTO songs  (title,composer,cd_id,track,contributer) VALUES('Sierra Leone','Lonnie Breaux and James Ho','101120396CD2',4,'101120396');
INSERT INTO songs  (title,composer,cd_id,track,contributer) VALUES('Crack Rock','Lonnie Breaux and James Ho','101120396CD2',9,'101120396');
INSERT INTO songs  (title,composer,cd_id,track,contributer) VALUES('Sweet Life','Lonnie Breaux and Pharrell','101120396CD2',5,'101120396');
INSERT INTO songs  (title,composer,cd_id,track,contributer) VALUES('Not Just Money','Rosie Watson','101120396CD2',6,'101120396');
INSERT INTO songs  (title,composer,cd_id,track,contributer) VALUES('Monks','Lonnie Breaux and James Ho','101120396CD2',13,'101120396');
INSERT INTO songs  (title,composer,cd_id,track,contributer) VALUES('Forrest Gump','Lonnie Breaux and J. Ho','101120396CD2',16,'101120396');
INSERT INTO songs  (title,composer,cd_id,track,contributer) VALUES('End','Lonnie Breaux and James Ho','101120396CD2',17,'101120396');
INSERT INTO songs  (title,composer,cd_id,track,contributer) VALUES('Pyramids','Lonnie Breaux, Taylor Johnson, and James Ho','101120396CD2',10,'101120396');
INSERT INTO songs  (title,composer,cd_id,track,contributer) VALUES('Forrest Gump','Lonnie Breaux, Micah Otano, Paul Shelton, and J. Ho','101120396CD2',11,'101120396');
INSERT INTO songs  (title,composer,cd_id,track,contributer) VALUES('Pink Matters','Lonnie Breaux, Andre Benjamin, and James Ho','101120396CD2',15,'101120396');
INSERT INTO songs  (title,composer,cd_id,track,contributer) VALUES('Bad Religion','Lonnie Breaux, Charlie Gambetta, Kevin Risto, and Waynne Nugent','101120396CD2',14,'101120396');
INSERT INTO songs  (title,composer,cd_id,track,contributer) VALUES('White','Lonnie Breaux and T. Okonma','101120396CD2',12,'101120396');
COMMIT;
