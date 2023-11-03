Chúng ta áp dụng INNER JOIN để xử lý các yêu cầu sau (sử dụng database sakila):

1.Lấy ra tên các thành phố và tên các quốc gia tương ứng của thành phố đó
select city.city, country.country from city
inner join country on city.country_id = country.country_id;
--------------------------------------------------------------------------------------
2.Lấy ra tên các thành phố của nước Mỹ
select city.city, country.country from city inner join country
on city.country_id = country.country_id
where country = 'America';
--------------------------------------------------------------------------------------
3.Lấy ra các địa chỉ của thành phố Hanoi
select address.address, city.city, country.country from city inner join country
on city.country_id = country.country_id
inner join address
on city.city_id = address.city_id
where city = 'Hanoi';
--------------------------------------------------------------------------------------
4.Lấy ra tên, mô tả, tên category của các bộ phim có rating = R
select film.title, film.description, category.name from film
inner join film_category on film.film_id = film_category.film_id
inner join category on film_category.category_id = category.category_id
where rating = 'R';
--------------------------------------------------------------------------------------
5.Lấy ra thông tin của các bộ phim mà diễn viên NICK WAHLBERG tham gia
select * from film  // chỉ hiển thị film select film.* from film
inner join film_actor on film.film_id = film_actor.film_id 
inner join actor on film_actor.actor_id = actor.actor_id
where first_name = 'NICK' and first_name = 'WAHLBERG';
--------------------------------------------------------------------------------------
6.Tìm email của các khách hàng ở Mỹ
select * from customer  // chỉ hiển thị customer select customer.* from customer
inner join address on customer.address_id = address.address_id
inner join city on address.city_id = city.city_id
inner join country on city.country_id = country.country_id
where country = 'America';