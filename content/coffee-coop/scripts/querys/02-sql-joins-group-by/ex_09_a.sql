-- Exercise 09 - a
-- Departments: department name and count of municipalities for departments with more than 40 municipalities using HAVING, ordered by count descending

SELECT 
    T1.department_name AS department,
    COUNT(T2.municipality_code) AS municipalities_count
FROM geo.departments T1
INNER JOIN geo.municipalities T2 
    ON T1.department_code = T2.department_code
GROUP BY T1.department_name
HAVING COUNT(T2.municipality_code) > 40
ORDER BY municipalities_count DESC;

/*
   department    | municipalities_count
-----------------+----------------------
 Antioquia       |                  125
 Boyacá          |                  123
 Cundinamarca    |                  116
 Santander       |                   87
 Nariño          |                   64
 Tolima          |                   47
 Bolívar         |                   46
 Cauca           |                   42
 Valle Del Cauca |                   42
(9 filas)
*/