Cho cơ sở dữ liệu cho việc quản lý các sản phẩm trong một cửa hàng như sau:
create database kiemtratruyvan;
use kiemtratruyvan;
-------------------------------------------------------------------------------------
1. Bảng: Categories (Danh mục sản phẩm)
category_id (PK): Khóa chính danh mục
category_name: Tên danh mục
create table Categories(
category_id int primary Key auto_increment,
category_name varchar(100)
);
insert into Categories(category_name)
value('ao'),('quan'),('thiet bi dien tu'),('may tinh'),('camera'); 
-------------------------------------------------------------------------------------
2. Bảng: Products (Sản phẩm)
product_id (PK): Khóa chính sản phẩm
product_name: Tên sản phẩm
category_id (FK): Khóa ngoại liên kết đến bảng Categories
price: Giá sản phẩm
create table Products(
product_id int primary key auto_increment,
product_name varchar(100),
category_id int,
foreign key(category_id) references Categories(category_id),
price int
);

insert into Products (product_name, category_id, price)
value('ao', 1, 50), ('laptop', 4, 1000), ('may quay', 3, 900), 
('quan', 2, 20), ('ram', 4, 300); 
-------------------------------------------------------------------------------------
3. Bảng: Customers (Khách hàng)
customer_id (PK): Khóa chính khách hàng
customer_name: Tên khách hàng
email: Địa chỉ email khách hàng
create table Customers(
customer_id int primary key auto_increment,
customer_name varchar(100),
email varchar(100)
);

insert into Customers(customer_name, email)
value('hoang', 'askjbkjsa@.com'), ('nam', 'akvbkdsjbvk@.com'),
('dung', 'ajsbvhjsv@.com'), ('trung', 'aksbvkjsabv@.com'),
('hung', 'kasbjsva@.com');
-------------------------------------------------------------------------------------
4. Bảng: Orders (Đơn đặt hàng)
order_id (PK): Khóa chính đơn đặt hàng
customer_id (FK): Khóa ngoại liên kết đến bảng Customers
order_date: Ngày đặt hàng
create table Orders(
order_id int primary key auto_increment,
customer_id int,
foreign key(customer_id) references Customers(customer_id),
order_date date
);

insert into Orders(customer_id, order_date)
value(1, '2000-10-29'), (2, '1990-02-12'), (4, '2000-10-29'),
(1, '2000-10-29'), (2, '2000-10-29'), (5, '2000-10-29');
-------------------------------------------------------------------------------------
5. Bảng: OrderDetails (Chi tiết đơn đặt hàng)
order_detail_id (PK): Khóa chính chi tiết đơn đặt hàng
order_id (FK): Khóa ngoại liên kết đến bảng Orders
product_id (FK): Khóa ngoại liên kết đến bảng Products
quantity: Số lượng sản phẩm trong đơn đặt hàng
create table OrderDetails(
order_detail_id int primary key auto_increment,
order_id int,
foreign key(order_id) references Orders(order_id),
product_id int,
foreign key(product_id) references Products(product_id),
quantity int
);
insert into OrderDetails(order_id, product_id,quantity)
value(1, 2, 3), (2, 3, 2), (3, 2, 21), (4, 5, 23), (5, 3, 12312), (6, 2, 123);
-------------------------------------------------------------------------------------
Yêu cầu:
Viết các câu lệnh truy vấn cho các yêu cầu sau:

1. Lấy thông tin tất cả các sản phẩm đã được đặt trong một đơn đặt hàng cụ thể.
select Products.* from OrderDetails
inner join Products on Products.product_id = OrderDetails.product_id
where order_id = 2;
-------------------------------------------------------------------------------------
2. Tính tổng số tiền trong một đơn đặt hàng cụ thể.
select sum(price) from OrderDetails
inner join Products on Products.product_id = OrderDetails.product_id
where  order_id = 2;
-------------------------------------------------------------------------------------
3. Lấy danh sách các sản phẩm chưa có trong bất kỳ đơn đặt hàng nào.
select Products.* from OrderDetails
inner join Products on Products.product_id = OrderDetails.product_id
where order_id is null;
-------------------------------------------------------------------------------------
4. Đếm số lượng sản phẩm trong mỗi danh mục. (category_name, total_products)
select Categories.category_name, count(*) as 'total_products' from Products
inner join Categories on Categories.category_id = Products.category_id
group by category_name;
-------------------------------------------------------------------------------------
5. Tính tổng số lượng sản phẩm đã đặt bởi mỗi khách hàng (customer_name, total_ordered)
select Customers.customer_name, sum(quantity) as 'total_ordered' from  Orders 
inner join OrderDetails on OrderDetails.order_id = Orders.order_id
inner join Customers on Customers.customer_id = Orders.customer_id
group by customer_name;
-------------------------------------------------------------------------------------
6. Lấy thông tin danh mục có nhiều sản phẩm nhất (category_name, product_count)
select  Categories.category_name, count(*) as 'product_count'from Categories
inner join Products on  Categories.category_id = Products.category_id
group by category_name
order by count(*) desc
limit 1;
-------------------------------------------------------------------------------------
7. Tính tổng số sản phẩm đã được đặt cho mỗi danh mục (category_name, total_ordered)
select Categories.category_name, count(*) as 'total_ordered' from Products
inner join Categories on Categories.category_id =  Products.category_id
group by category_name;
-------------------------------------------------------------------------------------
8. Lấy thông tin về top 3 khách hàng có số lượng sản phẩm đặt hàng lớn nhất (customer_id, customer_name, total_ordered)
select Customers.customer_name, sum(quantity) as 'total_ordered' from  Orders 
inner join OrderDetails on OrderDetails.order_id = Orders.order_id
inner join Customers on Customers.customer_id = Orders.customer_id
group by customer_name
order by total_ordered desc
limit 3;
-------------------------------------------------------------------------------------
9. Lấy thông tin về khách hàng đã đặt hàng nhiều hơn một lần trong khoảng thời gian cụ thể từ ngày A -> ngày B (customer_id, customer_name, total_orders)
select Customers.*, count(*) as 'total_orders', Orders.order_date from Orders
inner join Customers on Customers.customer_id = Orders.customer_id
group by customer_id, order_date
having  day(order_date) between 22 and 29;
-------------------------------------------------------------------------------------
10.Lấy thông tin về các sản phẩm đã được đặt hàng nhiều lần nhất và số lượng đơn đặt hàng tương ứng (product_id, product_name, total_ordered)
