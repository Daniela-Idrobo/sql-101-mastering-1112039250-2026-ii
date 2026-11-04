-- Exercise 04 - a
-- Top 10 closed certification periods with the longest duration for farms in municipality 54518: farm name, certification name, start date, end date, duration in days, and duration using AGE (3 tables)

SELECT 
    T1.farm_name AS farm,
    T3.certification_name AS certification,
    T2.start_date,
    T2.end_date,
    (T2.end_date - T2.start_date) AS duration_days,
    AGE(T2.end_date, T2.start_date) AS duration
FROM farm.farms T1
INNER JOIN farm.farm_certifications T2 
    ON T1.farm_id = T2.farm_id
INNER JOIN farm.certifications T3 
    ON T2.certification_id = T3.certification_id
WHERE T1.municipality_code = '54518'
  AND T2.end_date IS NOT NULL
ORDER BY duration_days DESC
LIMIT 10;

/*
Se observa que todos los periodos de certificación cerrados tienen una 
duración exactamente idéntica de 1096 días, lo que equivale de forma 
uniforme a un periodo estándar de 3 años exactos para la vigencia de 
las normativas de calidad en las fincas.
*/

/*
     farm     |    certification    | start_date |  end_date  | duration_days | duration
--------------+---------------------+------------+------------+---------------+----------
 Bellavista   | 4C                  | 2018-09-21 | 2021-09-21 |          1096 | 3 years
 La Esperanza | Fairtrade           | 2023-04-23 | 2026-04-23 |          1096 | 3 years
 La Esperanza | 4C                  | 2017-12-25 | 2020-12-25 |          1096 | 3 years
 Bellavista   | 4C                  | 2015-08-16 | 2018-08-16 |          1096 | 3 years
 Las Delicias | Rainforest Alliance | 2016-02-09 | 2019-02-09 |          1096 | 3 years
 Las Delicias | 4C                  | 2018-12-29 | 2021-12-29 |          1096 | 3 years
 Las Delicias | 4C                  | 2022-02-01 | 2025-02-01 |          1096 | 3 years
 La Cascada   | Nespresso AAA       | 2018-03-14 | 2021-03-14 |          1096 | 3 years
 La Esperanza | Fairtrade           | 2017-03-17 | 2020-03-17 |          1096 | 3 years
 Bellavista   | 4C                  | 2021-11-12 | 2024-11-12 |          1096 | 3 years
(10 filas)
*/