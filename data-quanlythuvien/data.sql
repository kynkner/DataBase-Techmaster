create database quanlythuvien;

use quanlythuvien;

select *from nhan_vien;

create table account(
	id_account int primary key auto_increment,
    name varchar(100),
    password varchar(100)
);

create table wage_staff(
id_wage int primary key auto_increment,
position varchar(100),
wage int
);

create table staff(
id_satff int primary key auto_increment,
name varchar(100),
birthday date,
address varchar(100),
phone_number varchar(20),
id_wage int,
foreign key(id_wage) references wage_staff(id_wage),
id_account int,
foreign key (id_account) references account(id_account),
unique(id_account)
);

create table typereader(
id_typereader int primary key auto_increment,
type_of_person varchar(50)
);

create table reader_typereader(
id_reader int primary key auto_increment,
name varchar(100),
birthday date,
address varchar(100),
phone_number varchar(20),
id_typereader int,
foreign key(id_typereader) references typereader(id_typereader)
);

create table typebook(
id_typebook int primary key auto_increment,
book_type varchar(100),
describe_book varchar(200)
);

create table book_typebook(
id_book int primary key auto_increment,
name varchar(100),
author varchar(100),
publishing year,
id_typebook int,
foreign key(id_typebook) references typebook(id_typebook)
);

create table book_supplier(
id_booksupplier int primary key auto_increment,
name varchar(100),
address varchar(100),
phone_number varchar(100)
);

create table kind_of_book(
id_bill int primary key auto_increment,
id_book int,
foreign key(id_book) references book_typebook(id_book),
id_booksupplier int,
foreign key(id_booksupplier) references book_supplier(id_booksupplier),
date_added date,
price int
); 

create table borrowed_readers(
id_payment int primary key auto_increment,
id_reader int,
foreign key(id_reader) references reader_typereader(id_reader),
id_book int,
foreign key (id_book) references book_typebook(id_book)
);

create table borrow_books(
id_borrowbook int primary key auto_increment,
id_payment int,
foreign key (id_payment) references borrowed_readers(id_payment),
borowed_day date,
expected_payment date
);

create table return_books(
id_paybook int primary key auto_increment,
id_payment int,
foreign key (id_payment) references borrowed_readers(id_payment),
pay_day date,
condition_book double
);

create table book_loan_receipt(
id_bookbill int primary key auto_increment,
id_borrowbook int,
foreign key(id_borrowbook) references borrow_books(id_borrowbook),
id_paybook int, 
foreign key(id_paybook) references return_books(id_paybook),
confirm varchar(30),
date_created date,
id_satff int,
foreign key(id_satff) references staff(id_satff)
);

