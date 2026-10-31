-- Exercise 09 - c
-- Farms: farm name, analyses count, and average cup score for farms with at least 3 quality analyses and average cup score of 84 or higher using HAVING across 3 tables, ordered by average score descending

SELECT 
    T1.farm_name AS farm,
    COUNT(T3.analysis_id) AS analyses_count,
    ROUND(AVG(T3.cup_score), 2) AS avg_cup_score
FROM farm.farms T1
INNER JOIN buy.deliveries T2 
    ON T1.farm_id = T2.farm_id
INNER JOIN buy.quality_analyses T3 
    ON T2.delivery_id = T3.delivery_id
GROUP BY T1.farm_name
HAVING COUNT(T3.analysis_id) >= 3 
   AND AVG(T3.cup_score) >= 84
ORDER BY avg_cup_score DESC;

/*
 farm | analyses_count | avg_cup_score
------+----------------+---------------
(0 filas)
*/