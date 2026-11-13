-- Exercise 08 - a
-- Municipalities in Norte de Santander having both farms and collection points using INTERSECT

SELECT 
    T2.municipality_code AS municipality_code,
    T2.municipality_name AS municipality
FROM farm.farms T1
INNER JOIN geo.municipalities T2 
    ON T1.municipality_code = T2.municipality_code
WHERE T2.department_code = '54'

INTERSECT

SELECT 
    T4.municipality_code,
    T4.municipality_name
FROM buy.collection_points T3
INNER JOIN geo.municipalities T4 
    ON T3.municipality_code = T4.municipality_code
WHERE T4.department_code = '54'

ORDER BY municipality;

/*
 municipality_code | municipality
-------------------+--------------
 54099             | Bochalema
 54172             | Chinácota
 54206             | Convención
 54245             | El Carmen
 54261             | El Zulia
 54347             | Herrán
 54498             | Ocaña
 54720             | Sardinata
(8 filas)
*/