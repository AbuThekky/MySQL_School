create database online_shop;
use online_shop;
show tables;

select * from Users;

create table Users(
user_id int unique not null,
user_name varchar(255),
address varchar(255),
primary key(user_id));

create table Orders(
order_id int unique not null,
fk_user_id int not null,
primary key(order_id),
foreign key(fk_user_id) references Users(user_id));

create table Products(
prod_id int unique not null,
title varchar(255),
primary key(prod_id));

create table Orderline(
fk_order_id int not null,
fk_product_id int not null,
quantity int not null,
foreign key(fk_order_id) references Orders(order_id),
foreign key(fk_product_id) references Products(prod_id));

select * from Users;
insert into Users(user_id, user_name, address) values("080812", "pokemonmaster01", "01 Routing Street Comborune"),("080822", "angelcheesecake1", "106 Sterling Road Netherfield");

select * from Orders;
insert into Orders(order_id, fk_user_id) values("908121", "080812"),("312890", "080822");

select * from Products;
insert into Products(prod_id, title) values("402999", "Laptop Linux 78 vedio -98"),("612409", "Braces Tooth Gel LED v.19");

select * from Orderline;
insert into Orderline(fk_order_id, fk_product_id, quantity) values ("908121", "402999", 1),("312890","612409",1);



