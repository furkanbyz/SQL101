-- (select * from book order by page_number desc limit 5)
-- union
-- (select * from book order by title limit 5)

-- union yapısı ile iki select sorgusunu da çalıştırıp tek tablo şeklinde yazdırır.
-- union ile kesişim kümesindeki elemanlar birer tane tablolanır
-- union all yapısı ile kesişimdekiler çifter çifter yazılır
-- bu yapılar için selectlenen sütun sayıları eşit ve veri tüpleri aynı olmalıdır

-- (select * from book order by page_number desc limit 5)
-- intersect
-- (select * from book order by title limit 5)
-- intersect komutu ile iki farklı select sorgusundaki ortak değerleri(kesişim değerleri tablolar

-- (select * from book order by page_number desc limit 5)
-- except
-- (select * from book order by title limit 5)
-- birinci sorguda olup ikinci sorguda olmayan verileri tablolar