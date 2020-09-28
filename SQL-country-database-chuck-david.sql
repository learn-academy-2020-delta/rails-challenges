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

