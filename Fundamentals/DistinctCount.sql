-- @@@DISTINCT, COUNT@@@
-- select distinct rental_rate from film
-- rental_rate ler arasında unique olanları bulur
-- select distinct replacement_cost from film
-- replacement_cost lar arasında unique olanları bulur
-- select distinct release_year from film
-- tek bir release_year değeri var (2006)

-- select count(*) from actor where first_name = 'Penelope'
-- where içindeki şartı sağlayan kayıt sayısı
-- select count(*) from actor where first_name like 'A%'
-- where içindeki şartı sağlayan kayıt sayısı

-- select count(*) from actor
-- toplam kaç veri var, birbirinden farklı ya da aynı
-- select distinct first_name from actor
-- isimleri birbirinden farklı olan veriler
-- select count(distinct first_name) from actor
-- isimleri birbirinden farklı olan verilerin sayısı

-- 1)film tablosunda bulunan replacement_cost sütununda bulunan birbirinden farklı değerleri sıralayınız.
-- select distinct replacement_cost from film
-- 2)film tablosunda bulunan replacement_cost sütununda birbirinden farklı kaç tane veri vardır?
-- select count(distinct replacement_cost) from film
-- 3)film tablosunda bulunan film isimlerinde (title) kaç tanesini T karakteri ile başlar ve aynı zamanda rating 'G' ye eşittir?
-- select count(*) from film where title like 'T%' and rating ='G'
-- 4)country tablosunda bulunan ülke isimlerinden (country) kaç tanesi 5 karakterden oluşmaktadır?
-- select count(*) from country where length(country)=5
-- 5)city tablosundaki şehir isimlerinin kaç tanesi 'R' veya r karakteri ile biter?
-- select count(*) from city where city ilike '%R'