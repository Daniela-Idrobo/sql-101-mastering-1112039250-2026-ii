-- Exercise 02 - a
-- Farmers: document number, first name, last name, and farm name for all farmers in municipality code 54518, including those without registered farms using LEFT JOIN

SELECT 
    T1.document_number AS document,
    T1.first_name,
    T1.last_name,
    T2.farm_name AS farm
FROM farm.farmers T1
LEFT JOIN farm.farms T2 
    ON T1.farmer_id = T2.farmer_id
WHERE T1.municipality_code = '54518';

/*
  document  |    first_name     |     last_name      |       farm
------------+-------------------+--------------------+------------------
 1061690671 | Guillermo Pedro   | Arias Rodríguez    | La Selva
 712758473  | Wilson            | López Villamizar   | El Silencio
 134410171  | Orlando           | Salazar Bermúdez   | El Diamante
 870240973  | Jairo             | Molina Pabón       | El Recuerdo
 727945493  | Gloria            | Marín Rivera       | La Esperanza
 549054771  | María             | Burbano Duarte     | El Nogal
 549054771  | María             | Burbano Duarte     | La Divisa
 622105662  | Alejandra         | Molina Torres      | La Carolina
 622105662  | Alejandra         | Molina Torres      | La Cristalina
 622105662  | Alejandra         | Molina Torres      | Villa Rosa
(370 filas)
*/