create table user_details(cus_id int Default cus_id.nextval,
                         name VARCHAR2(50) NOT NULL,
                         phoneNo NUMBER NOT NULL,
                         role Varchar2(10) Default 'user',
                         address VARCHAR2(100) NOT NULL,
                         email_id VARCHAR2(30)NOT NULL,
                         password VARCHAR2(30)NOT NULL,
                         wallet int Default 0,
                         CONSTRAINT cus PRIMARY KEY(cus_id),UNIQUE(email_id),UNIQUE(phoneNo));
ALTER TABLE user_details
MODIFY  wallet int Default 0;

insert into user_details (name,phoneNo,role,address,email_id,password,wallet) values('karthick','9345257036','admin','Mylapore,chennai,600019','karthick30@gmail.com','karthick30',0);
insert into user_details (name,phoneNo,role,address,email_id,password) values('keerthi','9345257096','admin','Mylapore,chennai,600019','keke05@gmail.com','keke05020');
insert into user_details (name,phoneNo,role,address,email_id,password) values('uma','9345250036','admin','Mylapore,chennai,600019','keerthi02@gmail.com','keerthi05');

update user_details SET wallet=0 where role='admin';

create sequence cus_id increment by 1 start with 100;
drop sequence cus_id;
commit;

create table bookdetails(book_id int DEFAULT book_id.nextval,
                        category VARCHAR2(100) NOT NULL,
                        description VARCHAR(100),
                        book_title VARCHAR2(100) NOT NULL,
                        book_code VARCHAR2(100) NOT NULL,
                        price int NOT NULL,
                        publish_date date NOT NULL,
                        condition VARCHAR2(100) NOT NULL,
                        bookimages varchar2(4000) Not Null,
                        CONSTRAINT BOOK PRIMARY KEY(book_id));

create SEQUENCE book_id increment by 1 start with 1000;
drop sequence book_id;
insert into bookdetails(category,description,book_title,book_code,price,publish_date,condition,bookimages)values('Architecture','A fascinating, thought-provoking journey into our built environment','The Great Indoors','B10',800,'10-12-2021','New','https://d2g9wbak88g7ch.cloudfront.net/productimages/images200/725/9781787395725.jpg');

ALTER TABLE bookdetails
DROP COLUMN Publisher_id;


create table author_details(author_id int DEFAULT author_id.nextval,
                            name VARCHAR2(50) NOT NULL,
                            email_id VARCHAR2(30),
                            book_id int NOT NULL,
                            CONSTRAINT authors PRIMARY KEY(author_id),
                            CONSTRAINT book_id FOREIGN KEY(book_id) REFERENCES books(book_id),
                            UNIQUE(email_id));


create SEQUENCE author_id increment by 1 start with 2000;

create table orderdetails(order_id int DEFAULT ORDER_ID.nextval,
                 cus_id int not null,
                 book_id int not null,
                 quantity int NOT NULL,
                 total_cost decimal NOT NULL,
                 order_date Default SYSDATE,
                 CONSTRAINT orders_id PRIMARY KEY(order_id),
                 CONSTRAINT customer_id FOREIGN KEY(cus_id) REFERENCES user_details(cus_id),
                 CONSTRAINT books_id FOREIGN KEY(book_id) REFERENCES bookdetails(book_id));

                          
ALTER TABLE orderdetails
MODIFY  order_date Default SYSDATE;

create SEQUENCE order_id increment by 1 start with 300;
drop sequence order_id;

create table rating(id int generated always as identity(start with 1 increment by 1),
                   cus_id int  not null,
                   book_id int  not null,
                   rating number(2,1),
                   CONSTRAINT customer FOREIGN KEY(cus_id) REFERENCES user_details(cus_id),
                  CONSTRAINT books_id FOREIGN KEY(book_id) REFERENCES bookdetails(book_id));


drop table rating cascade constraints;


create table cart(cart_id int generated always as IDENTITY(start with 100 increment by 1),
                  cus_id int Not Null,
                  book_id int Not Null,
                  FOREIGN KEY(cus_id) REFERENCES user_details(cus_id),
                  FOREIGN KEY(book_id) REFERENCES bookdetails(book_id));

drop table cart cascade constraints;
select Category,Description,book_title,book_code,price,publish_date,condition,bookimages from bookdetails where book_id in (select book_id from cart where cus_id in 106);
select name,phoneno,address,email_id,password,wallet from user_details where cus_id=108;



select * from cart;
select * from user_details;
select * from orderdetails;
select * from bookdetails;
select * from author_details;
select * from rating;


--truncate table bookdetails;
--truncate table orderdetails;
--truncate table rating;



commit;

desc user_details;
desc bookdetails;
desc author_details;
desc cart;
desc orderdetails;
desc rating;

--select * from user_details inner join orderdetails on user_details.cus_id = orderdetails.cus_id 
--inner join bookdetails on orderdetails.book_id =bookdetails.book_id WHERE user_details.cus_id=107;

select Category,Description,book_title,book_code,price,publish_date,condition,bookimages from bookdetails where book_id in (select book_id from orderdetails where cus_id=106 );


select b.book_id,category,b.description,b.book_title,b.book_code,b.price,b.bookimages,b.publish_date,b.condition,b.bookimages,NVL(a.name,'NOT AVAILABLE')as AuthorName,NVL(a.email_id,'NOT AVAILABLE') from bookdetails b left join author_details a on b.book_id = a.book_id ;
select b.category,b.description,b.book_title,b.book_code,b.price,b.publish_date,b.condition,b.bookimages,NVL(a.name,'NOT AVAILABLE')as AuthorName,NVL(a.email_id,'NOT AVAILABLE') from bookdetails b left join author_details a on b.book_id = a.book_id  where b.book_id in (select c.book_id from cart c where c.cus_id in 107);


select b.category,b.description,b.book_title,b.book_code,b.price,b.publish_date,b.condition,NVL(a.name,'NOT AVAILABLE')as AuthorName,NVL(a.email_id,'NOT AVAILABLE'),NVL(r.rating,0),b.bookimages from bookdetails b left join author_details a on b.book_id = a.book_id left join rating r on b.book_id = r.book_id where price <=200;

select  Distinct (b.category),b.description,b.book_title,b.book_code,b.price,b.publish_date,b.condition,NVL(a.name,'NOT AVAILABLE')as AuthorName,NVL(a.email_id,'NOT AVAILABLE'),NVL(r.rating,0),b.bookimages from bookdetails b, author_details a,rating r where b.book_id = a.book_id(+) and b.book_id = r.book_id(+);
select * from author_details;


select avg(rating) from rating where book_id =1005;
select * from cart;
delete from cart where cus_id=108;

commit;

delete from orderdetails where cus_id=107;

select b.category,b.description,b.book_title,b.book_code,b.price,b.publish_date,b.condition,NVL(a.name,'NOT AVAILABLE')as AuthorName,NVL(a.email_id,'NOT AVAILABLE'),b.bookimages from bookdetails b left join author_details a on b.book_id = a.book_id  where b.book_id in (select c.book_id from cart c where c.cus_id in 108);