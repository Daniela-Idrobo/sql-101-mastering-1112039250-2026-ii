-- Exercise 03 - a
-- Certifications: name, issuer, and premium per kg ordered from highest to lowest

SELECT
    certification_name AS certification,
    issuing_body AS issuer,
    premium_per_kg AS premium_per_kg_cop
FROM 
    farm.certifications
ORDER BY 
    premium_per_kg DESC;

/*
    certification    |              issuer               | premium_per_kg_cop
---------------------+-----------------------------------+--------------------
 Orgánico            | Ente certificador orgánico        |             800.00
 Bird Friendly       | Smithsonian Migratory Bird Center |             500.00
 Fairtrade           | Fairtrade International           |             400.00
 Nespresso AAA       | Nespresso / Rainforest Alliance   |             350.00
 Rainforest Alliance | Rainforest Alliance               |             300.00
 C.A.F.E. Practices  | Starbucks / SCS Global Services   |             250.00
 4C                  | 4C Services                       |             150.00
(7 filas)
*/