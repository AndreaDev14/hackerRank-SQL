/*
- The PADS


1- Query an alphabetically ordered list of all names in OCCUPATIONS, immediately followed by the first letter of each profession as a parenthetical (i.e.: enclosed in parentheses). For example: AnActorName(A), ADoctorName(D), AProfessorName(P), and ASingerName(S).
2- Query the number of ocurrences of each occupation in OCCUPATIONS. Sort the occurrences in ascending order, and output them in the following format:

There are a total of [occupation_count] [occupation]s.
*/


SELECT * FROM (SELECT top 100 CONCAT(name, '(', left(Occupation,1),  ')') AS Q1 FROM OCCUPATIONS ORDER BY NAME) AS T1
UNION
SELECT * FROM (SELECT top 100 CONCAT('There are a total of', ' ', COUNT(Occupation), ' ',  LOWER(Occupation), 's.') AS Q2 FROM OCCUPATIONS
GROUP BY Occupation
ORDER BY COUNT(Occupation),Occupation ) as t2 ;