-- ========================================================
-- SCRIPT DE PRUEBAS: 01-test-constraints.sql
-- Coffee Coop DB - Validación de Restricciones
-- ========================================================

-- ========================================================
-- 1. INSERCIONES VÁLIDAS (Configuración base)
-- ========================================================

INSERT INTO geo.departments (department_code, department_name) 
VALUES ('54', 'Norte de Santander');

INSERT INTO geo.municipalities (municipality_code, department_code, municipality_name) 
VALUES ('54001', '54', 'Pamplona');

-- Caficultor válido (Mayor de edad al asociarse)
INSERT INTO farm.farmers (farmer_id, first_name, last_name, document_number, birth_date, gender, phone_number, email, membership_date, is_active, municipality_code) 
VALUES (DEFAULT, 'Pedro', 'Carrillo', '1090123456', '1975-05-15', 'M', '3101234567', 'pedro.carrillo@email.com', '2020-01-10', TRUE, '54001');

-- Finca válida inicial (incluyendo altitude_masl requerida por NOT NULL)
INSERT INTO farm.farms (farm_id, farmer_id, municipality_code, farm_name, rural_district, altitude_masl, total_area_ha) 
VALUES (DEFAULT, 1, '54001', 'La Esperanza', 'Centro', 1800, 5.5);


-- ========================================================
-- 2. INSERCIONES INVÁLIDAS (Pruebas de ruptura de reglas)
-- ========================================================

-- --------------------------------------------------------
-- PRUEBA A: Caficultor menor de 18 años cuando se asoció
-- Error esperado: Violación de CHECK constraint (chk_...)
-- Comentario: PostgreSQL evalúa la diferencia entre la fecha de nacimiento y la 
-- fecha de membresía. Al ser menor de edad, el CHECK frena la inserción.
-- --------------------------------------------------------
INSERT INTO farm.farmers (farmer_id, first_name, last_name, document_number, birth_date, gender, phone_number, email, membership_date, is_active, municipality_code) 
VALUES (DEFAULT, 'Juanito', 'Pérez', '987654322', '2015-01-01', 'M', '3119876543', 'juanito@email.com', '2026-01-01', TRUE, '54001');


-- --------------------------------------------------------
-- PRUEBA B: Dos fincas con el mismo nombre para el mismo caficultor
-- Error esperado: Violación de UNIQUE constraint (uq_...)
-- Comentario: PostgreSQL rechazó la inserción debido a que el nombre de la finca 'La Esperanza' 
-- ya se encuentra registrado para el caficultor con ID 1.
-- --------------------------------------------------------
INSERT INTO farm.farms (farm_id, farmer_id, municipality_code, farm_name, rural_district, altitude_masl, total_area_ha) 
VALUES (DEFAULT, 1, '54001', 'La Esperanza', 'Alto', 1900, 3.0);


-- --------------------------------------------------------
-- PRUEBA C: Pago por transferencia sin transaction_reference
-- Error esperado: Violación de CHECK constraint o NOT NULL
-- Comentario: PostgreSQL rechaza el pago por transferencia cuando el campo de referencia 
-- de la transacción se omite o se envía como NULL.
-- --------------------------------------------------------
-- INSERT INTO pay.payments (payment_id, payment_method, amount, transaction_reference, payment_date) 
-- VALUES (DEFAULT, 'transfer', 500000.00, NULL, CURRENT_DATE);
