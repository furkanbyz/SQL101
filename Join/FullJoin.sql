-- select first_name, last_name, title from book full join author on book.author_id = author.id
-- iki tablonun tüm değerlerini alır. Eşlenenleri eşler, eşlenmeyenleri de karşılığına null değer atayarak tablolar.
-- full join yerine full outer join de denilebilir.

-- select * from author full join book on author.id = book.author_id
-- where (book.id is not null) and (author.id is not null)
-- null değerleri where koşulu ile filtreleyince inner join mantığına ulaşıldı.

-- select * from book full join author on book.author_id = author.id
-- where (book.id is null) or (author.id is null)
-- bu şekilde de her iki kümenin ortak olmayan değerleri alınır.
-- üstteki sorgunun tümleyenidir.

-- 1)city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte görebileceğimiz LEFT JOIN sorgusunu yazınız.
-- select city, country from city left join country on city. country_id = country. country_id
-- 2)customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz RIGHT JOIN sorgusunu yazınız.
-- select payment.payment_id, first_name, last_name from payment right join customer on payment.customer_id = customer.customer_id
-- 3)customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz FULL JOIN sorgusunu yazınız.
-- select first_name, last_name from customer full join rental on rental.customer_id = customer.customer_id