-- Exercise 07 - c
-- Summary of farmers in municipality code 54518: total farmers count and total farmers with email count

SELECT 
    COUNT(*) AS total_farmers,
    COUNT(T1.email) AS farmers_with_email
FROM farm.farmers T1
WHERE T1.municipality_code = '54518';

/*
El primer conteo usa asterisco y cuenta todas las personas guardadas en la lista, mientras que 
el segundo conteo mira la casilla del correo, salta a quienes la tienen vacía y por eso da un 
número más pequeño.
*/

/*
 total_farmers | farmers_with_email
---------------+--------------------
           230 |                165
(1 fila)
*/