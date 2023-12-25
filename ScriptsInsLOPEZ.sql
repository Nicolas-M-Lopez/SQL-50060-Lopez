DROP SCHEMA IF EXISTS GESTAR;
CREATE SCHEMA IF NOT EXISTS GESTAR;
USE GESTAR;

CREATE TABLE IF NOT EXISTS ADMINISTRADOR( -- Tabla con datos del administrador
MATRICULA INT PRIMARY KEY,
CUIT_ADMINISTRADOR BIGINT NOT NULL, 
TELEFONO BIGINT,
NOMBRE VARCHAR(15) NOT NULL,
APELLIDO VARCHAR(15) NOT NULL,
EMAIL VARCHAR(30) NOT NULL,
CONTRASEÑA VARCHAR(20) NOT NULL
);

INSERT INTO ADMINISTRADOR (MATRICULA, CUIT_ADMINISTRADOR, TELEFONO, NOMBRE, APELLIDO, EMAIL, CONTRASEÑA) VALUES
	(11111, 11111111111, 1111111111, 'Nicolas', 'Lopez', 'nicolasmlopez00@gmail.com', 'Contraseña1'),
	(22222, 22222222222, 2222222222, 'Maira', 'Pelozo', 'mairapelozo@gmail.com', 'Contraseña2'),
	(33333, 33333333333, 3333333333, 'Camilo', 'Redondo', 'camiloredondo@gmail.com', 'Contraseña3'),
	(44444, 44444444444, 4444444444, 'Facundo', 'Fiotto', 'facundofiotto@gmail.com', 'Contraseña4'),
	(55555, 55555555555, 5555555555, 'Julian', 'Fernandez', 'julianfernandez@gmail.com', 'Contraseña5'),
	(66666, 66666666666, 6666666666, 'Francisco', 'Bustos', 'franciscobustos@gmail.com', 'Contraseña6'),
	(77777, 77777777777, 7777777777, 'Eliana', 'Martos', 'elianamartos@gmail.com', 'Contraseña7'),
	(88888, 88888888888, 8888888888, 'Agustina', 'Gomez', 'agustinagomez@gmail.com', 'Contraseña8'),
	(99999, 99999999999, 9999999999, 'Lautaro', 'Diaz', 'lautarodiaz@gmail.com', 'Contraseña9'),
	(10101, 10101010101, 1010101010, 'Valentina', 'Perez', 'valentinaperez@gmail.com', 'Contraseña10'),
	(11112, 11111111112, 1111111112, 'Tomas', 'Garcia', 'tomasgarcia@gmail.com', 'Contraseña11'),
	(12121, 12121212121, 1212121212, 'Sofia', 'Martinez', 'sofiamartinez@gmail.com', 'Contraseña12'),
	(13131, 13131313131, 1313131313, 'Matias', 'Rodriguez', 'matiasrodriguez@gmail.com', 'Contraseña13'),
	(14141, 14141414141, 1414141414, 'Camila', 'López', 'camilalopez@gmail.com', 'Contraseña14'),
	(15151, 15151515151, 1515151515, 'Benjamin', 'Castro', 'benjamincastro@gmail.com', 'Contraseña15');


CREATE TABLE IF NOT EXISTS PROVEDOR( -- Tabla con datos del provedor e identificacion del administrador
ID_PROVEDOR INT PRIMARY KEY AUTO_INCREMENT,
MATRICULA_ADMINISTRADOR INT,
NOMBRE_COMPLETO VARCHAR(40) NOT NULL, 
CUIT_PROVEDOR BIGINT,
CONSTRAINT MATRICULA_ADMINISTRADOR FOREIGN KEY (MATRICULA_ADMINISTRADOR) REFERENCES ADMINISTRADOR (MATRICULA)
);

INSERT INTO PROVEDOR (MATRICULA_ADMINISTRADOR, NOMBRE_COMPLETO, CUIT_PROVEDOR) VALUES
	(11111, 'DESTAPA TODO', 00000000000),
	(22222, 'ASCENSORES VECTOR', 11111111111),
	(33333, 'FUMIGACION KARINA', 22222222222),
	(11111, 'VERTIROD', 33333333333),
	(11111, 'ADMINISTRACION LOPEZ', 44444444444),
	(44444, 'ASCENSORES VECTOR', 11111111111),
	(13131, 'SECLAN', 55555555555),
	(15151, 'GESTIONAR', 66666666666),
	(55555, 'GESTIONAR', 66666666666),
	(10101, 'NANOTECK', 77777777777),
	(12121, 'FUMIGACIONES LOMAR', 88888888888),
	(99999, 'VELAZQUEZ', 99999999999),
	(11112, 'A-GESTION', 10101010101),
	(14141, 'A-GESTION', 10101010101),
	(77777, 'MATAFUEGOS DEL PARQUE', 11111111112);

