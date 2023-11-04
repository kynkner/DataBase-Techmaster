Tạo các bảng cấu trúc sau:

Bảng “Students”:
student_id (Primary Key)
student_name
student_age

Bảng “Courses”:
course_id (Primary Key)
course_name
course_description

Bảng “Enrollments” (quan hệ n-n giữa Students và Courses):
enrollment_id (Primary Key)
student_id (Foreign Key liên kết đến Students)
course_id (Foreign Key liên kết đến Courses)
Insert tầm 20 bản ghi.

Bài tập 1: Lấy danh sách tất cả sinh viên và thông tin khóa học mà họ đã đăng ký.
select Students.student_name, Courses.course_name from Students 
inner join Courses on Students.student_id = Courses.course_id; 
-----------------------------------------------------------------------------------------------------
Bài tập 2: Lấy tên của tất cả các khóa học mà một sinh viên cụ thể đã đăng ký (sử dụng tham số student_id).
select Courses.course_name from Enrollments
inner join Courses on Courses.course_id = Enrollments.course_id
where student_id = 1;
-----------------------------------------------------------------------------------------------------
Bài tập 3: Lấy danh sách tất cả sinh viên và số lượng khóa học mà họ đã đăng ký.
select Students.student_name, count(*) as 'quantity' from Enrollments
inner join Students on Students.student_id = Enrollments.student_id
group by student_name; 
-----------------------------------------------------------------------------------------------------
Bài tập 4: Lấy tất cả các khóa học mà chưa có sinh viên nào đăng ký.
select Courses.course_name, count(*) from Enrollments
inner join Courses on Courses.course_id = Enrollments.course_id
group by course_name
having count(*) is null;
-----------------------------------------------------------------------------------------------------
Bài tập 5: Lấy tất cả sinh viên và thông tin khóa học mà họ đã đăng ký, sắp xếp theo tên sinh viên và tên khóa học.
select Students.student_name, Courses.course_name from Enrollments
inner join Students on Students.student_id = Enrollments.student_id
inner join Courses on Courses.course_id = Enrollments.course_id
order by student_name asc,  course_name asc;
-----------------------------------------------------------------------------------------------------
Bài tập 6: Lấy tất cả các sinh viên và thông tin của họ, cùng với tên khóa học mà họ đăng ký (nếu có).
select Students.* , Courses.course_name from Enrollments
inner join Students on Students.student_id = Enrollments.student_id
inner join Courses on Courses.course_id = Enrollments.course_id;
-----------------------------------------------------------------------------------------------------
Bài tập 7: Lấy danh sách tất cả sinh viên và thông tin của họ, cùng với tên khóa học mà họ đăng ký (nếu có). Sắp xếp theo tên sinh viên và tuổi từ cao xuống thấp.
select Students.* , Courses.course_name from Enrollments
inner join Students on Students.student_id = Enrollments.student_id
inner join Courses on Courses.course_id = Enrollments.course_id
order by student_name asc, student_age desc;
-----------------------------------------------------------------------------------------------------
Bài tập 8: Lấy tất cả các khóa học và số lượng sinh viên đã đăng ký vào mỗi khóa học.
select Courses.course_name, count(*) as'quantity' from Enrollments
inner join Courses on Courses.course_id = Enrollments.course_id
group by course_name;


