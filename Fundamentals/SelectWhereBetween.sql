-- @@@SELECT, WHERE, BETWEEN IN@@@
-- select title, length from film where length<=120 and length>=90
-- select title, length from film where length between 90 and 120
-- yukarıdaki iki komut aynı çıktıyı verir

-- select title, length from film where length not between 90 and 120
-- not between belirtilen aralık dışındakileri verir

-- select title, rental_rate, replacement_cost from film where (rental_rate between 2 and 4) and (replacement_cost between 15 and 20) 

-- in komutu
-- select title,length from film where length in(40, 50 ,60)
-- select title, length from film  where length=40 or length=50 or length=60
-- yukarıdaki iki komut aynı çıktıyı verir

-- select title, replacement_cost from film where replacement_cost=10.99 or replacement_cost=12.99 or replacement_cost=16.99
-- select title, replacement_cost from film where replacement_cost in (10.99, 12.99, 16.99)
-- yukarıdaki iki komut aynı çıktıyı verir
-- select title, replacement_cost from film where replacement_cost not in (10.99, 12.99, 16.99)
-- üç değer dışındakileri verir

-- 1)film tablosunda bulunan tüm sütunlardaki verileri replacement cost değeri 12.99 dan büyük eşit ve 16.99 küçük olma koşuluyla sıralayınız ( BETWEEN - AND yapısını kullanınız.)
-- select title, replacement_cost from film where replacement_cost between  12.99 and 16.99
-- 2)actor tablosunda bulunan first_name ve last_name sütunlardaki verileri first_name 'Penelope' veya 'Nick' veya 'Ed' değerleri olması koşuluyla sıralayınız. ( IN operatörünü kullanınız.)
-- select first_name ,last_name from actor where first_name in ('Penelope' , 'Nick' , 'Ed');
-- değer girerken '' kullanılacak dikkat!
-- 3)film tablosunda bulunan tüm sütunlardaki verileri rental_rate 0.99, 2.99, 4.99 VE replacement_cost 12.99, 15.99, 28.99 olma koşullarıyla sıralayınız. ( IN operatörünü kullanınız.)
-- select rental_rate, replacement_cost from film where rental_rate in(0.99, 2.99, 4.99) and replacement_cost in(12.99, 15.99, 28.99)