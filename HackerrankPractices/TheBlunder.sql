select ceil(avg(salary) - avg(replace(salary, '0', ''))) from EMPLOYEES;
-- ikincisinden 0'lar atıldı, CEIL (Ceiling) fonksiyonu, belirli bir sayıyı yukarıya doğru en yakın tam sayıya yuvarlar.

SELECT name, months, salary, (months*salary) as total
FROM Employee
WHERE (months*salary) = (
    SELECT MAX(sub.total)
    FROM (SELECT months*salary AS total FROM Employee) AS sub
);
-- total maaş hesaplandı ve max maaş miktarı ve kaç kişinin bu maaşı kazandığı ekrana yazdırıldı

