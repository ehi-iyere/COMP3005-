PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE students (
snum integer primary key,
name text,
email text);
INSERT INTO students VALUES(1001234,'Lou','ldnel@gmail.com');
INSERT INTO students VALUES(100223344,'Sue','sue@hotmail.com');
INSERT INTO students VALUES(1002222,'Anne','anne@hotmail.com');
INSERT INTO students VALUES(100344,'John','jj@hotmail.com');
CREATE TABLE courses (
cnum integer primary key,
ccode text,
name text);
INSERT INTO courses VALUES(1,'COMP3505','Databases');
INSERT INTO courses VALUES(2,'COMP2404','Datastructure');
CREATE TABLE grades (
cnum integer, -- refers to the cnum from courses
snum integer, -- refers to student taking course cnum, snum form student 
grade text, -- grade student got in course cnum
primary key (cnum, snum)
);
INSERT INTO grades VALUES(1,1001234,'B+');
INSERT INTO grades VALUES(1,100223344,'A');
INSERT INTO grades VALUES(2,100223344,'A+');
COMMIT;
