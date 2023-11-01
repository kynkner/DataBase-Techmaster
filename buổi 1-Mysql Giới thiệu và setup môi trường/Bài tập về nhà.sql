1.Ôn lại lí thuyết Database.
*Database là gì ?
Database (dịch ra Tiếng Việt là cơ sở dữ liệu) là một tập hợp các dữ liệu được sắp xếp một cách có hệ thống.

Database hỗ trợ 2 tính năng chính:

-Lưu trữ dữ liệu
-Thao tác với dữ liệu
Các thao tác với dữ liệu chủ yếu bao gồm:

-Đọc dữ liệu từ database
-Thêm dữ liệu mới
-Chỉnh sửa dữ liệu sẵn có
-Xoá dữ liệu
-Backup và khôi phục dữ liệu

**Phân loại database
Có nhiều cách khác nhau để phân loại database, trong nội dung bài học này mình sẽ phân database thành 2 loại: Quan hệ (relational) và phi quan hệ (non relational)

**Cơ sở dữ liệu quan hệ
Trong cơ sở dữ liệu quan hệ:

-Dữ liệu của mỗi một đối tượng được lưu trong từng bảng khác nhau, ví dụ: thông tin khách hàng được lưu trong bảng customer,  thông tin sản phẩm được lưu trong bảng product, thông tin về đơn hàng được lưu ở bảng order, …
-Một bảng gồm nhiều cột, mỗi cột lưu thông tin về một thuộc tính của đối tượng, mỗi dòng trong bảng là một instance của đối tượng
-Khi cần lưu thông tin về một đối tượng khác, ta sẽ tạo một bảng mới, ví dụ: Chúng ta có bảng author để lưu thông tin tác giả, nếu muốn lưu thêm bài viết của mỗi tác giả thì ta sẽ tạo một bảng mới là bảng post
-Giữa các bảng tồn tại các mối quan hệ: 1-1, 1-nhiều, nhiều-nhiều. Các quan hệ này được xây dựng dựa trên các ràng buộc PRIMARY KEY và FOREIGN KEY
-Để thao tác với dữ liệu, chúng ta sử dụng ngôn ngữ SQL

Các cơ sở dữ liệu MySQL, PostgreSQL, SQL Server là cơ sở dữ liệu quan hệ
---------------------------------------------------------------------------------------
2.Thực hành tạo Database.
	create database data_base;
-----------------------------------------------------------------------------------------
3.Xem trước cách tạo bảng ở bài 2: Tạo 1 bảng Person với các thông tin sau:
id: kiểu số nguyên,
fullname: chữ,
job: chữ,
birthday: ngày/tháng/năm,
salary: kiểu số,
address: chữ.
Thêm 10 bản ghi vào bảng trên.

select * from data_base.Person;
use data_base;
create table Person(
id int,
fullname text,
job text,
birthday date,
salary int,
address text
);

insert into Person(id, fullname, job, birthday, salary, address)
values (1, 'a', 'a', '2002-10-24', '5', 'Nam Dinh'),
(2, 'a', 'a', '2002-10-24', '5', 'Nam Dinh'),
(3, 'a', 'a', '2002-10-24', '5', 'Nam Dinh'),
(4, 'a', 'a', '2002-10-24', '5', 'Nam Dinh'),
(5, 'a', 'a', '2002-10-24', '5', 'Nam Dinh'),
(6, 'a', 'a', '2002-10-24', '5', 'Nam Dinh'),
(7, 'a', 'a', '2002-10-24', '5', 'Nam Dinh'),
(8, 'a', 'a', '2002-10-24', '5', 'Nam Dinh'),
(9, 'a', 'a', '2002-10-24', '5', 'Nam Dinh'),
(10, 'a', 'a', '2002-10-24', '5', 'Nam Dinh');
