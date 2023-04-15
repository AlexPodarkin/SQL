USE lesson01;

SELECT name, manufacturer,price 

FROM smartphones

WHERE quantity>2;

SELECT * FROM smartphones WHERE manufacturer = "samsung";

SELECT * FROM smartphones WHERE name LIKE "%iphone%";

SELECT * FROM smartphones WHERE name RLIKE '[0-9]';

SELECT * FROM smartphones WHERE name RLIKE '[8]';

SELECT * FROM smartphones WHERE name LIKE "%8%";