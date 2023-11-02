SELECT UPPER(name)
FROM cities
ORDER BY name ASC
LIMIT 5 OFFSET 5;

SELECT name, LENGTH(name)
FROM cities
WHERE LENGTH(name) NOT IN (8,9,10);

SELECT SUM(population)
FROM cities
WHERE region IN ('C','S');

SELECT AVG(population)
FROM cities
WHERE region = 'W';

SELECT COUNT(*)
FROM cities
WHERE region = 'E'