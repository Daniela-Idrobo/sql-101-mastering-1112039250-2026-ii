-- Exercise 05 - b
-- Municipality of Norte de Santander with the longest name and its length, ordered by length descending then alphabetically, limit 1

SELECT 
    T1.municipality_name AS municipality,
    LENGTH(T1.municipality_name) AS name_length
FROM geo.municipalities T1
INNER JOIN geo.departments T2 
    ON T1.department_code = T2.department_code
WHERE UPPER(T2.department_name) = UPPER('Norte de Santander')
ORDER BY name_length DESC, municipality ASC
LIMIT 1;

/*
   municipality    | name_length
-------------------+-------------
 Villa Del Rosario |          17
(1 fila)
*/