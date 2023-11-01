Tạo database mới có tên quanlysinhdiem
CREATE DATABASE quanlysinhdiem;
---------------------------------------------------------------------------
Tạo các bảng:

1.tbl_sinhvien (id, ten, tuoi, gioiTinh, maLop)
create table tbl_sinhvien(
id int,
ten varchar(50),
tuoi int,
gioiTinh varchar(20),
maLop varchar(50)
);
---------------------------------------------------------------------------
2.tbl_giaovien (id, ten, tuoi, gioiTinh, soNamKN)
create table tbl_giaovien(
id int,
ten varchar(50),
tuoi int,
gioiTinh varchar(20),
soNamKN varchar(50)
);
---------------------------------------------------------------------------
3.tbl_diem (id, maSV, diemToan, diemLy, diemHoa)
create table tbl_diem(
id int,
maSV varchar(50),
diemtoan int,
diemly int,
diemhoa int
);
---------------------------------------------------------------------------
4.Thêm data vào các bảng, mỗi bảng 10 records
4.1 Thêm data vào bảng tbl_sinhvien
insert into tbl_sinhvien(id, ten, tuoi, gioiTinh, maLop)
value(1, 'a', 21, 'nam', 'b21ksjdh2'),
(2, 'a', 21, 'nam', 'b21ksjdh2'),
(3, 'a', 21, 'nam', 'b21ksjdh2'),
(4, 'a', 21, 'nam', 'b21ksjdh2'),
(5, 'a', 21, 'nam', 'b21ksjdh2'),
(6, 'a', 21, 'nam', 'b21ksjdh2'),
(7, 'a', 21, 'nam', 'b21ksjdh2'),
(8, 'a', 21, 'nam', 'b21ksjdh2'),
(9, 'a', 21, 'nam', 'b21ksjdh2'),
(10, 'a', 21, 'nam', 'b21ksjdh2');
----------------------------------------------------------------------------
4.2 Thêm data vào bảng tbl_giaovien
insert into tbl_giaovien(id, ten, tuoi, gioiTinh, soNamKN)
value(1, 'a', 21, 'nam', 5),
(2, 'a', 21, 'nam', 5),
(3, 'a', 21, 'nam', 5),
(4, 'a', 21, 'nam', 5),
(5, 'a', 21, 'nam', 5),
(6, 'a', 21, 'nam', 5),
(7, 'a', 21, 'nam', 5),
(8, 'a', 21, 'nam', 5),
(9, 'a', 21, 'nam', 5),
(10, 'a', 21, 'nam', 5);
----------------------------------------------------------------------------
4.3 Thêm data vào bảng tbl_diem
insert into tbl_diem(id, maSv, diemtoan, diemly, diemhoa)
value(1, 'a', 6, 8, 9),
(2, 'a', 6, 8, 9),
(3, 'a', 6, 8, 9),
(4, 'a', 6, 8, 9),
(5, 'a', 6, 8, 9),
(6, 'a', 6, 8, 9),
(7, 'a', 6, 8, 9),
(8, 'a', 6, 8, 9),
(9, 'a', 6, 8, 9),
(10, 'a', 6, 8, 9);
---------------------------------------------------------------------------
5.Tiến hành thực hành, thay đổi cấu trúc bảng bằng alter, update ,v…v… bằng các kiến thức đã học.
5.1 Thay đổi cấu trúc bảng tbl_sinhvien
// tạo cột mới
alter table tbl_sinhvien
add ngaytao date;

// cập nhập lại tên sinh viên với id = 1
set SQL_SAFE_UPDATES =0;
update tbl_sinhvien
set ten = 'dung'
where id= 1;

// xóa hàng có id = 1
delete from tbl_sinhvien where id = 1;
---------------------------------------------------------------------------
5.2 Thay đổi cấu trúc bảng tbl_giaovien
// tạo cột mới
alter table tbl_giaovien
add ngaytao date;

// cập nhập lại tên giáo viên với id = 1
set SQL_SAFE_UPDATES =0;
update tbl_sinhvien
set ten = 'dung'
where id= 1;

// xóa hàng có id = 1
delete from tbl_gianvien where id = 1;
---------------------------------------------------------------------------
5.3 Thay đổi cấu trúc bảng tbl_diem
// tạo cột mới
alter table tbl_diem
add ngaytao date;

// cập nhập lại điểm toán với id = 1
set SQL_SAFE_UPDATES =0;
update tbl_diem
set diemtoan = 8
where id= 1;

// xóa hàng có id = 1
delete from tbl_diem where id = 1;