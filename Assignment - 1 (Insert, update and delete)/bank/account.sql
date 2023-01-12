use bank;

create table account(
account_no int(18) Not Null,
c_id int(18) Not Null,
b_id int(18) Not Null,
amount bigint not null,
primary key (account_no)
);

INSERT INTO account VALUES (11443654,1,1,5000);

select * from account;