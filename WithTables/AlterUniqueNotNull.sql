-- @@@NOT NULL AND ALTER@@@
-- create table users(
-- 	id serial primary key,
-- 	user_name varchar(20),
-- 	email varchar(50),
-- 	age integer
-- )

-- insert into users(user_name, email, age)
-- values
-- 	('gamer','gamer@gmail.com',25)

-- delete from users where user_name is null
-- returning *

-- alter table users
-- alter column user_name
-- set not null


-- @@@UNIQUE@@@
-- insert into users(user_name, email, age)
-- values('tester2','tester@gmail.com',44)

-- update users
-- set email = 'tester2@gmail.com'
-- where user_name='tester2'

-- alter table users
-- add unique(email)
-- sütunlara bu şekilde unique kısıtlaması getirilebilir
-- eğer bundan önce sütunda unique olmayan değerler varsa hata verir, tüm değerleri unique yapıp sonradan uniquelik atanabilir

-- insert into users(user_name, email, age)
-- values('furkan','tester3@gmail.com',23)
