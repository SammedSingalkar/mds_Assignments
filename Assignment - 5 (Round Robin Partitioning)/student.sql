use college;
create table student(
id int(10) Not Null,
division varchar(4) Not Null,
branch varchar(10) Not Null,
CGPA float(10) Not Null,
primary key (id));

INSERT INTO student VALUES (1,'A','CSE','8.1');
INSERT INTO student VALUES (2,'A','IT','6.5');
INSERT INTO student VALUES (3,'B','CSE','9.5');
INSERT INTO student VALUES (4,'A','ENTC','7.5');
INSERT INTO student VALUES (5,'A','CSE','7.6');
INSERT INTO student VALUES (6,'B','CSE','9.2');
INSERT INTO student VALUES (7,'A','IT','6.1');
INSERT INTO student VALUES (8,'B','CSE','9.6');

select * from student;