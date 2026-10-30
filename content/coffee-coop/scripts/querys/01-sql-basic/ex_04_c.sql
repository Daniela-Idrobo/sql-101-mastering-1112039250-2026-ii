-- Exercise 04 - c
-- Municipalities: municipalities nationwide containing the word 'Pamplona' case-insensitively

SELECT
    T1.municipality_code,
    T1.municipality_name AS municipality
FROM 
    geo.municipalities T1
WHERE 
    T1.municipality_name = 'Pamplona'
ORDER BY 
    T1.municipality_name;

/*
 municipality_code | municipality
-------------------+--------------
 54518             | Pamplona
(1 fila)  
*/