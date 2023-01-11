use clg;

create table student (
s_id int(10) Not Null,
s_Addr text,
s_mobile bigint(10),
Dept_id int(5),
c_id int(5),
primary key(s_id));

insert into student values (1,"Solapur",1023456987,2,2);
insert into student values (2,"Aurangabad",8795461230,1,1);
insert into student values (3,"Jalna",8754965412,2,2);
insert into student values (4,"Solapur",9569874123,1,2);
insert into student values (5,"Pune",7845965871,4,1);
insert into student values (6,"Mumbai",7412589632,3,2);
insert into student values (7,"Mumbai"8547896521,2,4);s

select * from student;
