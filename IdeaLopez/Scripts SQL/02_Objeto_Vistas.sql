USE GESTAR; -- Inicializacion del schema

CREATE VIEW propietarios_deudores AS -- Creacion de vista para ver los propietarios que tienen deuda
SELECT
    p.DNI,
    p.APELLIDO,
    p.UNIDAD_FUNCIONAL,
    p.DEUDA
FROM PROPIETARIO p
WHERE p.DEUDA > 0;

SELECT * FROM PROPIETARIOS_DEUDORES;

CREATE VIEW proveedores_por_administrador AS -- Creacion de vista para ver los provedores por administrado
SELECT
    a.NOMBRE,
    a.APELLIDO,
    p.NOMBRE_COMPLETO
FROM ADMINISTRADOR a
INNER JOIN PROVEDOR p ON p.MATRICULA_ADMINISTRADOR = a.MATRICULA;

SELECT * FROM PROVEEDORES_POR_ADMINISTRADOR;

CREATE VIEW propietarios_unidades_por_consorcio AS -- Creacion de vista para ver los propietarios y su unidad funcional de los consorcios 
SELECT
    c.ID,
    c.DIRECCION,
    p.DNI,
    p.APELLIDO,
    p.UNIDAD_FUNCIONAL
FROM CONSORCIO c
INNER JOIN PROPIETARIO p ON p.ID_CONSORCIO = c.ID;

SELECT * FROM PROPIETARIOS_UNIDADES_POR_CONSORCIO;


CREATE VIEW consorcios_grandes AS -- Creacion de vista para ver los consorcios con mas de 50 unidades funcionales
SELECT
    c.ID,
    c.DIRECCION,
    c.UNIDADES_FUNCIONALES
FROM CONSORCIO c
WHERE c.UNIDADES_FUNCIONALES > 50;

SELECT * FROM CONSORCIOS_GRANDES;


CREATE VIEW propietarios_no_deudores AS -- Creacion de vista para ver los propietarios que no poseen deuda
SELECT
    p.DNI,
    p.APELLIDO,
    p.UNIDAD_FUNCIONAL,
    p.DEUDA
FROM PROPIETARIO p
WHERE p.DEUDA = 0;

SELECT * FROM PROPIETARIOS_NO_DEUDORES;