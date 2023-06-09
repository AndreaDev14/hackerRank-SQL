/*
- Weather Observation Station 5
Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). 
If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
*/

SELECT * FROM (SELECT TOP 1 CITY, LEN(CITY) as CITY_LEN FROM STATION ORDER BY LEN(CITY) DESC, CITY) as Q1 
UNION 
SELECT * FROM (SELECT TOP 1 CITY, LEN(CITY) as CITY_LEN FROM STATION ORDER BY LEN(CITY) ASC, CITY) as Q2

