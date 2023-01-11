use college;

create table student(
id int not null,
division varchar(5),
branch varchar(10),
CGPA float,
primary key (id)
);
insert into student values (1,'A','CSE',8.1);
insert into student values (2,'A','IT',6.5);
insert into student values (3,'B','CSE',9.5);
insert into student values (4,'A','ENTC',7.5);
insert into student values (5,'A','CSE',7.6);
insert into student values (6,'B','CSE',9.2);
insert into student values (7,'A','IT',6.1);
insert into student values (8,'B','CSE',9.6);

select * from student;
