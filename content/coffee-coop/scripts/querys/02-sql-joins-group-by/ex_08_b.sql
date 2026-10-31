-- Exercise 08 - b
-- Deliveries summary on September 30, 2026: count of deliveries and total gross weight by coffee type, ordered by total gross weight descending

SELECT 
    T1.coffee_type,
    COUNT(T1.delivery_id) AS deliveries_count,
    SUM(T1.gross_weight_kg) AS total_gross_kg
FROM buy.deliveries T1
WHERE T1.delivery_id LIKE '%20260930%'
GROUP BY T1.coffee_type
ORDER BY total_gross_kg DESC;

/*
  coffee_type  | deliveries_count | total_gross_kg
---------------+------------------+----------------
 dry_parchment |              278 |       48246.55
 cherry        |               10 |        2053.16
 wet_parchment |               12 |        1891.25
(3 filas)
*/