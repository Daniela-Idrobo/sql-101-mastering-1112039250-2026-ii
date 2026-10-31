-- Exercise 03 - a
-- Collection points: collection point name, delivery code, and gross weight kg for all collection points on September 30, 2026, including points with no deliveries using RIGHT JOIN

SELECT 
    T2.point_name AS collection_point,
    T1.delivery_id AS delivery,
    T1.gross_weight_kg
FROM buy.deliveries T1
RIGHT JOIN buy.collection_points T2 
    ON T1.collection_point_id = T2.collection_point_id
   AND T1.delivery_id LIKE '%20260930%';

/*
               collection_point               |      delivery       | gross_weight_kg
----------------------------------------------+---------------------+-----------------
 Punto de Compra Salgar 1                     | DLV-20260930-000002 |          124.98
 Punto de Compra Cajibío 3                    | DLV-20260930-000003 |          112.33
 Punto de Compra Venecia 1                    | DLV-20260930-000004 |          138.29
 Punto de Compra El Banco 1                   | DLV-20260930-000005 |          256.42
 Punto de Compra Convención 1                 | DLV-20260930-000006 |          139.81
 Punto de Compra Apía 2                       | DLV-20260930-000007 |          404.97
 Punto de Compra El Tambo 1                   | DLV-20260930-000008 |          175.92
 Punto de Compra Anserma 1                    | DLV-20260930-000009 |           56.80
 Punto de Compra San Francisco 1              | DLV-20260930-000010 |          269.43
 Punto de Compra Miranda 1                    | DLV-20260930-000011 |          166.55
(338 filas)
*/