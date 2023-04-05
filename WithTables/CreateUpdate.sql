-- @@@TABLO OLUŞTURMAK@@@
-- create table author(
-- 	id serial primary key,
-- 	first_name varchar(50) not null,
-- 	last_name varchar(50) not null,
-- 	email varchar(100),
-- 	birthday date
-- )

-- insert into author(first_name, last_name, email, birthday)
-- values
-- 	('Sabahattin','Ali','ali@gmail.com','1925-10-10'),
-- 	('Halide Edip','Adıvar','halideedip@gmail.com','1929-7-19'),
-- 	('Reşat Nuri','Güntekin','reşat@gmail.com','1938-8-18'),
-- 	('Nihal','Atsız','nihalatsız@gmail.com','1932-9-21')

-- create table author2 (like author)
-- tablonun içeriğini değil, yalnızca taslağını yani kolon yapılarını aldı
-- insert into author2 select * from author where first_name = 'Sabahattin'
-- author tablosundan author2 tablosuna veri kopyaladık

-- create table author3 as select * from author
-- author tablosundaki veriler ve kolon yapısının aynıları author3 tablosu oluşturulup kopyalandı

-- drop table author4
-- author4 does not exists hatası verir
-- drop table if exists author4
-- if exists yapısı kullanılabilir

-- drop table author3
-- drop table author2
-- oluşturulan tablolar silindi


-- @@@VERİLERİ GÜNCELLEMEK@@@
-- mockaroo sitesi ile random veri üretilip author tablosuna çekildi

-- update author set first_name = 'Emrah Safa', last_name='Gurkan', email ='emrah@gmail.com', birthday = ' 1975-11-11' where id =7
-- ile id'si 7 olan veriler güncellendi ve tablonun altına eklendi

-- update author
-- set first_name = 'XXXX',
-- 	last_name = 'YYYY'
-- where first_name like 'A%'
-- ile adı A ile başlayan yazalar güncellendi, güncellenen veriler tablonun altına eklenir

-- update author
-- set last_name='Updated'
-- where first_name = 'Gabrila'
-- returning *
-- adı Gabrila olan verinin soyadı Updated diye güncellendi ve returning * ile select edildi

-- delete from author where id = 6 
-- delete from author where id>15 returning *

-- 1)test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.
-- create table employee( 
-- 	id integer,
-- 	name varchar(50),
-- 	birthday date,
-- 	email varchar(100)
-- )
-- 2)Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
-- select * from employee
-- 3)Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.
-- update employee
-- set name = 'Furkan', birthday = '1999-09-15', email = 'furkan@gmail.com'
-- where name like 'Penny%';
-- update employee set name = Ayşe Yılmaz', birthday = '2000-06-03', email = 'ayşeyılmaz@gmail.com' where name ='Cheslie Bulle'
-- update employee set name = Fatma Yavuz', birthday = '2001-07-04', email = 'fatmayavuzz@gmail.com' where name like 'Blythe%'
-- 4)Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.
-- delete from employee where name ilike 'a%'
-- delete from employee where name ilike 'd%' returning *
