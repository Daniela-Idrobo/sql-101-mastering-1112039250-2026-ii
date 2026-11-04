-- Exercise 02 - c
-- Municipalities summary in Norte de Santander: municipality name, farmers count, and average age in years for municipalities with average age over 51, ordered alphabetically

SELECT 
    T2.municipality_name AS municipality,
    COUNT(T1.farmer_id) AS farmers_count,
    ROUND(AVG(DATE_PART('year', AGE(DATE '2026-09-30', T1.birth_date)))::NUMERIC, 2) AS avg_age_years
FROM farm.farmers T1
INNER JOIN geo.municipalities T2 
    ON T1.municipality_code = T2.municipality_code
WHERE T2.department_code = '54'
GROUP BY T2.municipality_name
HAVING AVG(DATE_PART('year', AGE(DATE '2026-09-30', T1.birth_date))) > 51
ORDER BY municipality;

/*
   municipality   | farmers_count | avg_age_years
------------------+---------------+---------------
 Arboledas        |           235 |         51.49
 Bochalema        |           224 |         51.59
 Bucarasica       |           188 |         51.49
 Cáchira          |           206 |         51.73
 Cácota           |           222 |         51.78
 Chitagá          |           209 |         51.21
 El Carmen        |           218 |         52.60
 La Esperanza     |           199 |         51.28
 Mutiscua         |           216 |         51.86
 Puerto Santander |           194 |         51.79
 Ragonvalia       |           244 |         51.16
 Sardinata        |           197 |         51.15
 Silos            |           206 |         52.07
(13 filas)
*/