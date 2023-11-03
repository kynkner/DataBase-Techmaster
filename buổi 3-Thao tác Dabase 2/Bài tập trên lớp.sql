Từ bảng Person hay viết các câu truy vấn sau:

1.Lấy danh sách các quốc gia duy nhất.
select distinct country from Person; 
--------------------------------------------------------------------------------
2.Sắp xếp danh sách người theo tên đầy đủ (fullname) theo thứ tự tăng dần.
select * from  Person order by fullname asc;
--------------------------------------------------------------------------------
3.Sắp xếp danh sách người theo nghề nghiệp (job) theo thứ tự giảm dần.
select * from  Person order by job desc;
--------------------------------------------------------------------------------
4.Lấy danh sách các nghề nghiệp (job) duy nhất mà người trong bảng đang làm.
select distinct job from Person;
--------------------------------------------------------------------------------
5.Lấy tổng số người theo từng quốc gia và sắp xếp theo số lượng người giảm dần.
 select country, count(*) as 'tong nguoi' from Person
 group by country
 order by count(*) desc;
--------------------------------------------------------------------------------
6.Tính tổng lương (salary) của tất cả người trong bảng.
 select sum(salary) as 'tong luong' from Person;
--------------------------------------------------------------------------------
7.Tính tổng lương trung bình của người theo từng nghề nghiệp (job) và sắp xếp theo lương trung bình tăng dần.
 select job, avg(salary) as'trung binh luong' from Person
 group by job;
--------------------------------------------------------------------------------
8.Lấy ra người có lương (salary) lớn hơn 50000 và ngày sinh (birthday) nằm trong khoảng ‘1990-01-01’ đến ‘1995-12-31’.
 select * from Person
 where salary > 50000 and birthday between '1990-01-01' and '1995-12-31';
--------------------------------------------------------------------------------
9.Lấy ra người có lương (salary) lớn hơn 60000 và nghề nghiệp (job) là ‘Developer’ hoặc ‘Engineer’.
 select * from Person
 where salary > 60000 and ( job = 'Developer' or job = 'Engineer');
--------------------------------------------------------------------------------
10.Lấy ra danh sách các nghề nghiệp (job) duy nhất mà có ít nhất 3 người làm.
 select job, count(*) as 'quantity' from Person
 group by job having count(*) >= 3;
--------------------------------------------------------------------------------
11.Lấy ra người nam (gender = ‘Male’) có lương (salary) cao nhất.
 select * from Person
 where gender = 'Male'
 order by salary desc
 limit 1;
--------------------------------------------------------------------------------
12.Lấy ra người nữ (gender = ‘Female’) có lương (salary) thấp nhất.
 select * from Person
 where gender = 'Female'
 order by salary asc
 limit 1;
--------------------------------------------------------------------------------
13.Lấy danh sách người nam và người nữ (không trùng lặp) theo thứ tự tên đầy đủ tăng dần.
select distinct fullname from Person
order by fullname asc; 
--------------------------------------------------------------------------------
14.Đếm số người sinh vào các tháng khác nhau và sắp xếp theo thứ tự tháng tăng dần.
select  month(birthday) as 'thang', count(*) as 'quantity' from Person
group by month(birthday) 
order by count(*) asc;