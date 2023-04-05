-- @@@ALIES(AS), CONCAT@@@
-- select first_name as isim, last_name as soyisim from customer
-- select first_name isim, last_name soyisim from customer
-- select first_name "isim test", last_name "soyisim test" from customer

-- select count(*) as "aktor sayısı" from actor
-- as ailas'ın kısaltması ve geçisi isim verir

-- select first_name, last_name from actor
-- select concat(first_name,' ',last_name) as "İsim ve Soyisim" from actor
-- concat fonk ile ad ve soyad birleştirildi as ile de geçici isim verildi.




-- @@@AGGREGATE FUNC.@@@
-- select max(replacement_cost) from film
-- select min(replacement_cost) from film
-- select avg(length) from film
-- length sütunun ortalaması
-- select round(avg(length),3) from film
-- round ile float türündeki değerleri 3 basamak ile sınırladık
-- select sum(rental_rate) from film
-- select max(length), sum(replacement_cost) from film
-- select max(length) from film where rental_rate in (0.99, 2.99)

-- 1)film tablosunda bulunan rental_rate sütunundaki değerlerin ortalaması nedir?
-- select round(avg(rental_rate), 3) from film
-- 2)film tablosunda bulunan filmlerden kaç tanesi 'C' karakteri ile başlar?
-- select count(*) from film where title like 'C%'
-- 3)film tablosunda bulunan filmlerden rental_rate değeri 0.99 a eşit olan en uzun (length) film kaç dakikadır?
-- select max(length) from film where rental_rate = 0.99 
-- 4)film tablosunda bulunan filmlerin uzunluğu 150 dakikadan büyük olanlarına ait kaç farklı replacement_cost değeri vardır?
-- select count(distinct replacement_cost) from film where length>150