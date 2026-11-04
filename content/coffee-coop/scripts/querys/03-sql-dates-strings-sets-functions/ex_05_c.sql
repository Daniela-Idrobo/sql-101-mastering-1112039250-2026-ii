-- Exercise 05 - c
-- Department code and name matching 'Norte de Santander' using exact string comparison vs UPPER function comparison

-- Query 1: Exact match
SELECT 
    T1.department_code AS code,
    T1.department_name AS department
FROM geo.departments T1
WHERE T1.department_name = 'Norte de Santander';

/*
 code | department
------+------------
(0 filas)
*/

-- Query 2: UPPER function comparison
SELECT 
    T1.department_code AS code,
    T1.department_name AS department
FROM geo.departments T1
WHERE UPPER(T1.department_name) = UPPER('Norte de Santander');

/*
 code |     department
------+--------------------
 54   | Norte De Santander
(1 fila)
*/

/*
La primera consulta no devuelve filas porque el texto almacenado en la base de datos contiene 
una letra mayúscula adicional en el conector (`Norte De Santander`), lo que genera una 
discrepancia estricta frente al texto literal proporcionado en el filtro, mientras que la 
segunda consulta sí es exitosa porque utiliza la función `UPPER` para convertir ambos textos 
a mayúsculas uniformes antes de compararlos, permitiendo así ignorar las diferencias de 
capitalización.
*/