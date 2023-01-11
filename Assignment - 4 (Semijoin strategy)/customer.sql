use college;

create table customer(
cust_id int(5) Not Null,
first_name varchar(20),
last_name varchar(20),
dept_id int(5),
primary key(cust_id),
Foreign Key (dept_id) REFERENCES(department));


insert into customer values (1,'Tony','Stark',null);
insert into customer values (2,'Steve','Rogers',null);
insert into customer values (3,'Bruce','Banner',2);
insert into customer values (4,'Lucifer','Morningstar',1);
insert into customer values (5,'Bruce','Wayne',null);
insert into customer values (6,'Clark','kent',null);
insert into customer values (7,'John','Snow',null);



select * from customer;
drop table customer;