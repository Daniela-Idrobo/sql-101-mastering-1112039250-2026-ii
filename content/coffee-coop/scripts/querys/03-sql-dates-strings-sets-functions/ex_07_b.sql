-- Exercise 07 - b - Query 1: UNION (no duplicates)
SELECT 
    T1.municipality_code AS municipality_code
FROM farm.farmers T1
INNER JOIN geo.municipalities T2 
    ON T1.municipality_code = T2.municipality_code
WHERE T2.department_code = '54'

UNION

SELECT 
    T3.municipality_code
FROM farm.farms T3
INNER JOIN geo.municipalities T4 
    ON T3.municipality_code = T4.municipality_code
WHERE T4.department_code = '54'

ORDER BY municipality_code;

/*
 municipality_code
-------------------
 54001
 54003
 54051
 54099
 54109
 54125
 54128
 54172
 54174
(40 filas)
*/

-- Exercise 07 - b - Query 2: UNION ALL (preserving duplicates)
SELECT 
    T1.municipality_code AS municipality_code
FROM farm.farmers T1
INNER JOIN geo.municipalities T2 
    ON T1.municipality_code = T2.municipality_code
WHERE T2.department_code = '54'

UNION ALL

SELECT 
    T3.municipality_code
FROM farm.farms T3
INNER JOIN geo.municipalities T4 
    ON T3.municipality_code = T4.municipality_code
WHERE T4.department_code = '54'

ORDER BY municipality_code;

/*
Al ejecutar la consulta utilizando UNION, el resultado devuelve un número 
menor de filas porque elimina automáticamente todos los registros duplicados 
cuando un municipio aparece tanto en la tabla de asociados como en la de 
fincas, mientras que la versión con UNION ALL conserva absolutamente todas 
las filas y repeticiones sin filtrar, arrojando un conteo mayor debido a que 
incluye cada coincidencia de manera independiente en ambos conjuntos.
*/

/*
 municipality_code
-------------------
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
(22365 filas)
*/