-- select first_name, last_name, title from book
-- right outer join author on author.id = book.author_id
-- left joinin tersidir
-- right outer join olarak da kullanılabilir
-- from book right join author yapısında sağdaki tabloyu baz alarak birleştirme yapar
-- right ile soldaki tablonun tamamını ve karşılığındaki author değerleri alınır


-- select first_name, last_name, title from author
-- left outer join book on author.id = book.author_id
-- left join ise soldaki tablo ile birleştirme yapar
-- yukarıdaki sorguyla aynı çıktıyı verir.
-- left ile soldaki tablonun tamamını ve karşılığındaki author değerleri alınır
