-- Exercise 08 - b
-- Deliveries: rejected deliveries on Sept 30, 2026, including a calculated column for average weight per bag (gross weight / bag count) aliased as avg kg per bag

SELECT
    delivery_id,
    farm_id,
    collection_point_id,
    status,
    bag_count,
    gross_weight_kg,
    (gross_weight_kg / bag_count) AS "avg kg per bag"
FROM 
    buy.deliveries
WHERE 
    delivery_id LIKE '%20260930%'
    AND status = 'Rechazada';
 
/*
 delivery_id | farm_id | collection_point_id | status | bag_count | gross_weight_kg | avg kg per bag
-------------+---------+---------------------+--------+-----------+-----------------+----------------
(0 filas)
*/