-- Exercise 08 - b
-- Municipalities in Norte de Santander having farms but no collection points using EXCEPT

SELECT 
    T2.municipality_code AS municipality_code,
    T2.municipality_name AS municipality
FROM farm.farms T1
INNER JOIN geo.municipalities T2 
    ON T1.municipality_code = T2.municipality_code
WHERE T2.department_code = '54'

EXCEPT

SELECT 
    T4.municipality_code,
    T4.municipality_name
FROM buy.collection_points T3
INNER JOIN geo.municipalities T4 
    ON T3.municipality_code = T4.municipality_code
WHERE T4.department_code = '54'

ORDER BY municipality;

/*
 municipality_code |   municipality
-------------------+-------------------
 54003             | Ábrego
 54051             | Arboledas
 54109             | Bucarasica
 54128             | Cáchira
 54125             | Cácota
 54174             | Chitagá
 54001             | Cúcuta
 54223             | Cucutilla
 54239             | Durania
 54250             | El Tarra
(32 filas)
*/