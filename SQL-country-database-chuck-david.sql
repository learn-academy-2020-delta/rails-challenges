SELECT population FROM country WHERE name = 'United States';
-- population of the US (HINT: 278357000)

SELECT surfacearea FROM country WHERE name = 'United States';
-- surface area of the US 9.36352e+06

SELECT name, indepyear FROM country WHERE indepyear < 1963;
-- returns countries that became independent before the year 1963

SELECT name, population, lifeexpectancy FROM country WHERE continent = 'Africa' AND population < 30000000 AND lifeexpectancy > 45;
--  returns african countries with life expectancy > 45 and population less than 30 million

SELECT name, governmentform FROM country WHERE governmentform LIKE '%epublic';
-- returns countries with a republican government

SELECT name, governmentform, indepyear FROM country WHERE governmentform LIKE '%epublic' AND indepyear > 1945;
-- returns countries with a republican govt and achieved independence after 1945

SELECT name, governmentform, indepyear FROM country WHERE governmentform NOT LIKE '%epublic' AND indepyear > 1945
-- returns countries with a non-epublican govt and achieved independence after 1945


-- ORDER BY 
SELECT lifeexpectancy, country FROM country ORDER BY lifeexpectancy LIMIT 15;
-- Which fifteen countries have the lowest life expectancy?

SELECT lifeexpectancy, country FROM country WHERE lifeexpectancy IS NOT NULL ORDER BY lifeexpectancy DESC LIMIT 15;
-- Which fifteen countries have the highest life expectancy?

SELECT name, population, surfacearea, population / surfacearea AS density
FROM country
WHERE population > 0
ORDER by density
LIMIT 5;
-- Which five countries have the lowest population density

SELECT name, population, surfacearea, population / surfacearea AS density
FROM country
WHERE population > 0
ORDER by density DESC
LIMIT 5;
-- Which five countries have the highest population density

SELECT name, population, surfacearea
FROM country
WHERE population > 0
ORDER by surfacearea

SELECT name, population, surfacearea
FROM country
WHERE population > 0
ORDER by population
-- Which is the smallest country, by area and population (first by area - .4, then by population - 50)?

SELECT name, population, surfacearea
FROM country
WHERE population > 0
ORDER by surfacearea DESC

SELECT name, population, surfacearea
FROM country
WHERE population > 0
ORDER by population DESC
-- Which is the biggest country, by area and population (first by area - 1.70754e+07, then by population - 1277558000)?



-- WITH 
WITH big_countries AS (
	SELECT name, surfacearea, governmentform 
	FROM country  
)

SELECT governmentform, name 
FROM big_countries
ORDER BY surfacearea DESC
LIMIT 10;
-- top ten countries based on surfacearea and their government.

WITH rich_countries AS (
	SELECT name, gnp, governmentform 
	FROM country  
)

SELECT governmentform, name 
FROM rich_countries
ORDER BY gnp DESC
LIMIT 10;
-- top 10 richest countries and their government.



-- GROUP BY
SELECT region, AVG(gnp) AS averagegnp 
FROM country
GROUP BY region 
ORDER BY averagegnp DESC
LIMIT 1;