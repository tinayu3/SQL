CREATE DATABASE school;
USE school;
CREATE TABLE Student ( 
snum INTEGER,
sname CHAR(20),
major CHAR(20),
level CHAR(20),
age INTEGER,
PRIMARY KEY (snum)); 
CREATE TABLE Faculty ( 
fid INTEGER,
fname CHAR(20),
deptid INTEGER,
PRIMARY KEY (fid));
CREATE TABLE Class ( 
name CHAR(20),
meets_at TIME,
room CHAR(10),
fid INTEGER,
PRIMARY KEY (name),
FOREIGN KEY (fid) REFERENCES Faculty(fid));
CREATE TABLE Enrolled ( 
snum INTEGER,
cname CHAR(20),
PRIMARY KEY (snum, cname),
FOREIGN KEY (snum) REFERENCES Student(snum),
FOREIGN KEY (cname) REFERENCES Class(name));
INSERT INTO student (snum,sname,major,level,age) VALUES
(1,'jhon','CS','Sr',19),
(2,'smith','CS','Jr',20),
(3,'jacob','CV','Sr',20),
(4,'tom','CS','Jr',20),
(5,'sid','CS','Jr',20),
(6,'harry','CS','Sr',21);
INSERT INTO faculty (fid,fname, deptid) VALUES
(11,'Harshith',1000),
(12,'Mohan',1000),
(13,'Nihal',1001),
(14,'Shobha',1002),
(15,'Shan',1000),
(1,'Peter',1000);
INSERT INTO class (name, meets_at,room,fid) VALUES
('class1','11:10','room1',14),
('class10','12:10','room128',14),
('class2','3:50','room2',12),
('class3','5:45','room3',11),
('class4','7:30','room4',14),
('class5','5:45','room3',15),
('class6','8:30','room2',14),
('class7','8:30','room3',14),
('class8','10:30','room3',1),
('class9','12:30','room3',1);