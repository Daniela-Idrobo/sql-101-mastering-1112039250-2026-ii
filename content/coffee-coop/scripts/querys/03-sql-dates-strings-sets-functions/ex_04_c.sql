-- Exercise 04 - c
-- Deliveries summary for weeks 36 to 40 in 2026: week number, deliveries count, first day of year (doy), and last day of year (doy), ordered by week number

SELECT 
    EXTRACT(week FROM T1.delivered_at) AS week_number,
    COUNT(T1.delivery_id) AS deliveries_count,
    MIN(EXTRACT(doy FROM T1.delivered_at)) AS first_day_of_year,
    MAX(EXTRACT(doy FROM T1.delivered_at)) AS last_day_of_year
FROM buy.deliveries T1
WHERE EXTRACT(year FROM T1.delivered_at) = 2026
  AND EXTRACT(week FROM T1.delivered_at) BETWEEN 36 AND 40
GROUP BY EXTRACT(week FROM T1.delivered_at)
ORDER BY week_number;

/*
La semana 40 registra un número significativamente menor de entregas (928) 
porque los datos del sistema cierran y llegan únicamente hasta el día 30 
de septiembre, lo que abarca solo los primeros 3 días de dicha semana y 
trunca el conteo total en comparación con las semanas anteriores completas 
de 7 días.
*/

/*
 week_number | deliveries_count | first_day_of_year | last_day_of_year
-------------+------------------+-------------------+------------------
          36 |             2146 |               243 |              249
          37 |             2151 |               250 |              256
          38 |             2099 |               257 |              263
          39 |             2104 |               264 |              270
          40 |              928 |               271 |              273
(5 filas)
*/