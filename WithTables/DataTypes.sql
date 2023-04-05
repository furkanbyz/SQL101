-- @@@VERİ TİPLERİ1@@@
-- create table test (
-- 	real_type real,
-- 	double_type double precision,
-- 	numeric_type numeric
-- )
-- real türünde .'dan sonra 7 basamak, 
-- double precision türünde 17, 
-- numeric türünde ise tamamı gösterilir

-- insert into test
-- values
-- 	(1.123456789123456789123456789123456789,
-- 	1.123456789123456789123456789123456789,
-- 	1.123456789123456789123456789123456789)

-- create table test2 (
-- 	float4_type float4,
-- 	float8_type float8,
-- 	decimal_type decimal
-- )
-- float4 real ile, float8 double precision ile, decimal de numeric ile aynı şeydir 

-- insert into test2
-- values
-- 	(1.123456789123456789123456789123456789,
-- 	1.123456789123456789123456789123456789,
-- 	1.123456789123456789123456789123456789)

-- select(5+3)
-- sonuç integer türündedir
-- select(10.5)
-- sonuç numeric türündedir
-- select (15.123456789 :: integer)
-- select (15.123456789 :: float)
-- select (15.123456789 :: double precision)
-- şeklinde veri türleri değiştirilebilir


-- @@@VERİ TİPLERİ2@@@
-- CHARACTER TYPES
-- select ('Lorem' :: char(10))
-- char direkt 10 karakterlik yer ayırır
-- select ('Lorem ipsum furkan beyaz' :: char(10))
-- select ('Lorem' :: varchar(10))
-- varchar ise 10 karaktere kadar, girilen değere göre yer ayırır
-- select ('Lorem ipsum furkan beyaz' :: varchar)
-- kısıtlama yapmak istenmezse varchar yanı boş bırakılır
-- select ('Lorem ipsum furkan beyaz' :: text)

-- BOOLEAN TYPES
-- select('no'::boolean)
-- select('0'::boolean)
-- select('false'::boolean)
-- select('off'::boolean)
-- bunların tamamına false döner
-- select('yes'::boolean)
-- select('1'::boolean)
-- select('true'::boolean)
-- select('on'::boolean)
-- bunların tamamına da true döner

--  DATE TIME TYPES
-- select('1999-09-15'::date)
-- select('sep-15-1999'::date)
-- select('sep 15 1999'::date)
-- select('1999 september 15'::date)
-- bunların tamamı aynı çıktıyı verir
-- select('03:44 am'::time)
-- select('03:44 pm'::time)
-- select('03:44:11'::time)
-- select('03:44'::time with time zone)
-- +03:00 ekleyerek gösterir (utc)
-- select('1980 December 03 2:16:07'::timestamp)