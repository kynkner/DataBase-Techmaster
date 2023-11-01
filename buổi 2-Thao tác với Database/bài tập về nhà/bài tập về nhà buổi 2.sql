1.Tạo một bảng mới có tên “Product” với các trường: “product_id” , “product_name” (varchar), “price” (double) và “quantity” (int).
create table Product(
product_id int,
product_name varchar(50),
price double,
quantity int
)
---------------------------------------------------------------------------------------
2.Thêm 10 sản phẩm vào bảng “Product” với thông tin sản phẩm bất kỳ.
insert into Product(product_id, product_name, price, quantity)
value (1, 'a', 1000, 12),
(2, 'b', 1001, 12),
(3, 'c', 1002, 12),
(4, 'd', 1003, 12),
(5, 'g', 1004, 12),
(6, 'h', 1005, 12),
(7, 'e', 1006, 12),
(8, 'f', 1007, 12),
(9, 'j', 1008, 12),
(10, 'q', 1009, 12)
----------------------------------------------------------------------------------------
3.Thêm một trường “description” (varchar) vào bảng “Product” sau khi đã tạo bảng.
alter table Product
add description varchar(50);
----------------------------------------------------------------------------------------
4.Cập nhật giá (price) của sản phẩm có “product_id” là 1 thành 99.
set SQL_SAFE_UPDATES =0;
update Product
SET price = 99
where product_id = '1';
----------------------------------------------------------------------------------------
5.Tăng giá của sản phẩm có “product_id” là 2 lên 10%.
set SQL_SAFE_UPDATES =0;
update Product
SET price = price * 1.10
where product_id = '2';
----------------------------------------------------------------------------------------
---------------------------------
Dựa vào bảng Person đã import
--------------------------------
----------------------------------------------------------------------------------------
6.Cập nhật tên của người có id là 10 thành “John Doe”.
set SQL_SAFE_UPDATES =0;
update Person
SET fullname = 'John Doe'
where id = '10';
----------------------------------------------------------------------------------------
7.Đổi quốc gia của người có id là 3 thành “Canada”.
set SQL_SAFE_UPDATES =0;
update Person
SET country = 'Canada'
where id = '3';
----------------------------------------------------------------------------------------
8.Sửa ngày sinh của người có id là 7 thành “1990-05-15” và quốc gia thành Việt Nam.
set SQL_SAFE_UPDATES =0;
update Person
SET birthday = '1990-05-15', country ='Việt Nam'
where id = '7';
----------------------------------------------------------------------------------------
9.Tăng mức lương của người có id là 40 lên 10%.
set SQL_SAFE_UPDATES =0;
update Person
SET salary = salary * 1.10
where id = '40';
----------------------------------------------------------------------------------------
10.Giảm lương của những người nào có mức lương trên 6000 xuống 15%
set SQL_SAFE_UPDATES =0;
update Person
SET salary = salary * 0.85
where salary > 6000;