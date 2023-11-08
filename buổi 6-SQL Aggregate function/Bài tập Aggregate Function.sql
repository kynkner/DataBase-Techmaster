Chúng ta áp dụng các hàm SUM, COUNT, AVG, MIN, MAX vào các ví dụ sau. Yêu cầu sử dụng các bảng trong database sakila:

1. Tính số lượng bản ghi ở bảng actor
select count(*) as 'So luong ban ghi' from actor
where actor_id;
----------------------------------------------------------------------------------
2. Xác định thời lượng dài nhất và ngắn nhất của các bộ phim trong bảng film
select max(length), min(length) from film;
-----------------------------------------------------
3. Có bao nhiêu bộ phim có rating = R ?
select count(*) as 'tong bo phim co rating = R' from film
where rating = 'R';
------------------------------------------------------------------
4. Trung bình rental_rate của các bộ phim dài hơn 60 phút ?
select avg(rental_rate) from film
where rental_rate > 1;