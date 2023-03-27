
drop table if exists cds;

drop table if exists songs;

drop table if exists cdTemp;

drop table if exists songTemp;

CREATE TABLE cdtemp(
      cd_id text primary key not null, --cd unique id
      title text NOT NULL, --title of CD
      artist text NOT NULL, --artist whose CD it is or "various artists"
      producer text default NULL,
      year integer,
      contributer text --student number who contirbuted the data
      );

CREATE TABLE songtemp(
      song_id integer primary key autoincrement, --auto incrementing key
      title text NOT NULL, --title of song
      composer text NOT NULL, --person or persons who wrote the song
      cd_id text NOT NULL, --cd this song appears on
      track integer NOT NULL, --track number of the song
      contributer text --student number who contirbuted the data
      );

.read myTunes_Abdelghny.sql

insert into cdTemp
select * from cds;

insert into songTemp (title,composer,cd_id,track,contributer)
select "title","composer","cd_id","track","contributer" from songs;

drop table cds;
drop table songs;

.read myTunes_Ali.sql

insert into cdTemp
select * from cds;

insert into songTemp (title,composer,cd_id,track,contributer)
select "title","composer","cd_id","track","contributer" from songs;

drop table cds;
drop table songs;

.read myTunes_Fatemeh.sql
insert into cdTemp
select * from cds;

insert into songTemp (title,composer,cd_id,track,contributer)
select "title","composer","cd_id","track","contributer" from songs;

drop table cds;
drop table songs;

.read myTunes_Monica.sql

insert into cdTemp
select * from cds;

insert into songTemp (title,composer,cd_id,track,contributer)
select "title","composer","cd_id","track","contributer" from songs;

drop table cds;
drop table songs;

.read myTunes_Rezieh.sql

insert into cdTemp
select * from cds;

insert into songTemp (title,composer,cd_id,track,contributer)
select "title","composer","cd_id","track","contributer" from songs;

drop table cds;
drop table songs;

.read myTunes_Saman.sql
insert into cdTemp
select * from cds;

insert into songTemp (title,composer,cd_id,track,contributer)
select "title","composer","cd_id","track","contributer" from songs;

delete from cds;
delete from songs;

insert into cds
select * from cdTemp;
drop table cdTemp;

insert into songs
select * from songTemp;
drop table songTemp;
