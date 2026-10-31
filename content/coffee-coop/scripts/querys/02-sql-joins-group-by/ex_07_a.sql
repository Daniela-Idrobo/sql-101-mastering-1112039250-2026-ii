-- Exercise 07 - a
-- Summary of deliveries on September 30, 2026: total deliveries, sum of gross weight, average gross weight, and distinct farms delivering

SELECT 
    COUNT(T1.delivery_id) AS total_deliveries,
    SUM(T1.gross_weight_kg) AS total_gross_kg,
    ROUND(AVG(T1.gross_weight_kg), 2) AS avg_gross_kg,
    COUNT(DISTINCT T1.farm_id) AS farms_delivering
FROM buy.deliveries T1
WHERE T1.delivery_id LIKE '%20260930%';

/*
 total_deliveries | total_gross_kg | avg_gross_kg | farms_delivering
------------------+----------------+--------------+------------------
              300 |       52190.96 |       173.97 |              300
(1 fila)
*/