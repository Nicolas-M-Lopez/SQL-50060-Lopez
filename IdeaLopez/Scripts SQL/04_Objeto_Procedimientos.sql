USE GESTAR; -- Inicializacion del schema

DROP PROCEDURE IF EXISTS SP_INSERTAR_PROVEDOR; -- Procedure para insertar provedores en la tabla de provedor
DELIMITER %%
CREATE PROCEDURE SP_INSERTAR_PROVEDOR(IN P_MATRICULA_ADMINISTRADOR INT, -- Definimos los datos de entrada (IN) y los de salida (OUT)
									   IN P_NOMBRE_COMPLETO VARCHAR(40),
                                       IN P_CUIT_PROVEDOR BIGINT,
                                       OUT V_MATRICULA_ADMINISTRADOR INT,
									   OUT V_NOMBRE_COMPLETO VARCHAR(40),
                                       OUT V_CUIT_PROVEDOR BIGINT)
BEGIN
INSERT INTO PROVEDOR(MATRICULA_ADMINISTRADOR, NOMBRE_COMPLETO, CUIT_PROVEDOR) VALUES (  -- Se agregan a la tabla los parametros
	P_MATRICULA_ADMINISTRADOR, P_NOMBRE_COMPLETO, P_CUIT_PROVEDOR);


SELECT MATRICULA_ADMINISTRADOR, NOMBRE_COMPLETO, CUIT_PROVEDOR INTO V_MATRICULA_ADMINISTRADOR, V_NOMBRE_COMPLETO, V_CUIT_PROVEDOR -- Se muestran los datos en la tabla
    FROM PROVEDOR
    WHERE MATRICULA_ADMINISTRADOR = P_MATRICULA_ADMINISTRADOR
        AND NOMBRE_COMPLETO = P_NOMBRE_COMPLETO
        AND CUIT_PROVEDOR = P_CUIT_PROVEDOR
	LIMIT 1;

END %%
DELIMITER ;

CALL SP_INSERTAR_PROVEDOR(33333, 'SP Provedor', 123559789, @V_MATRICULA_ADMINISTRADOR, @V_NOMBRE_COMPLETO, @V_CUIT_PROVEDOR); -- se llama al stored procedure y se le agregan los parametros
SELECT @V_MATRICULA_ADMINISTRADOR AS MATRICULA_ADM, @V_NOMBRE_COMPLETO AS PROVEDOR, @V_CUIT_PROVEDOR AS CUIT_PROVEDOR;



DROP PROCEDURE IF EXISTS SP_ORDENAR_CONSORCIOS;
DELIMITER %%
CREATE PROCEDURE SP_ORDENAR_CONSORCIOS ( -- Procedure para ordenar los consorcios segun direccion o por cantidad de unidades funcionales, ademas se le puede ordenar de manera ascendente o descendiente
  IN P_CAMPO ENUM('DIRECCION', 'UNIDADES_FUNCIONALES'), -- Definimos los datos de entrada (IN) y los de salida (OUT)
  IN P_ORDEN BOOLEAN,
  OUT V_CONSORCIOS_CAMPO TEXT
)
BEGIN
  SET @ORDER_DIRECTION = IF(P_ORDEN, 'DESC', 'ASC'); -- Seteamos el orden ascendente o ascendente segun que se ingrese

  CASE P_CAMPO -- Seteamos la query segun si quiere ordenar por direccion o por cantidad de unidades funcioanles
    WHEN 'DIRECCION' THEN
      SET @QUERY = CONCAT('SELECT * FROM CONSORCIO ORDER BY DIRECCION ', @ORDER_DIRECTION);
    WHEN 'UNIDADES_FUNCIONALES' THEN
      SET @QUERY = CONCAT('SELECT * FROM CONSORCIO ORDER BY UNIDADES_FUNCIONALES ', @ORDER_DIRECTION);
    ELSE
      SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'Campo de ordenamiento no válido';
  END CASE;

  PREPARE stmt FROM @QUERY; -- Se prepara y ejecura la Query armada previamente
  EXECUTE stmt;
  DEALLOCATE PREPARE stmt;

  SET V_CONSORCIOS_CAMPO = @QUERY; -- Seteamos la variable de salida
END %%
DELIMITER ;

CALL SP_ORDENAR_CONSORCIOS ('DIRECCION', 1, @V_CONSORCIOS_CAMPO); -- Se llama al stored y se agregan los parametros