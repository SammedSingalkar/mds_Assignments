use college;

create table department(
dept_id int(18) Not Null,
dept_name varchar(30) Not Null,
primary key (dept_id)
);

INSERT INTO department VALUES (1,'CSE');
INSERT INTO department VALUES (2,'MECH');
INSERT INTO department VALUES (3,'ENTC');
INSERT INTO department VALUES (4,'ENC');

select * from department;