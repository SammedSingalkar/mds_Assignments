use shop;

create table sales(
item_name varchar(15),
color varchar(10),
cloth_size varchar(15),
quantity int(4));

insert into sales values ('skirt','dark','medium',5);
insert into sales values ('skirt','dark','large',1);
insert into sales values ('skirt','pastel','small',11);
insert into sales values ('skirt','pastel','medium',9);
insert into sales values ('skirt','pastel','larger',15);
insert into sales values ('skirt','white','small',2);
insert into sales values ('skirt','white','medium',5);
insert into sales values ('skirt','white','large',3);
insert into sales values ('dress','dark','small',2);
insert into sales values ('dress','dark','medium',6);
insert into sales values ('dress','dark','large',12);
insert into sales values ('dress','pastel','small',4);
insert into sales values ('dress','pastel','medium',3);
insert into sales values ('dress','pastel','large',3);
insert into sales values ('dress','white','small',2);
insert into sales values ('dress','white','medium',3);
insert into sales values ('dress','white','large',0);
insert into sales values ('shirt','dark','small',2);
insert into sales values ('shirt','dark','medium',6);
insert into sales values ('shirt','dark','large',6);
insert into sales values ('shirt','pastel','small',4);
insert into sales values ('shirt','pastel','medium',1);
insert into sales values ('shirt','pastel','large',2);
insert into sales values ('shirt','white','small',17);
insert into sales values ('shirt','white','medium',1);
insert into sales values ('shirt','white','large',10);
insert into sales values ('pant','dark','small',14);
insert into sales values ('pant','dark','medium',6);
insert into sales values ('pant','dark','large',0);
insert into sales values ('pant','pastel','small',1);
insert into sales values ('pant','pastel','medium',0);
insert into sales values ('pant','pastel','large',1);
insert into sales values ('pant','white','small',3);
insert into sales values ('pant','white','medium',0);
insert into sales values ('pant','white','large',2);


select * from sales;
select item_name,color,sum(quantity) from sales group by cube(item_name,color);
select item_name, sum(quantity) from sales where item_name = 'skirt';
select item_name, sum(quantity) from sales group by item_name;
select sum(quantity) from sales group by color;
select item_name,color,clothes_size,sum(quantity)from sales group by rollup (item_name,color,clothes_size);
select item_name,color,clothes_size,sum(quantity)from sales group by rollup (item_name,color,clothes_size); 




