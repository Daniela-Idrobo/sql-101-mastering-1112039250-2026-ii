-- Exercise 09 - c
-- Quality analyses: unaccepted analyses on Sept 30, 2026 with registered observations, ordered by defect percentage descending

SELECT
    analysis_id,
    delivery_id,
    is_accepted,
    defects_pct,
    observations,
    analyst_name
FROM 
    buy.quality_analyses
WHERE 
    delivery_id LIKE '%20260930%'
    AND is_accepted = FALSE
    AND observations IS NOT NULL
ORDER BY 
    defects_pct DESC;
 
/*
    analysis_id     |     delivery_id     | is_accepted | defects_pct |                observations                 |    analyst_name
--------------------+---------------------+-------------+-------------+---------------------------------------------+--------------------
 QA-20260930-000104 | DLV-20260930-000214 | f           |       19.54 | Olor a fermento en la muestra.              | Carolina Rodríguez
 QA-20260930-000068 | DLV-20260930-000165 | f           |       17.29 | Muestra tomada por duplicado.               | Germán Peña
 QA-20260930-000119 | DLV-20260930-000253 | f           |       15.59 | Exceso de impurezas y pasilla.              | Aníbal Pabón
 QA-20260930-000086 | DLV-20260930-000147 | f           |       13.21 | Olor a fermento en la muestra.              | Erika Restrepo
 QA-20260930-000113 | DLV-20260930-000223 | f           |       12.94 | Café sobresecado, grano quebradizo.         | Reinaldo Bermúdez
 QA-20260930-000022 | DLV-20260930-000070 | f           |        9.75 | Café con humedad alta, requiere más secado. | Santiago Rojas
 QA-20260930-000018 | DLV-20260930-000006 | f           |        7.88 | Café con humedad alta, requiere más secado. | Nicolás Serrano
(7 filas)
*/
