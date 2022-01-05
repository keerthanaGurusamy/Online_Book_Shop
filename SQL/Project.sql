create table user_details(cus_id int Default cus_id.nextval,
                         name VARCHAR2(50) NOT NULL,
                         phoneNo NUMBER NOT NULL,
                         role Varchar2(10) Default 'user',
                         address VARCHAR2(100) NOT NULL,
                         email_id VARCHAR2(30)NOT NULL,
                         password VARCHAR2(30)NOT NULL,
                         wallet int Not Null,
                         CONSTRAINT cus PRIMARY KEY(cus_id),UNIQUE(email_id),UNIQUE(phoneNo));

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
                 order_date timestamp default current_timestamp,
                 CONSTRAINT orders_id PRIMARY KEY(order_id),
                 CONSTRAINT customer_id FOREIGN KEY(cus_id) REFERENCES user_details(cus_id),
                 CONSTRAINT books_id FOREIGN KEY(book_id) REFERENCES bookdetails(book_id));

create SEQUENCE order_id increment by 1 start with 300;
drop sequence order_id;

create table rating(id int generated always as identity(start with 1 increment by 1),
                   cus_id int  not null,
                   book_id int  not null,
                   rating number(2,1));


alter table  bookdetails add bookimages varchar2(4000);

update bookdetails set bookimages='https://s.wsj.net/public/resources/images/ED-AZ816_bkrvin_JV_20200625175244.jpg' where book_code='B10'; 
commit;
drop table bookdetails cascade constraints;
truncate TABLE bookdetails;

select * from bookdetails;
select * from cart;
select * from user_details;
select * from orderdetails;
select * from author_details;
select * from rating;

update bookdetails set category='Architecture',description='A fascinating, thought-provoking journey into our built environment',book_code='B10',
publish_date='12-11-2021',condition='New',bookimages='https://d2g9wbak88g7ch.cloudfront.net/productimages/images200/725/9781787395725.jpg',
price=500 where book_title='The Great Indoors';

--select * from bookdetails inner join author_details on bookdetails.book_id=author_details.book_id;
commit;
desc user_details;
desc bookdetails;
desc author_details;
desc cart;
desc order_details;
desc rating;

drop table order_details cascade constraints;


create table order_details(order_id int NOT NULL,
                          cus_id int NOT NULL,
                          book_id int NOT NULL, 
                          order_date TIMESTAMP default current_timestamp,
                          status varchar2(50) NOT NULL,
                          CONSTRAINT c_id FOREIGN KEY(cus_id) REFERENCES user_details(cus_id),
                          CONSTRAINT o_id FOREIGN KEY(order_id) REFERENCES cart(order_id));
                          
                          
                          
                          
                          update bookdetails price=? where book_title=?
