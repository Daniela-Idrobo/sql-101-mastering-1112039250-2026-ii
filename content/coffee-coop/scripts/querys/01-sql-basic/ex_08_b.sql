-- Exercise 08 - b
-- Deliveries: rejected deliveries on Sept 30, 2026, including a calculated column for average weight per bag (gross weight / bag count) aliased as avg kg per bag

SELECT
    T1.delivery_id,
    T1.farm_id,
    T1.collection_point_id,
    T1.status,
    T1.bag_count,
    T1.gross_weight_kg,
    (T1.gross_weight_kg / T1.bag_count) AS "avg kg per bag"
FROM 
    buy.deliveries AS T1
WHERE 
    T1.delivery_id LIKE '%20260930%'
    AND T1.status = 'Rechazada';
 
/*
 delivery_id | farm_id | collection_point_id | status | bag_count | gross_weight_kg | avg kg per bag
-------------+---------+---------------------+--------+-----------+-----------------+----------------
(0 filas)
*/