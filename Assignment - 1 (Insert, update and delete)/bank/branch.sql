use bank;

create table branch(
B_id int(10) Not Null,
B_name varchar(50) Not null,
B_addr text,
primary key (B_id)
);

INSERT INTO branch VALUES (1,'SBI solapur','near ashok chowk');

drop table branch;