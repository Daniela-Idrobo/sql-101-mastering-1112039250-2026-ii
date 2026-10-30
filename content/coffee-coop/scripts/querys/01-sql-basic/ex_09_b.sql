-- Exercise 0- - b
-- Quality analyses: analyses on Sept 30, 2026 with moisture outside the 10% - 12% range (NOT BETWEEN), including analyst name and observations

SELECT
    analysis_id,
    delivery_id,
    moisture_pct,
    yield_factor,
    cup_score,
    analyst_name,
    observations
FROM 
    buy.quality_analyses
WHERE 
    delivery_id LIKE '%20260930%'
    AND moisture_pct NOT BETWEEN 10.0 AND 12.0;
 
/*
    analysis_id     |     delivery_id     | moisture_pct | yield_factor | cup_score |    analyst_name    |                          observations
--------------------+---------------------+--------------+--------------+-----------+--------------------+-----------------------------------------------------------------
 QA-20260930-000144 | DLV-20260930-000289 |        12.28 |        87.62 |           | Ancízar Delgado    |
 QA-20260930-000026 | DLV-20260930-000005 |        12.19 |        95.42 |     78.56 | Wilson Galvis      |
 QA-20260930-000018 | DLV-20260930-000006 |        17.24 |       103.31 |     79.98 | Nicolás Serrano    | Café con humedad alta, requiere más secado.
 QA-20260930-000017 | DLV-20260930-000012 |        12.15 |        93.62 |           | Natalia Trujillo   |
 QA-20260930-000033 | DLV-20260930-000027 |        12.41 |        92.76 |           | Sara Sánchez       |
 QA-20260930-000013 | DLV-20260930-000038 |        12.28 |        91.77 |     83.22 | Adriana Losada     |
 QA-20260930-000005 | DLV-20260930-000040 |        12.22 |        95.01 |     80.54 | Iván Castro        |
 QA-20260930-000027 | DLV-20260930-000043 |        12.07 |        92.47 |           | Germán González    | Caficultor solicita contramuestra.
 QA-20260930-000102 | DLV-20260930-000155 |        12.31 |        94.01 |     87.28 | Adriana Losada     |
 QA-20260930-000085 | DLV-20260930-000161 |        12.03 |        92.12 |           | Carlos Ospina      | Muestra limpia, color homogéneo.
(40 filas)
*/