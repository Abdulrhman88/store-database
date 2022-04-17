Create database sotre;

use sotre ;
create table continer (
code int primary key,
name varchar(20) unique, 
continesnt_name varchar(20) not null 
);

use sotre;
create table users (
id int primary key , 
full_name varchar(20) , 
email varchar(25) unique,
gender char (1) check(gender = "m" or gender= "f"),
date_of_birth varchar (30), 
created_at datetime default current_timestamp on update current_timestamp,
continer_id int ,
foreign key(continer_id) references continer (code)

);

use sotre ;
create table orders(
id int primary key,
user_id int ,
foreign key(user_id) references users (id),
status varchar (6) check(status='start' or status='finish'),
created_at datetime default current_timestamp on update current_timestamp
);


use sotre ;
create table products (
id int primary key,
name varchar(10) not null ,
price int default 0,
status varchar(10) check(status='valid' or status='expired'),
created_at datetime default current_timestamp on update current_timestamp
);


use sotre ;
create table order_items(
order_id int ,
foreign key(order_id) references orders (id),
product_id int ,
foreign key(product_id) references orders (id),
quantity int default 0
);

#insert - continer
insert into continer values (1, "store","one");
select *from continer;

#insert - users
insert into users values ( 1, 'Abdulrhman' , 'abdulrhman3@wscom' ,'m', '1998-8-21 ','2022-4-17 1:34:9 ',1);
 
 #insert - orders
 insert into orders values (1 ,1 ,'start','2022-4-17 1:34:9');
 
#insert - products 
insert into products values (1, 'a' ,6, 'valid' ,'2022-4-17 1:34:9');

#insert - order_items
insert into order_items values (2,2,2);

#update - continer
update continer set name="Continer 1" where code='1';


#delete - products

delete from order_items where order_id='1';
delete from products where id ='1';

#select 1 
select*From continer;
select*From products;
select*From orders;
select*From order_items;






 
 