CREATE TABLE IF NOT EXISTS CONSORCIO( -- Tabla con datos del consorcio e idetificacion del adminsitrador
ID INT PRIMARY KEY AUTO_INCREMENT,
CUIT_CONSORCIO BIGINT,
DIRECCION VARCHAR(40) NOT NULL,
MATRICULA_ADMINISTRADOR INT,
UNIDADES_FUNCIONALES INT NOT NULL,
CONSTRAINT MATRICULA_ADMINISRTADOR FOREIGN KEY (MATRICULA_ADMINISTRADOR) REFERENCES ADMINISTRADOR (MATRICULA)
);

INSERT INTO CONSORCIO (CUIT_CONSORCIO, DIRECCION, MATRICULA_ADMINISTRADOR, UNIDADES_FUNCIONALES) VALUES
(11111111111, 'AVENIDA FELIZ 132', 11111, 43),
(22222222222, 'CASA NUEVA 9977', 10101, 12),
(33333333333, 'WASHIGNTON 1515', 99999, 105),
(44444444444, 'CALLE LARGA 456', 88888, 20),
(55555555555, 'AVENIDA DEL SOL 2222', 77777, 65),
(66666666666, 'BARRIO CERRADO LAS LOMAS', 66666, 30),
(77777777777, 'PARQUE LAS HERAS 123', 11111, 80),
(88888888888, 'CALLE 54 100', 44444, 15),
(99999999999, 'AVENIDA RIVADAVIA 3333', 33333, 40),
(10101010101, 'DIAGONAL NORTE 789', 22222, 50),
(11111111112, 'CALLE 8 25', 11111, 25),
(12121212122, 'AVENIDA INDEPENDENCIA 1810', 10101, 70),
(13131313133, 'PUERTO MADERO 1234', 99999, 90),
(14141414144, 'AVENIDA CORRIENTES 1453', 15151, 35),
(15151515155, 'BARRIO NORTE 5678', 77777, 110);


CREATE TABLE IF NOT EXISTS PROPIETARIO( -- Tabla con datos del propietario e identificacion del consorcio
DNI INT PRIMARY KEY,
ID_CONSORCIO INT,
EMAIL VARCHAR(30),
APELLIDO VARCHAR(15) NOT NULL,
UNIDAD_FUNCIONAL INT NOT NULL,
DEUDA INT NOT NULL,
CONSTRAINT ID_CONSORCIO_PROP FOREIGN KEY (ID_CONSORCIO) REFERENCES CONSORCIO (ID)
);

INSERT INTO PROPIETARIO (DNI, ID_CONSORCIO, EMAIL, APELLIDO, UNIDAD_FUNCIONAL, DEUDA) VALUES
	(11111111, 1, 'lopez@gmail.com', 'Lopez', 5, 15000),
	(22222222, 2, 'gomez@gmail.com', 'Gomez', 12, 0),
	(33333333, 1, 'fernandez@gmail.com', 'Fernandez', 1, 50000),
	(44444444, 3, 'rojo@gmail.com', 'Rojo', 2, 5000),
	(55555555, 5, 'verde@gmail.com', 'Verde', 14, 0),
	(66666666, 10, 'naranja@gmail.com', 'Naranja', 13, 40000),
	(77777777, 1, 'violeta@gmail.com', 'Violeta', 5, 2500),
	(88888888, 6, 'amarillo@gmail.com', 'Amarillo', 16, 0),
	(99999999, 9, 'rosa@gmail.com', 'Rosa', 17, 15000),
	(10101010, 3, 'celeste@gmail.com', 'Celeste', 18, 35000),
	(11111112, 13, 'marfil@gmail.com', 'Marfil', 19, 0),
	(12121212, 15, 'plateado@gmail.com', 'Plateado', 21, 20000),
	(13131313, 3, 'dorado@gmail.com', 'Dorado', 22, 45000),
	(14141414, 7, 'purpura@gmail.com', 'Purpura', 23, 0),
	(15151515, 3, 'marron@gmail.com', 'Marron', 24, 30000);


