-- Exercise 03 - b
-- Collection points: collection point name for collection points that received no deliveries on September 30, 2026 using RIGHT JOIN and IS NULL

SELECT 
    T2.point_name AS collection_point,
    T1.delivery_id AS delivery,
    T1.gross_weight_kg
FROM buy.deliveries T1
RIGHT JOIN buy.collection_points T2 
    ON T1.collection_point_id = T2.collection_point_id
   AND T1.delivery_id LIKE '%20260930%'
WHERE T1.delivery_id IS NULL;

/*
           collection_point           | delivery | gross_weight_kg
--------------------------------------+----------+-----------------
 Punto de Compra Tesalia 3            |          |
 Punto de Compra Marulanda 1          |          |
 Punto de Compra Guática 2            |          |
 Punto de Compra Chinácota 1          |          |
 Punto de Compra El Tambo 2           |          |
 Punto de Compra La Argentina 1       |          |
 Punto de Compra Hobo 1               |          |
 Punto de Compra Caldono 1            |          |
 Punto de Compra Yaguará 1            |          |
 Punto de Compra Icononzo 1           |          |
(38 filas)
*/