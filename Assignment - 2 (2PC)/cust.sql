use banking;

create table cust(
c_id int(18) Not Null,
c_acc_no int(18) Not Null,
amount bigint not null,
primary key (c_id)
);

insert into cust values (1,147852,500);

select * from cust;