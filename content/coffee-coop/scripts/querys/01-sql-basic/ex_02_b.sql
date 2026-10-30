-- Exercise 02 - b
-- Coffee varieties: non-rust-resistant arabica varieties ordered by name descending

SELECT
    T1.variety_name AS variety,
    T1.species,
    T1.description
FROM 
    farm.coffee_varieties T1
WHERE 
    T1.rust_resistant = FALSE
    AND T1.species = 'arabica'
ORDER BY 
    T1.variety_name DESC;

/*
    variety    | species |                      description
---------------+---------+--------------------------------------------------------
 Típica        | arabica | Variedad tradicional de porte alto.
 Pacamara      | arabica | Cruce de Pacas y Maragogipe, grano grande.
 Maragogipe    | arabica | Variedad de grano grande.
 Geisha        | arabica | Variedad de especialidad con perfil floral.
 Caturra       | arabica | Mutación de Borbón de porte bajo y alta productividad.
 Borbón Rosado | arabica | Variedad de especialidad de fruto rosado.
 Borbón        | arabica | Variedad tradicional de buena calidad en taza.
(7 filas)
*/