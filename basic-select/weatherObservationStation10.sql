
/* - Weather Observation Station 10
Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.
*/

SELECT DISTINCT CITY
FROM STATION 
WHERE  NOT SUBSTRING(CITY,LEN(CITY),LEN(CITY)) 
IN('a','e','i','o','u');