CREATE TABLE IF NOT EXISTS EXPENSA( -- Tabla con datos de la expensa e identificacion del consorcio
ID_EXPENSA INT AUTO_INCREMENT PRIMARY KEY,
ID_CONSORCIO INT,
MES VARCHAR(10) NOT NULL,
AÑO INT NOT NULL,
CONSTRAINT ID_CONSORCIO_EXP FOREIGN KEY (ID_CONSORCIO) REFERENCES CONSORCIO (ID)
);

INSERT INTO EXPENSA (ID_CONSORCIO, MES, AÑO) VALUES
(10, 'OCTUBRE', 2014),
(2, 'ENERO', 2015),
(7, 'MAYO', 2001),
(10, 'OCTUBRE', 2014),
(2, 'ENERO', 2015),
(7, 'MAYO', 2001),
(1, 'DICIEMBRE', 2023),
(3, 'FEBRERO', 2022),
(5, 'JULIO', 2018),
(12, 'NOVIEMBRE', 2019),
(4, 'MARZO', 2017),
(6, 'AGOSTO', 2016),
(8, 'ABRIL', 2013),
(9, 'SEPTIEMBRE', 2012),
(14, 'JUNIO', 2020);



CREATE TABLE IF NOT EXISTS CAJA_TOTAL( -- Tabla con datos de la caja e identificacion de la expensa
ID_CAJA INT PRIMARY KEY AUTO_INCREMENT,
ID_EXPENSA INT,
TOTAL INT NOT NULL,
CONSTRAINT ID_EXPENSA FOREIGN KEY (ID_EXPENSA) REFERENCES EXPENSA (ID_EXPENSA)
);

INSERT INTO CAJA_TOTAL (ID_EXPENSA, TOTAL) VALUES 
(1, 500000),
(2, 1000200),
(3, 850000),
(4, 1200000),
(5, 700000),
(6, 950000),
(7, 600000),
(8, 1100000),
(9, 550000),
(10, 1050000),
(11, 800000),
(12, 1250000),
(13, 750000),
(14, 1000000),
(15, 650000);



CREATE TABLE IF NOT EXISTS CAJA_BANCO( -- Tabla con datos de la caja banco e identificacion de la caja total
ID_BANCO INT AUTO_INCREMENT PRIMARY KEY,
ID_CAJA INT,
INGRESOS_BANCO INT,
EGRESOS_BANCO INT,
CONSTRAINT ID_CAJA_B FOREIGN KEY (ID_CAJA) REFERENCES CAJA_TOTAL (ID_CAJA)
);

INSERT INTO CAJA_BANCO (ID_CAJA, INGRESOS_BANCO, EGRESOS_BANCO) VALUES
(1, 500000, 250000),
(2, 1000200, 500100),
(3, 850000, 425000),
(4, 1200000, 600000),
(5, 700000, 350000),
(6, 950000, 475000),
(7, 600000, 300000),
(8, 1100000, 505000),
(9, 550000, 275000),
(10, 1050000, 525000),
(11, 800000, 400000),
(12, 1250000, 625000),
(13, 750000, 375000),
(14, 1000000, 500000),
(15, 650000, 325000);

CREATE TABLE IF NOT EXISTS CAJA_EFECTIVO( -- Tabla con datos de la caja efectivo e identificacion de la caja total
ID_EFECTIVO INT AUTO_INCREMENT PRIMARY KEY,
ID_CAJA INT,
INGRESOS_EFECTIVO INT,
EGRESOS_EFECTIVO INT,
CONSTRAINT ID_CAJA_E FOREIGN KEY (ID_CAJA) REFERENCES CAJA_TOTAL (ID_CAJA)
);

INSERT INTO CAJA_EFECTIVO (ID_CAJA, INGRESOS_EFECTIVO, EGRESOS_EFECTIVO) VALUES
(1, 500000, 250000),
(2, 1000200, 500100),
(3, 850000, 425000),
(4, 1200000, 600000),
(5, 700000, 350000),
(6, 950000, 475000),
(7, 600000, 300000),
(8, 1100000, 505000),
(9, 550000, 275000),
(10, 1050000, 525000),
(11, 800000, 400000),
(12, 1250000, 625000),
(13, 750000, 375000),
(14, 1000000, 500000),
(15, 650000, 325000);
