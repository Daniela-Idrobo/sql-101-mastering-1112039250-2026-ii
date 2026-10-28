-- Exercise 08 - c
-- Deliveries: deliveries on Sept 30, 2026 with coffee type 'wet parchment' or 'cherry' using IN, ordered by gross weight descending

SELECT
    delivery_id,
    farm_id,
    collection_point_id,
    delivered_at,
    coffee_type,
    bag_count,
    gross_weight_kg,
    status
FROM 
    buy.deliveries
WHERE 
    delivery_id LIKE '%20260930%'
    AND coffee_type IN ('wet parchment', 'cherry')
ORDER BY 
    gross_weight_kg DESC;

/*
     delivery_id     | farm_id | collection_point_id |    delivered_at     | coffee_type | bag_count | gross_weight_kg |  status
---------------------+---------+---------------------+---------------------+-------------+-----------+-----------------+----------
 DLV-20260930-000081 |   19338 |                 117 | 2026-09-30 09:17:37 | cherry      |         9 |          475.13 | received
 DLV-20260930-000187 |  231839 |                 159 | 2026-09-30 12:47:52 | cherry      |         6 |          339.30 | received
 DLV-20260930-000133 |   44726 |                  59 | 2026-09-30 10:51:03 | cherry      |         4 |          254.83 | received
 DLV-20260930-000094 |   99627 |                 133 | 2026-09-30 09:31:20 | cherry      |         4 |          246.96 | received
 DLV-20260930-000248 |  215660 |                 166 | 2026-09-30 14:59:13 | cherry      |         3 |          159.89 | received
 DLV-20260930-000260 |  215048 |                 144 | 2026-09-30 15:14:37 | cherry      |         3 |          149.08 | accepted
 DLV-20260930-000071 |  125140 |                 124 | 2026-09-30 08:25:30 | cherry      |         2 |          123.86 | settled
 DLV-20260930-000100 |  151444 |                  11 | 2026-09-30 09:49:19 | cherry      |         2 |          106.62 | accepted
 DLV-20260930-000280 |  228280 |                   8 | 2026-09-30 16:07:06 | cherry      |         2 |           99.14 | received
 DLV-20260930-000297 |   49306 |                  67 | 2026-09-30 16:46:11 | cherry      |         2 |           98.35 | received
(10 filas)
*/