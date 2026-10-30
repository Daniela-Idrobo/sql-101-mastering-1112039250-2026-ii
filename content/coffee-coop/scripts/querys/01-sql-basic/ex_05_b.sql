-- Exercise 05 - b
-- Collection points: collection points without a registered phone number ordered by name

SELECT
    T1.collection_point_name AS point,
    T1.address AS address,
    T1.phone_number AS phone
FROM 
    buy.collection_points T1
WHERE 
    T1.phone_number IS NULL
ORDER BY 
    T1.collection_point_name;

/*
             point              |        address         | phone
--------------------------------+------------------------+-------
 Punto de Compra Aipe 1         | Carrera 13 # 17-16     |
 Punto de Compra Anserma 1      | Calle 39 # 7-96        |
 Punto de Compra Apía 2         | Calle 9 # 14-56        |
 Punto de Compra Baraya 1       | Calle 1 # 19-77        |
 Punto de Compra Bochalema 1    | Carrera 25 # 47-89     |
 Punto de Compra Bosconia 1     | Carrera 26 # 26-43     |
 Punto de Compra Cajibío 1      | Carrera 15 # 32-45     |
 Punto de Compra Cisneros 1     | Calle 37 # 10-5        |
 Punto de Compra Coello 1       | Transversal 20 # 49-66 |
 Punto de Compra El Carmen 2    | Calle 3 # 34-88        |
(26 filas)
*/