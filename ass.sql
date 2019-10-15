drop database ass;
create database ass;
use ass;
create table user(
id int primary key auto_increment not null,
username varchar(50) not null,
password varchar(50) not null,
fullname varchar(50) not null,
email nvarchar(50) not null,
phone nchar(10) not null,
role int
);
create table categories(
id int primary key auto_increment not null,
name varchar(50),
note varchar(200)
);
create table products(
id int primary key auto_increment not null,
name varchar(200),
price int,
note varchar(200),
image varchar(200),
category_id int,
Foreign key (category_id) references categories(id) on update cascade 
);
insert into user(username,password,fullname,email,phone,role)
values('dat','123','le tan dat', 'datltps09246@fpt.edu.vn','0368985595',1);
insert into user(username,password,fullname,email,phone,role)
values('trang','123','tran quynh thao trang','lamtrangvy@gmail.com','0988889988',0);
 select * from products;
insert into categories(name,note)
values('dien thoai',''),('may tinh bang',''),('laptop','');
insert into products(name,price,note,image,category_id)
values('iphone 7',12000000,'hang ngon','iphone-7.png',1);

















