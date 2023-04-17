-- select first_name, last_name, title from author left join book on author.id = book.author_id
-- soldaki yani author tablosunu book tablosuyla eşleyerek tamamen getirir, eşlenmeyen verilere de null değeri atar.

-- select first_name, last_name, title from book left join author on author.id = book.author_id
-- her kitabın bir yazarı olacağı için herhangi bir null değeri olmadan tüm book kayıtlarını getirdi

-- alter table book drop constraint  book_author_id_fkey
-- foreign key kaldırıldı

-- insert into book (title, page_number, author_id)
-- values('Gülün Adı',466, 45), ('Yapay Zeka', 108, 75)
-- select first_name, last_name, title from book left join author on author.id = book.author_id
-- book tablosuna karşılığı olmayan author_id eklendiği için yukarıdaki sorgu ile null değerler alınır


-- select first_name, last_name, title, author_id from book left join author on author.id = book.author_id
-- book tablosunun tamamı görüntülendi, yukarıda sonradan eklenen book kayıtlarının author bilgileri olmadığından null döndü
-- select first_name, last_name, title, author_id from book left join author on author.id = book.author_id where first_name is not null
-- ile null değerler filtrelenebilir