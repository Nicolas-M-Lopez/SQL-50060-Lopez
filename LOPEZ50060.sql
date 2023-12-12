DROP SCHEMA IF EXISTS GESTAR;
CREATE SCHEMA IF NOT EXISTS GESTAR;
USE GESTAR;

CREATE TABLE IF NOT EXISTS ADMINISTRADOR( -- Tabla con datos del administrador
MATRICULA INT PRIMARY KEY,
CUIT_ADMINISTRADOR INT NOT NULL, 
TELEFONO INT,
NOMBRE VARCHAR(15) NOT NULL,
APELLIDO VARCHAR(15) NOT NULL,
EMAIL VARCHAR(30) NOT NULL,
CONTRASEÑA VARCHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS PROVEDOR( -- Tabla con datos del provedor e identificacion del administrador
ID_PROVEDOR INT PRIMARY KEY AUTO_INCREMENT,
MATRICULA_ADMINISTRADOR INT,
NOMBRE_COMPLETO VARCHAR(40) NOT NULL, 
CUIT_PROVEDOR INT,
CONSTRAINT MATRICULA_ADMINISTRADOR FOREIGN KEY (MATRICULA_ADMINISTRADOR) REFERENCES ADMINISTRADOR (MATRICULA)
);

CREATE TABLE IF NOT EXISTS CONSORCIO( -- Tabla con datos del consorcio e idetificacion del adminsitrador
ID INT PRIMARY KEY AUTO_INCREMENT,
CUIT_CONSORCIO INT,
DIRECCION VARCHAR(40) NOT NULL,
MATRICULA_ADMINISTRADOR INT,
UNIDADES_FUNCIONALES INT NOT NULL,
CONSTRAINT MATRICULA_ADMINISRTADOR FOREIGN KEY (MATRICULA_ADMINISTRADOR) REFERENCES ADMINISTRADOR (MATRICULA)
);

CREATE TABLE IF NOT EXISTS PROPIETARIO( -- Tabla con datos del propietario e identificacion del consorcio
DNI INT PRIMARY KEY,
ID_CONSORCIO INT,
EMAIL VARCHAR(30),
APELLIDO VARCHAR(15) NOT NULL,
UNIDAD_FUNCIONAL INT NOT NULL,
DEUDA INT NOT NULL,
CONSTRAINT ID_CONSORCIO_PROP FOREIGN KEY (ID_CONSORCIO) REFERENCES CONSORCIO (ID)
);

CREATE TABLE IF NOT EXISTS EXPENSA( -- Tabla con datos de la expensa e identificacion del consorcio
ID_EXPENSA INT AUTO_INCREMENT PRIMARY KEY,
ID_CONSORCIO INT,
MES VARCHAR(10) NOT NULL,
AÑO INT NOT NULL,
CONSTRAINT ID_CONSORCIO_EXP FOREIGN KEY (ID_CONSORCIO) REFERENCES CONSORCIO (ID)
);

CREATE TABLE IF NOT EXISTS CAJA_TOTAL( -- Tabla con datos de la caja e identificacion de la expensa
ID_CAJA INT PRIMARY KEY AUTO_INCREMENT,
ID_EXPENSA INT,
TOTAL INT NOT NULL,
CONSTRAINT ID_EXPENSA FOREIGN KEY (ID_EXPENSA) REFERENCES EXPENSA (ID_EXPENSA)
);

CREATE TABLE IF NOT EXISTS CAJA_BANCO( -- Tabla con datos de la caja banco e identificacion de la caja total
ID_BANCO INT AUTO_INCREMENT PRIMARY KEY,
ID_CAJA INT,
INGRESOS_BANCO INT,
EGRESOS_BANCO INT,
CONSTRAINT ID_CAJA_B FOREIGN KEY (ID_CAJA) REFERENCES CAJA_TOTAL (ID_CAJA)
);

CREATE TABLE IF NOT EXISTS CAJA_EFECTIVO( -- Tabla con datos de la caja efectivo e identificacion de la caja total
ID_EFECTIVO INT AUTO_INCREMENT PRIMARY KEY,
ID_CAJA INT,
INGRESOS_EFECIVO INT,
EGRESOS_EFECTIVO INT,
CONSTRAINT ID_CAJA_E FOREIGN KEY (ID_CAJA) REFERENCES CAJA_TOTAL (ID_CAJA)
);