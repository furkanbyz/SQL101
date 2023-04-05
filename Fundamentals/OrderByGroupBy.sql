-- @@@ORDER BY@@@
-- select title, length from film order by length 
-- select title, length from film order by length asc
-- iki artan şekilde sıralar ve aynı çıktıyı verir
-- select title, length from film order by length desc
-- azalan şekilde sıralar
-- select title, length from film order by title
-- alfabetik sıraya göre sıralar

-- select title, rental_rate, length from film
-- where title like 'A%'
-- order by rental_rate asc, length desc



-- @@@GROUP BY@@@
-- select rental_rate, count(*), max(length) from film group by rental_rate
-- select rating, count(*)  from film group by rating
-- select min(length), replacement_cost from film group by replacement_cost 
-- select replacement_cost, rental_rate, min(length) from film group by replacement_cost, rental_rate
-- lengthi minimum olan verinin replacement_cost, rental_rate değerleri

-- select replacement_cost, rental_rate, min(length) from film group by replacement_cost, rental_rate order by replacement_cost, rental_rate desc
-- replacement değeri artan, rental değeri azalan şekilde sıralandı
