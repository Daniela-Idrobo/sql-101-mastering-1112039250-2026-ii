-- Exercise 10 - c
-- Summary by collection point for deliveries on September 30, 2026 with total balance > 0 (3 tables)

SELECT 
    T3.point_name AS collection_point,
    COUNT(T1.settlement_id) AS settlements_count,
    SUM(pay.fn_settlement_balance(T1.settlement_id)) AS total_balance_cop
FROM pay.settlements T1
INNER JOIN buy.deliveries T2 
    ON T1.delivery_id = T2.delivery_id
INNER JOIN buy.collection_points T3 
    ON T2.collection_point_id = T3.collection_point_id
WHERE T2.delivered_at::DATE = DATE '2026-09-30'
  AND T1.status <> 'cancelled'
GROUP BY T3.point_name
HAVING SUM(pay.fn_settlement_balance(T1.settlement_id)) > 0
ORDER BY total_balance_cop DESC;

/*
Si no se empleara la función COALESCE, cualquier cálculo sobre una 
liquidación sin pagos registrados arrojaría un valor nulo (NULL) 
en la suma, lo que provocaría que la operación aritmética de resta 
devuelva un saldo vacío en lugar de reflejar correctamente el monto 
neto total de la liquidación; por otro lado, ejecutar dos veces la 
instrucción CREATE OR REPLACE FUNCTION simplemente sobreescribe y 
actualiza la definición existente de la función en el catálogo de 
la base de datos de manera limpia y segura, evitando generar 
errores por duplicidad de objetos.
*/

/*
            collection_point            | settlements_count | total_balance_cop
----------------------------------------+-------------------+-------------------
 Punto de Compra San Francisco 1        |                 2 |        8483555.66
 Punto de Compra El Banco 1             |                 3 |        7874484.05
 Punto de Compra San Andrés De Tumaco 1 |                 2 |        7376967.21
 Punto de Compra Cajibío 3              |                 3 |        6400728.72
 Punto de Compra Manzanares 1           |                 2 |        6094824.45
 Punto de Compra Puerto Tejada 1        |                 2 |        6051013.94
 Punto de Compra El Bagre 1             |                 3 |        5013706.66
 Punto de Compra Sáchica 1              |                 1 |        4965142.70
 Punto de Compra Algeciras 1            |                 2 |        4135855.75
 Punto de Compra Turbo 1                |                 1 |        4023811.68
(29 filas)
*/