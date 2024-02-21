SELECT @@AUTOCOMMIT; -- Checkmeamos si esta activada la variable autocommit
SET @@AUTOCOMMIT = 0; -- Seteamos la variable autocommit en 0 para desactivarla
SET @@FOREIGN_KEY_CHECKS = 0; -- Seteamos la varibable foreign key checks en 0 para desactivar las verificaciones de la clave foranea
SET @@SQL_SAFE_UPDATES = 0; -- Seteamos la variable sql safe updates para habilitar las eliminaciones y modificaciones de claves primarias

START TRANSACTION; -- Iniciamos la transaccion

SELECT * FROM PROPIETARIO WHERE DNI = 11111112; -- Verificamos si existe el registro a borrar
DELETE FROM PROPIETARIO WHERE DNI = 11111112; -- Borramos el registro

-- ROLLBACK; -- Si queremos deshacer la accion anterior ejecutamos el rollback
COMMIT; -- Confirmamos la accion de eliminar permanentemente

-- Si se quiere insertar nuevamente el registro 
-- INSERT INTO PROPIETARIO (DNI, ID_CONSORCIO, EMAIL, APELLIDO, UNIDAD_FUNCIONAL, DEUDA) VALUES (11111112, 13, 'marfil@gmail.com', 'Marfil', 19, 0); 

START TRANSACTION; -- Iniciamos la transaccion
INSERT INTO EXPENSA (ID_CONSORCIO, MES, AÑO) VALUES (1,'ENERO', 2024); -- Insertamos varios registros
INSERT INTO EXPENSA (ID_CONSORCIO, MES, AÑO) VALUES (1,'ENERO', 2025);
INSERT INTO EXPENSA (ID_CONSORCIO, MES, AÑO) VALUES (1,'ENERO', 2026);
INSERT INTO EXPENSA (ID_CONSORCIO, MES, AÑO) VALUES (1,'ENERO', 2027);
SAVEPOINT SP1; -- Hacemos el primer savepoint para estos 4 registros
INSERT INTO EXPENSA (ID_CONSORCIO, MES, AÑO) VALUES (1,'ENERO', 2028); -- Insertamos otros registros
INSERT INTO EXPENSA (ID_CONSORCIO, MES, AÑO) VALUES (1,'ENERO', 2029);
INSERT INTO EXPENSA (ID_CONSORCIO, MES, AÑO) VALUES (1,'ENERO', 2030);
INSERT INTO EXPENSA (ID_CONSORCIO, MES, AÑO) VALUES (1,'ENERO', 2031);
SAVEPOINT SP2; -- Hacemos el segundo savepoint para los ultimos 4 registros
SELECT * FROM EXPENSA; -- Checkeamos la tabla para ver si funciona correctamente las acciones
-- RELEASE SAVEPOINT SP1; -- Si queremos eliminar el primer savepoint
-- ROLLBACK TO SP1; -- Si queremos hacer un rollback hasta el primer savepoint (nos guardaria la informacion hasta los primeros 4 registros)
COMMIT; -- Confirmamos la transaccion