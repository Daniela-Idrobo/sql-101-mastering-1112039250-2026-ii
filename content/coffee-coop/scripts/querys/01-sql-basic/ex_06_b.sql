-- Exercise 06 - b
-- Farmers: associates in municipality 54518 without a registered email address

SELECT
    document_number AS document,
    first_name,
    last_name,
    email
FROM 
    farm.farmers
WHERE 
    municipality_code = '54518'
    AND email IS NULL;

/*
  document  |    first_name    |     last_name      | email
------------+------------------+--------------------+-------
 712758473  | Wilson           | López Villamizar   |
 727945493  | Gloria           | Marín Rivera       |
 549054771  | María            | Burbano Duarte     |
 24999630   | Esperanza        | Romero Betancur    |
 914044314  | Ancízar Cristian | Polanía Delgado    |
 343256743  | Dora             | Hernández Correa   |
 1148351420 | Inés             | Jiménez Jaimes     |
 1117597835 | Cecilia Lorena   | Díaz García        |
 749444168  | Emilio           | Delgado Molina     |
 940051048  | David Germán     | Romero Bonilla     |
 548464915  | Yuliana          | Rodríguez Vargas   |
 554620706  | Nelson Samuel    | Mejía Vera         |
 59388780   | Juan             | Ortega Zapata      |
 1171130241 | Elsa             | Mejía Vera         |
 824422301  | Hernando         | Montoya Agudelo    |
 21358854   | Manuela Yolanda  | Benavides Delgado  |
 1185523747 | Elsa             | Ibarra Molina      |
 131166207  | Jaime            | Marín Hernández    |
 35147265   | Carlos           | Gutiérrez Pabón    |
 712500733  | Esperanza        | Valencia Ortiz     |
 922724022  | Esteban          | Salazar Parra      |
 1135293825 | Abelardo         | Pérez Castro       |
 939635303  | Marleny          | Álvarez Correa     |
 549847293  | Wilmer           | Pérez Chamorro     |
 1189704117 | Mariana          | Ortiz Ruiz         |
 599185252  | Efraín           | Pinzón Cabrera     |
 33787285   | Rubén            | Ramos Chamorro     |
 797017145  | Isabella         | Barrera Cabrera    |
 723123018  | Diego            | Niño Hernández     |
 446019320  | Fernando         | Rojas Cárdenas     |
 525766302  | Gustavo          | Ibarra Agudelo     |
 1001674689 | Jaime Santiago   | Cuéllar Cáceres    |
 232229735  | Libardo          | Lasso Serrano      |
 1090968710 | Ruth             | Rodríguez Pérez    |
 483692716  | Ramiro           | Barrera Villamizar |
 966970818  | Gustavo          | Parra Ortiz        |
 550696749  | Viviana          | Arias Ramírez      |
 846209158  | Daniel Héctor    | Duque Ruiz         |
 754524782  | Diana            | Lozano Rincón      |
 914235490  | Óscar            | Ospina González    |
 932437698  | Amparo           | Duarte Duque       |
 283636187  | Gustavo          | Moreno López       |
 449792023  | Myriam           | Sandoval Osorio    |
 737383707  | Yesenia          | Bermúdez Henao     |
 302223305  | Camilo           | Arias Mora         |
 641839251  | Efraín           | Ortega Correa      |
 273193028  | Erika            | Ríos Suárez        |
 860920785  | Hugo             | Jiménez Parra      |
 160538872  | Liliana          | Mosquera Uribe     |
 963176673  | Luis             | Mosquera Perdomo   |
 1015411133 | Santiago         | Bermúdez Ruiz      |
 102695503  | Sofía            | Marín Rojas        |
 768461420  | Marleny          | Agudelo Sandoval   |
 796884051  | Yuliana          | Zapata Parra       |
 1079700992 | Camila           | Sánchez Pinzón     |
 1053774538 | Isabella         | Mosquera Sandoval  |
 938685616  | Sandra           | Sandoval Ortega    |
 610678466  | Nicolás          | Sánchez Rodríguez  |
 403413565  | Reinaldo         | Suárez Polanía     |
 718906996  | Nelson           | Bedoya Vélez       |
 622024549  | Viviana          | González Molina    |
 716388403  | Emilio           | Carrillo Perdomo   |
 361839624  | Rocío Alba       | Ortega Serrano     |
 141613744  | Édgar            | Burbano Arango     |
 1177165427 | Juliana          | Ortega Osorio      |
(65 filas)
*/