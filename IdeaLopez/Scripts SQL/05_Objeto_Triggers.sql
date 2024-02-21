USE GESTAR; -- Inicializacion del schema

-- Crear la tabla para auditar los cambios en la tabla de administradores
DROP TABLE IF EXISTS LOG_ADMINISTRADOR;
CREATE TABLE IF NOT EXISTS LOG_ADMINISTRADOR (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    MATRICULA_ADMINISTRADOR INT,
    FECHA DATE,
    HORA TIME,
    CAMPO_MODIFICADO VARCHAR(50),
    VALOR_ANTERIOR VARCHAR(255),
    VALOR_NUEVO VARCHAR(255),
    USUARIO_MODIFICADOR VARCHAR(30)
);

-- Eliminar el trigger anterior si existe
DROP TRIGGER IF EXISTS TRG_LOG_ADMINISTRADOR;

-- Crear el trigger para auditar cambios en el campo 'EMAIL' de la tabla administrador
DELIMITER //
CREATE TRIGGER TRG_LOG_ADMINISTRADOR
AFTER UPDATE ON GESTAR.ADMINISTRADOR
FOR EACH ROW 
BEGIN
    -- Verificar si el campo 'EMAIL' ha sido modificado
    IF NEW.EMAIL != OLD.EMAIL THEN
        -- Insertar un nuevo registro en la tabla de log con los detalles del cambio
        INSERT INTO LOG_ADMINISTRADOR (MATRICULA_ADMINISTRADOR, CAMPO_MODIFICADO, VALOR_ANTERIOR, VALOR_NUEVO, USUARIO_MODIFICADOR, FECHA, HORA)
        VALUES (
            NEW.MATRICULA,
            'EMAIL',
            OLD.EMAIL,
            NEW.EMAIL,
            CURRENT_USER(),
            CURDATE(),
            CURTIME()
        );
    END IF;
END//
DELIMITER ;

-- Actualizar el campo 'EMAIL' de un administrador para activar el trigger
UPDATE ADMINISTRADOR SET EMAIL = 'ejemplotrigger2@gmail.com' WHERE MATRICULA = 22222;

-- Verificar el contenido de la tabla LOG_ADMINISTRADOR después de la actualización
SELECT * FROM LOG_ADMINISTRADOR;




-- Crear la tabla para auditar la caja banco
DROP TABLE IF EXISTS LOG_CAJA_BANCO;
CREATE TABLE IF NOT EXISTS LOG_CAJA_BANCO (
    ID_LOG INT AUTO_INCREMENT PRIMARY KEY,
    ID_CAJA INT,
    ACCION VARCHAR(10), 
    INGRESOS INT,
    EGRESOS INT,
    USUARIO VARCHAR(50),
    FECHA DATE,
    HORA TIME
);

-- Eliminar el trigger anterior si existe
DROP TRIGGER IF EXISTS TRG_LOG_CAJA_BANCO;

-- Crear el trigger para auditar ingresos y egresos en la tabla caja banco
DELIMITER //
CREATE TRIGGER TRG_LOG_CAJA_BANCO
BEFORE INSERT ON GESTAR.CAJA_BANCO
FOR EACH ROW
BEGIN
    INSERT INTO LOG_CAJA_BANCO (ID_CAJA, ACCION, INGRESOS, EGRESOS, USUARIO, FECHA, HORA)
    VALUES (NEW.ID_CAJA, 'INSERT', NEW.INGRESOS_BANCO, NEW.EGRESOS_BANCO, CURRENT_USER(), CURDATE(), CURTIME());
END;
//
DELIMITER ;

-- Insertar un nuevo registro en CAJA_BANCO
INSERT INTO CAJA_BANCO (ID_CAJA, INGRESOS_BANCO, EGRESOS_BANCO)
VALUES (16, 300000, 150000);

-- Verificar el contenido de la tabla LOG_CAJA_BANCO después de la inserción
SELECT * FROM LOG_CAJA_BANCO;