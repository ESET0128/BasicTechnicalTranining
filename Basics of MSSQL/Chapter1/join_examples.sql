-- Saurabh Kumar	|	ESET0128
-- Queries fro Join Operations
create database jdatabase;
use jdatabase;

create table users(users_id int primary key, email varchar(50), Names varchar(50));

create table books(product_sku int primary key, title varchar(50), price float);

create table orders(order_no int primary key, users_id int ,product_sku int ,
foreign key(users_id) references users(users_id),foreign key(product_sku) references books(product_sku));


insert into users values (1, 'callmebhai@gmail.com','GopalBhai'),(2, 'toxicmanjhi@gmail.com', 'Manjit'),
(3, 'kalajadu@gmail.com','SomyaDeep'),(4, 'vimalpanmashala@gmail.com','JaiShai'),
(5, 'ghostlaugh@gmail.com','Namitha');

insert into books values(101, 'MSSQL', 100),(102, 'HalfGirlFriend', 699),
(103, 'BlackMagic', 700),(104, 'Marfa', 2000),(105, 'ghost',999.9);

insert into orders values(401, 1, 101),(402, 2, 103),
(403, 2, 102),(404, 3, 103),(405, 3, 104),(406, 4, 102),(407, 5, 105),(408, 5, 102);

select * from users U inner join orders O on U.users_id=O.users_id inner join 
books B on B.product_sku=O.product_sku where price=(select max(price) from books);

select * from users;
select * from books;
select * from orders;
