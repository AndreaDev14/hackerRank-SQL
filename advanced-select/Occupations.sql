/*
- Occupations
Pivot the Occupation column in OCCUPATIONS so that each Name is sorted alphabetically and displayed underneath its corresponding Occupation. The output column headers should be Doctor, Professor, Singer, and Actor, respectively.

Note: Print NULL when there are no more names corresponding to an occupation.
*/

SELECT name
FROM OCCUPATIONS
Order by 
    CASE
        WHEN occupation = 'Doctor'THEN  name;
        WHEN occupation = 'Professor' THEN name;
        WHEN occupation = 'Singer'THEN name;
        WHEN occupation = IS NULL  THEN name;
     
        ELSE 'test'
    END