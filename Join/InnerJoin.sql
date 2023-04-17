-- select * from book inner join author on book.author_id = author.id
-- select * from book join author on book.author_id = author.id
-- join komutu default olarak inner join çalıştırır
-- iki tablo yan yana birleştirildi

-- select title, first_name, last_name from book inner join author on book.author_id = author.id
-- select book.title, author.first_name, author.last_name from book inner join author on book.author_id = author.id
-- book tablosunun author_id kolonu ile author tablosunun id kolonu eşitlendi.
-- iki sorgu da aynı çıktıyı verir. tablo adları kolon başında bu şekilde belirtilebilir.
-- from ve inner join tablolarının yeri değişirse sonuç değişmez çünkü join yapısı kesişim kümesiyle çalışır.

-- 1)city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
-- select * from city inner join country on country.country_id = city.country_id

-- 2)customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
-- select payment_id, first_name, last_name from customer inner join payment on payment.customer_id = customer.customer_id

-- 3)customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız
-- select first_name, last_name from customer join rental on rental.customer_id = customer.customer_id
