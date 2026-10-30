-- Exercise 04 - a
-- Municipalities: code and name of municipalities in Norte de Santander ordered alphabetically

SELECT
    T1.municipality_code,
    T1.municipality_name AS municipality
FROM 
    geo.municipalities T1
WHERE 
    T1.municipality_code LIKE '54%'
ORDER BY 
    T1.municipality_name;

/*
 municipality_code |   municipality
-------------------+-------------------
 54003             | Ábrego
 54051             | Arboledas
 54099             | Bochalema
 54109             | Bucarasica
 54128             | Cáchira
 54125             | Cácota
 54172             | Chinácota
 54174             | Chitagá
 54206             | Convención
 54001             | Cúcuta
(40 filas) 
*/