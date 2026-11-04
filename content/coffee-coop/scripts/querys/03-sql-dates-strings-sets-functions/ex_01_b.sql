-- Exercise 01 - b
-- Top 10 oldest farmers in municipality 54518: document number, first name, last name, membership age, and membership years at September 30, 2026

SELECT 
    T1.document_number AS document,
    T1.first_name,
    T1.last_name,
    AGE(DATE '2026-09-30', T1.membership_date) AS membership_age,
    DATE_PART('year', AGE(DATE '2026-09-30', T1.membership_date)) AS membership_years
FROM farm.farmers T1
WHERE T1.municipality_code = '54518'
ORDER BY T1.membership_date
LIMIT 10;

/*
NOW() entrega la fecha con la hora exacta del día, mientras que CURRENT_DATE solo da la 
fecha de hoy, por eso el literal a) cambia su resultado todos los días al restar la fecha 
actual del sistema, mientras que el literal b) no cambia nunca porque calcula la antigüedad 
usando una fecha fija que es el 30 de septiembre de 2026.
*/

/*
  document  |    first_name    |     last_name      |     membership_age      | membership_years
------------+------------------+--------------------+-------------------------+------------------
 402745033  | Julián Guillermo | Valencia Narváez   | 31 years 8 mons 3 days  |               31
 361839624  | Rocío Alba       | Ortega Serrano     | 31 years 2 mons 20 days |               31
 546579335  | Wilson           | Parra Prada        | 31 years 2 mons 2 days  |               31
 939635303  | Marleny          | Álvarez Correa     | 30 years 6 mons 10 days |               30
 748380481  | Teresa Adriana   | Valencia Moreno    | 30 years 2 mons 7 days  |               30
 1012324420 | Martha Carolina  | Pérez Jaimes       | 29 years 10 mons 8 days |               29
 230971064  | Manuel           | Agudelo Jiménez    | 29 years 6 mons 1 day   |               29
 483692716  | Ramiro           | Barrera Villamizar | 29 years 5 mons 22 days |               29
 677772599  | Guillermo        | Pérez Pérez        | 29 years 4 mons 13 days |               29
 59388780   | Juan             | Ortega Zapata      | 29 years 2 mons 17 days |               29
(10 filas)
*/