-- Exercise 01 - c
-- Current timestamp and current date evaluation without a table using NOW() and CURRENT_DATE

SELECT 
    NOW() AS now_ts,
    CURRENT_DATE AS today;

/*
            now_ts             |   today
-------------------------------+------------
 2026-11-04 14:37:04.591019-05 | 2026-11-04
(1 fila)
*/