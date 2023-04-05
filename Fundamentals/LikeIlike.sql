-- @@@LIKE, ILIKE@@@
-- select * from customer where first_name='Mary'

-- select * from customer where first_name like 'Ma%'
-- first_name kolonu Ma ile başlayıp herhangi bir şekilde devam eden tüm kayıtları verir

-- select * from customer where first_name like 'A%y'
--  baş harfi A son harfi y olan tüm kayıtlar
-- select * from customer where first_name like 'A%' and last_name like '%b'
-- adının baş harfi A ile başlayıp soyadı b ile biten kayıtlar

-- select * from customer where first_name ilike '%A' 
-- select * from customer where first_name ~~* '%A' 
-- ~~* ile ilike aynı işe yarar, ilike ile büyük küçük harfe bakmaksızın çalışır

-- select * from customer where first_name not like 'A%'
-- A ile başlamayan kayıtlar geldi
-- select * from customer where first_name like 'J_'
-- _ yer tutucu olarak çalışıyor ve J ile başlayıp Jo Ji Ja... gibi ismi olan kayıtları gösterir

-- select * from actor where first_name = 'Penelope'
-- adı Penelope olan kayıtlar geldi
-- select * from actor where first_name like 'P%e'
-- select * from actor where first_name ~~ 'P%e'
-- ~~ ile like aynı işe yarar, adı P...e olan tüm kayıtlar geldi
-- select * from actor where first_name like 'T__'
-- Tim Tom kayıtları geldi

-- 1)country tablosunda bulunan country sütunundaki ülke isimlerinden 'A' karakteri ile başlayıp 'a' karakteri ile sonlananları sıralayınız.
-- select country from country where country like 'A%a'
-- 2)country tablosunda bulunan country sütunundaki ülke isimlerinden en az 6 karakterden oluşan ve sonu 'n' karakteri ile sonlananları sıralayınız.
-- select country from country where (length(country))>5 and (country like '%n')
-- 3)film tablosunda bulunan title sütunundaki film isimlerinden en az 4 adet büyük ya da küçük harf farketmesizin 'T' karakteri içeren film isimlerini sıralayınız.
-- select title from film where  (title ilike '%t%t%t%t%')
-- 4)film tablosunda bulunan tüm sütunlardaki verilerden title 'C' karakteri ile başlayan ve uzunluğu (length) 90 dan büyük olan ve rental_rate 2.99 olan verileri sıralayınız.
-- select title, length, rental_rate from film where (title like 'C%') and (length >89) and (rental_rate=2.99)