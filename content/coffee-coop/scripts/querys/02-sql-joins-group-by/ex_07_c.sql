-- Exercise 07 - c
-- Summary of farmers in municipality code 54518: total farmers count and total farmers with email count

SELECT 
    COUNT(*) AS total_farmers,
    COUNT(T1.email) AS farmers_with_email
FROM farm.farmers T1
WHERE T1.municipality_code = '54518';

/*
 total_farmers | farmers_with_email
---------------+--------------------
           230 |                165
(1 fila)
*/