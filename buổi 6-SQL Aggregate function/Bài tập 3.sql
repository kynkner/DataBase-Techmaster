1. Tìm địa chỉ có chứa từ ‘San’ .
select address.address from address
where address like '%San%';
---------------------------------------------------------------------------------------------------
2. Tìm địa chỉ bắt đầu bằng ‘1’ và kết thúc bằng ‘y’
select address.address from address
where address like '1%y';
---------------------------------------------------------------------------------------------------
3. Tìm địa chỉ chứa chữ ‘a’ vị trí thứ 3
select Person.country from Person
where country like '__a%';
---------------------------------------------------------------------------------------------------
4. Tìm tên khách hàng có địa chỉ bằng có kết thúc chữ ‘o’
select Person.fullname from Person
where country like '%e';
---------------------------------------------------------------------------------------------------
5. Tìm tên bộ phim có chứa category = ‘Games’;
select film.title from film
inner join film_category on film_category.film_id = film.film_id
inner join category on category.category_id = film_category.category_id
where name = 'Games';
---------------------------------------------------------------------------------------------------
6. Từ bảng Person tìm nhân viên lương trong khoảng 2000 đến 300 (sử dụng between)
select Person.* from Person
where salary between 2000 and 3000;
---------------------------------------------------------------------------------------------------
7. Từ bảng Person tìm nhân viên sinh tháng 7 đến tháng 12. (sử dụng between)
select Person.* from Person
where month(birthday) between 7 and 12;
---------------------------------------------------------------------------------------------------
8. Lấy danh sách những người có sinh nhật trong tháng này và hiện thị thông tin “Happy birthday”!
select Person.*,
case 
	when birthday then 'Happy birthday'
    else ' '
    end as 'chuc_mung'
    from Person
where month(birthday) = month(now());
---------------------------------------------------------------------------------------------------
9. Tìm tất cả những có năm sinh 2000, 1990, 1991 bảng Person.
select Person.* from Person
where year(birthday) in ( 2000, 1990, 1991);
