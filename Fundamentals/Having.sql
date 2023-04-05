-- @@@HAVİNG@@@
-- select rental_rate, count(*) from film group by rental_rate having count(*)>325
-- rental_rate e göre gruplandırılmış verilere koşul ekler
-- where satır bazlı gruplama, having sütun bazlı gruplama

-- select staff_id, count(amount) from payment group by staff_id having count(*)>7300
-- select customer_id, sum(amount) from payment group by customer_id having sum(amount)>100 order by sum(amount) desc

-- 1)film tablosunda bulunan filmleri rating değerlerine göre gruplayınız.
-- select rating from film group by rating
-- 2)film tablosunda bulunan filmleri replacement_cost sütununa göre grupladığımızda film sayısı 50 den fazla olan replacement_cost değerini ve karşılık gelen film sayısını sıralayınız.
-- select replacement_cost, count(*) from film group by replacement_cost having count(*)>50
-- 3)customer tablosunda bulunan store_id değerlerine karşılık gelen müşteri sayılarını nelerdir? 
-- select store_id, count(*) from customer group by store_id
-- 4)city tablosunda bulunan şehir verilerini country_id sütununa göre gruplandırdıktan sonra en fazla şehir sayısı barındıran country_id bilgisini ve şehir sayısını paylaşınız.
-- select country_id, count(city) from city group by country_id order by count desc limit 1