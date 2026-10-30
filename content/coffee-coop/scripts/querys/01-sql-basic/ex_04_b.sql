-- Exercise 04 - b
-- Municipalities: municipalities in Norte de Santander starting with 'San'

SELECT
    T1.municipality_code,
    T1.municipality_name AS municipality
FROM 
    geo.municipalities T1
WHERE 
    T1.municipality_code LIKE '54%'
    AND T1.municipality_name LIKE 'San%'
ORDER BY 
    T1.municipality_name;

/*
 municipality_code | municipality
-------------------+--------------
 54670             | San Calixto
 54673             | San Cayetano
 54680             | Santiago
(3 filas) 
*/