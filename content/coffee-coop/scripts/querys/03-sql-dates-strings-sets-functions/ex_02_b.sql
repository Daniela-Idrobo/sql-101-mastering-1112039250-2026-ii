-- Exercise 02 - b
-- Farmers summary by gender in municipality 54518: gender, farmers count, and average age in years rounded to 2 decimals

SELECT 
    T1.gender,
    COUNT(T1.farmer_id) AS farmers_count,
    ROUND(AVG(DATE_PART('year', AGE(DATE '2026-09-30', T1.birth_date)))::NUMERIC, 2) AS avg_age_years
FROM farm.farmers T1
WHERE T1.municipality_code = '54518'
GROUP BY T1.gender;

/*
 gender | farmers_count | avg_age_years
--------+---------------+---------------
 F      |           111 |         49.59
 M      |           115 |         51.31
 O      |             4 |         46.25
(3 filas)
*/