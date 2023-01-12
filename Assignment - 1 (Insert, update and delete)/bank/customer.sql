use bank;

create table customer(
c_id int(10) Not Null auto_increment,
c_name varchar(25) Not null,
c_addr text,
c_branch_id int(10),
c_contact int(10) NOT NULL,
primary key (c_id)
);

INSERT INTO customer VALUES (1,'Sammed Singalkar','oposite to chikhli urban coperative',1234,1234567890);
select * from customer;

drop table customer;