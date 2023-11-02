SELECT name, population
FROM cities
ORDER BY population DESC
LIMIT 10 OFFSET 10;

SELECT name
FROM cities
ORDER BY name DESC
LIMIT 30;

SELECT name, population, region
FROM cities
ORDER BY region DESC, population DESC;

SELECT DISTINCT region
FROM cities;

SELECT  name, region
FROM cities
ORDER BY region DESC, name DESC