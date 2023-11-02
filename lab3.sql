SELECT name
FROM cities
WHERE name LIKE '%ськ';

SELECT name
FROM cities
WHERE name LIKE '%донец%';

SELECT Concat(name, ' (', region, ')')
FROM cities
WHERE population > 100000
ORDER BY name ASC;

SELECT Concat(name, ' - ', population/40000000*100, '%')
FROM cities
ORDER BY population/40000000*100 DESC
LIMIT 10