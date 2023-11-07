#DAYA PANESAR - SQL PART 2 ASSIGNMENT
#TASK 1 Using count, get the number of cities in the USA
SELECT count(distinct Name)
FROM City
WHERE CountryCode="USA";

#TASK 2 Find out what the population and life expectancy for people in Argentina (ARG) is.
SELECT Name, Population, LifeExpectancy
FROM country
WHERE Name="Argentina";

#TASK 3 Using ORDER BY, LIMIT, what country has the highest life expectancy?
SELECT *
FROM country
ORDER BY LifeExpectancy DESC
LIMIT 1;

#TASK 4 Select 25 cities around the world that start with the letter 'F' in a single SQL query.
SELECT *
FROM CITY
WHERE Name like "F%"
LIMIT 25;

#TASK 5 Create a SQL statement to display columns Id, Name, Population from the city table and limit results to first 10 rows only.
SELECT ID, Name, Population
FROM CITY
LIMIT 10;

#TASK 6 Create a SQL statement to find only those cities from city table whose population is larger than 2000000.
SELECT *
FROM CITY
WHERE Population>2000000;

#TASK 7 Create a SQL statement to find all city names from city table whose name begins with “Be” prefix.
SELECT *
FROM CITY
WHERE Name LIKE "Be%";

#TASK 8 Create a SQL statement to find only those cities from city table whose population is between 500000-1000000.
SELECT *
FROM CITY
WHERE Population 
BETWEEN '500000' 
AND '1000000';

#TASK 9 Create a SQL statement to find a city with the lowest population in the city table.
SELECT *
FROM CITY
ORDER BY Population
LIMIT 1;

#BONUS/CHALLENGE TASKS#

#Create a SQL statement to find the capital of Spain (ESP).
SELECT Code, Name, Capital
FROM COUNTRY
WHERE CODE = "ESP" AND Name = "Spain";

#Create a SQL statement to list all the languages spoken in the Caribbean region.
SELECT country.Code, country.Region, countrylanguage.Language
FROM country
INNER JOIN countrylanguage ON country.Code=countrylanguage.CountryCode
WHERE Region="Caribbean";

#Create a SQL statement to find all cities from the Europe continent.
SELECT city.Name as City, country.Continent, country.Code
FROM country
INNER JOIN city ON country.Code=city.CountryCode
WHERE Continent = "Europe";
