-- Exercise 04 - c
-- Municipalities: municipalities nationwide containing the word 'Pamplona' case-insensitively

SELECT
    municipality_code,
    municipality_name AS municipality
FROM 
    geo.municipalities
WHERE 
    municipality_name ILIKE '%Pamplona%'
ORDER BY 
    municipality_name;

/*
 municipality_code | municipality
-------------------+--------------
 54518             | Pamplona
(1 fila)
*/