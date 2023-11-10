Bài tập 1: Lấy danh sách các bộ phim (films) thuộc thể loại “Action.”
select film.* from film_category
inner join film on film.film_id = film_category.film_id
inner join category on film_category.category_id = category.category_id
where name = 'Action';
-----------------------------------------------------------------------------------------------------
Bài tập 2: Lấy danh sách các bộ phim (films) và thể loại (categories) của chúng.
select film.*, category.name from film_category
inner join film on film.film_id = film_category.film_id
inner join category on film_category.category_id = category.category_id;
-----------------------------------------------------------------------------------------------------
Bài tập 3: Lấy danh sách các bộ phim (films) và số lượng thể loại (categories) của mỗi bộ phim.
select film.film_id, film.title, COUNT(category.category_id) from film
inner join film_category on film.film_id = film_category.film_id
inner join category on category.category_id = film_category.category_id
group by film.film_id, film.title;
-----------------------------------------------------------------------------------------------------
Bài tập 4: Lấy danh sách các bộ phim (films) và thể loại (categories) của bộ phim có rating “PG-13.”
select film.*,category.name  as 'the loai' from film_category
inner join film on film.film_id = film_category.film_id
inner join category on film_category.category_id = category.category_id
where rating = 'PG-13';
-----------------------------------------------------------------------------------------------------
Bài tập 5: Lấy danh sách các diễn viên (actors) và số lượng bộ phim (films) 
thuộc thể loại “Family,” sắp xếp theo số lượng bộ phim giảm dần
select actor.first_name, actor.last_name, category.name, COUNT(film.film_id) from actor
inner join film_actor on actor.actor_id = film_actor.actor_id
inner join film on film.film_id = film_actor.film_id
inner join film_category on film.film_id = film_category.film_id
inner join category on category.category_id = film_category.category_id
where category.name = 'Family'
group by actor.first_name, actor.last_name, category.name
order by COUNT(film.film_id) desc;
-----------------------------------------------------------------------------------------------------
Bài tập 6: Lấy danh sách các bộ phim (films) và số lượng diễn viên (actors) tham gia, 
sắp xếp theo số lượng diễn viên giảm dần.
select film.title, COUNT(actor.actor_id) from film
inner join film_actor
on film.film_id = film_actor.film_id
inner join actor
on actor.actor_id = film_actor.actor_id
group by film.film_id
order by COUNT(actor.actor_id) desc;
-----------------------------------------------------------------------------------------------------
Bài tập 7: Lấy danh sách tất cả diễn viên (actors) có họ là “Smith” và tên bắt đầu bằng “J.”
select * from actor
where last_name = 'Smith' and first_name like 'J%';
-----------------------------------------------------------------------------------------------------
Bài tập 8: Lấy danh sách các bộ phim (films) phát hành trong năm 2015 với tổng doanh thu (revenue) lớn hơn 5000.
select film.*, sum(replacement_cost * rental_rate) as 'revenue' from film
group by film_id
having  release_year = '2006' and revenue > 5000;
-----------------------------------------------------------------------------------------------------
Bài tập 9: Lấy danh sách bộ phim (films) và ngôn ngữ (language) của từng bộ phim.
select film.* from film
inner join language on film.language_id = language.language_id;
-----------------------------------------------------------------------------------------------------
Bài tập 10. Lấy danh sách bộ phim có tên(title) bắt đầu bằng chữ ‘I’ và kết thúc bằng chữ N
select film.* from film
where title like 'I%N';