-- Exercise 03 - c
-- Coffee varieties: variety name and species for coffee varieties that are not planted in any plot using RIGHT JOIN and IS NULL

SELECT 
    T2.variety_name AS variety,
    T2.species
FROM farm.plot_varieties T1
RIGHT JOIN farm.coffee_varieties T2 
    ON T1.variety_id = T2.variety_id
WHERE T1.variety_id IS NULL;

/*
 variety | species
---------+---------
(0 filas)
*/