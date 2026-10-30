-- Exercise 10 - c
-- Settlements: settlements without deductions on Sept 30, 2026, with a calculated check for gross amount

SELECT
    T1.settlement_id,
    T1.delivery_id,
    T1.net_weight_kg,
    T1.price_per_kg_applied,
    T1.gross_amount,
    T1.deductions_amount,
    T1.net_weight_kg * T1.price_per_kg_applied AS "check gross cop"
FROM 
    pay.settlements T1
WHERE 
    T1.settlement_id LIKE '%20260930%'
    AND T1.deductions_amount = 0;

/*
la columna calculada y el gross_amount coinciden exactamente, porque el valor se calcula multiplicando el peso por el precio aplicado, y como la base de datos utiliza exactamente esa misma fórmula para llenar su columna generada, al hacer nosotros la multiplicación en la consulta, el resultado sale idéntico, demostrando que la lógica de la es clara, coherente y transparente.
*/

/*
    settlement_id    |     delivery_id     | net_weight_kg | price_per_kg_applied | gross_amount | deductions_amount | check gross cop
---------------------+---------------------+---------------+----------------------+--------------+-------------------+-----------------
 STL-20260930-000005 | DLV-20260927-000198 |        158.94 |             21608.00 |   3434375.52 |              0.00 |    3434375.5200
 STL-20260930-000042 | DLV-20260928-000048 |        300.18 |             23455.00 |   7040721.90 |              0.00 |    7040721.9000
 STL-20260930-000006 | DLV-20260928-000058 |        145.01 |             22847.00 |   3313043.47 |              0.00 |    3313043.4700
 STL-20260930-000019 | DLV-20260928-000075 |        134.15 |             22808.00 |   3059693.20 |              0.00 |    3059693.2000
 STL-20260930-000008 | DLV-20260928-000093 |        152.95 |             22477.00 |   3437857.15 |              0.00 |    3437857.1500
 STL-20260930-000021 | DLV-20260928-000105 |        219.83 |             22347.00 |   4912541.01 |              0.00 |    4912541.0100
 STL-20260930-000056 | DLV-20260928-000112 |        169.43 |             21050.00 |   3566501.50 |              0.00 |    3566501.5000
 STL-20260930-000049 | DLV-20260928-000122 |        129.47 |             22074.00 |   2857920.78 |              0.00 |    2857920.7800
 STL-20260930-000065 | DLV-20260928-000176 |        118.14 |             22623.00 |   2672681.22 |              0.00 |    2672681.2200
 STL-20260930-000015 | DLV-20260929-000207 |        115.02 |             20937.00 |   2408173.74 |              0.00 |    2408173.7400
(37 filas)
*/