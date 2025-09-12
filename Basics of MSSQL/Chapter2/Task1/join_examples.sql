-- Saurabh Kumar	|	ESET0128
-- Queries for Join Operations
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

-- Task 1: Find all books, all users and all orders
select * from users U inner join orders O on U.users_id=O.users_id inner join 
books B on B.product_sku=O.product_sku

-- Task 2: Find all orders
select count(order_no) total_order from orders;

-- Task 3: Find particular users who has oredered paticular book
select * from users U inner join orders O on U.users_id=O.users_id inner join 
books B on B.product_sku=O.product_sku where title='BlackMagic';

-- Task 4: Find books user has order
select Names, title, price from users U inner join orders O on U.users_id=O.users_id inner join 
books B on B.product_sku=O.product_sku

-- Task 5: Find total price of books user has ordered
select U.users_id, Names, sum(price) totalOrderPrice from users U inner join orders O on U.users_id=O.users_id inner join 
books B on B.product_sku=O.product_sku group by U.users_id, U.Names;

-- Task 6: Find the most valuable user
select TOP(1) U.users_id, Names, sum(price) totalOrderPrice from users U inner join orders O on U.users_id=O.users_id inner join 
books B on B.product_sku=O.product_sku group by U.users_id, U.Names order by totalOrderPrice desc;

-- Task 7: Find high and low range of book
select min(price) MinRange, max(price) MaxRange from books;

-- Task 8: show highest price book
select * from users U inner join orders O on U.users_id=O.users_id inner join 
books B on B.product_sku=O.product_sku where price=(select max(price) from books);

-- Task 9: Find the chepest book
select * from books where price = (select min(price) from books);

-- Task 10: Find newly added books
select * from users U inner join orders O on U.users_id=O.users_id inner join 
books B on B.product_sku=O.product_sku where order_no = (select max(order_no) from orders);

select * from users;
select * from books;
select * from orders;
