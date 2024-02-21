-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: gestar
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `administrador`
--

DROP TABLE IF EXISTS `administrador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrador` (
  `MATRICULA` int NOT NULL,
  `CUIT_ADMINISTRADOR` bigint NOT NULL,
  `TELEFONO` bigint DEFAULT NULL,
  `NOMBRE` varchar(15) NOT NULL,
  `APELLIDO` varchar(15) NOT NULL,
  `EMAIL` varchar(30) NOT NULL,
  `CONTRASEÑA` varchar(20) NOT NULL,
  PRIMARY KEY (`MATRICULA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrador`
--

LOCK TABLES `administrador` WRITE;
/*!40000 ALTER TABLE `administrador` DISABLE KEYS */;
INSERT INTO `administrador` VALUES (10101,10101010101,1010101010,'Valentina','Perez','valentinaperez@gmail.com','Contraseña10'),(11111,11111111111,1111111111,'Nicolas','Lopez','nicolasmlopez00@gmail.com','Contraseña1'),(11112,11111111112,1111111112,'Tomas','Garcia','tomasgarcia@gmail.com','Contraseña11'),(12121,12121212121,1212121212,'Sofia','Martinez','sofiamartinez@gmail.com','Contraseña12'),(13131,13131313131,1313131313,'Matias','Rodriguez','matiasrodriguez@gmail.com','Contraseña13'),(14141,14141414141,1414141414,'Camila','López','camilalopez@gmail.com','Contraseña14'),(15151,15151515151,1515151515,'Benjamin','Castro','benjamincastro@gmail.com','Contraseña15'),(22222,22222222222,2222222222,'Maira','Pelozo','ejemplotrigger2@gmail.com','Contraseña2'),(33333,33333333333,3333333333,'Camilo','Redondo','camiloredondo@gmail.com','Contraseña3'),(44444,44444444444,4444444444,'Facundo','Fiotto','facundofiotto@gmail.com','Contraseña4'),(55555,55555555555,5555555555,'Julian','Fernandez','julianfernandez@gmail.com','Contraseña5'),(66666,66666666666,6666666666,'Francisco','Bustos','franciscobustos@gmail.com','Contraseña6'),(77777,77777777777,7777777777,'Eliana','Martos','elianamartos@gmail.com','Contraseña7'),(88888,88888888888,8888888888,'Agustina','Gomez','agustinagomez@gmail.com','Contraseña8'),(99999,99999999999,9999999999,'Lautaro','Diaz','lautarodiaz@gmail.com','Contraseña9');
/*!40000 ALTER TABLE `administrador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caja_banco`
--

DROP TABLE IF EXISTS `caja_banco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `caja_banco` (
  `ID_BANCO` int NOT NULL AUTO_INCREMENT,
  `ID_CAJA` int DEFAULT NULL,
  `INGRESOS_BANCO` int DEFAULT NULL,
  `EGRESOS_BANCO` int DEFAULT NULL,
  PRIMARY KEY (`ID_BANCO`),
  KEY `ID_CAJA_B` (`ID_CAJA`),
  CONSTRAINT `ID_CAJA_B` FOREIGN KEY (`ID_CAJA`) REFERENCES `caja_total` (`ID_CAJA`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caja_banco`
--

LOCK TABLES `caja_banco` WRITE;
/*!40000 ALTER TABLE `caja_banco` DISABLE KEYS */;
INSERT INTO `caja_banco` VALUES (1,1,500000,250000),(2,2,1000200,500100),(3,3,850000,425000),(4,4,1200000,600000),(5,5,700000,350000),(6,6,950000,475000),(7,7,600000,300000),(8,8,1100000,505000),(9,9,550000,275000),(10,10,1050000,525000),(11,11,800000,400000),(12,12,1250000,625000),(13,13,750000,375000),(14,14,1000000,500000),(15,15,650000,325000),(20,16,300000,150000),(21,16,300000,150000),(22,16,300000,150000);
/*!40000 ALTER TABLE `caja_banco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caja_efectivo`
--

DROP TABLE IF EXISTS `caja_efectivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `caja_efectivo` (
  `ID_EFECTIVO` int NOT NULL AUTO_INCREMENT,
  `ID_CAJA` int DEFAULT NULL,
  `INGRESOS_EFECTIVO` int DEFAULT NULL,
  `EGRESOS_EFECTIVO` int DEFAULT NULL,
  PRIMARY KEY (`ID_EFECTIVO`),
  KEY `ID_CAJA_E` (`ID_CAJA`),
  CONSTRAINT `ID_CAJA_E` FOREIGN KEY (`ID_CAJA`) REFERENCES `caja_total` (`ID_CAJA`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caja_efectivo`
--

LOCK TABLES `caja_efectivo` WRITE;
/*!40000 ALTER TABLE `caja_efectivo` DISABLE KEYS */;
INSERT INTO `caja_efectivo` VALUES (1,1,500000,250000),(2,2,1000200,500100),(3,3,850000,425000),(4,4,1200000,600000),(5,5,700000,350000),(6,6,950000,475000),(7,7,600000,300000),(8,8,1100000,505000),(9,9,550000,275000),(10,10,1050000,525000),(11,11,800000,400000),(12,12,1250000,625000),(13,13,750000,375000),(14,14,1000000,500000),(15,15,650000,325000);
/*!40000 ALTER TABLE `caja_efectivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caja_total`
--

DROP TABLE IF EXISTS `caja_total`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `caja_total` (
  `ID_CAJA` int NOT NULL AUTO_INCREMENT,
  `ID_EXPENSA` int DEFAULT NULL,
  `TOTAL` int NOT NULL,
  PRIMARY KEY (`ID_CAJA`),
  KEY `ID_EXPENSA` (`ID_EXPENSA`),
  CONSTRAINT `ID_EXPENSA` FOREIGN KEY (`ID_EXPENSA`) REFERENCES `expensa` (`ID_EXPENSA`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caja_total`
--

LOCK TABLES `caja_total` WRITE;
/*!40000 ALTER TABLE `caja_total` DISABLE KEYS */;
INSERT INTO `caja_total` VALUES (1,1,500000),(2,2,1000200),(3,3,850000),(4,4,1200000),(5,5,700000),(6,6,950000),(7,7,600000),(8,8,1100000),(9,9,550000),(10,10,1050000),(11,11,800000),(12,12,1250000),(13,13,750000),(14,14,1000000),(15,15,650000),(16,1,500000),(17,2,1000200),(18,3,850000);
/*!40000 ALTER TABLE `caja_total` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consorcio`
--

DROP TABLE IF EXISTS `consorcio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consorcio` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CUIT_CONSORCIO` bigint DEFAULT NULL,
  `DIRECCION` varchar(40) NOT NULL,
  `MATRICULA_ADMINISTRADOR` int DEFAULT NULL,
  `UNIDADES_FUNCIONALES` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `MATRICULA_ADMINISRTADOR` (`MATRICULA_ADMINISTRADOR`),
  CONSTRAINT `MATRICULA_ADMINISRTADOR` FOREIGN KEY (`MATRICULA_ADMINISTRADOR`) REFERENCES `administrador` (`MATRICULA`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consorcio`
--

LOCK TABLES `consorcio` WRITE;
/*!40000 ALTER TABLE `consorcio` DISABLE KEYS */;
INSERT INTO `consorcio` VALUES (1,11111111111,'AVENIDA FELIZ 132',11111,43),(2,22222222222,'CASA NUEVA 9977',10101,12),(3,33333333333,'WASHIGNTON 1515',99999,105),(4,44444444444,'CALLE LARGA 456',88888,20),(5,55555555555,'AVENIDA DEL SOL 2222',77777,65),(6,66666666666,'BARRIO CERRADO LAS LOMAS',66666,30),(7,77777777777,'PARQUE LAS HERAS 123',11111,80),(8,88888888888,'CALLE 54 100',44444,15),(9,99999999999,'AVENIDA RIVADAVIA 3333',33333,40),(10,10101010101,'DIAGONAL NORTE 789',22222,50),(11,11111111112,'CALLE 8 25',11111,25),(12,12121212122,'AVENIDA INDEPENDENCIA 1810',10101,70),(13,13131313133,'PUERTO MADERO 1234',99999,90),(14,14141414144,'AVENIDA CORRIENTES 1453',15151,35),(15,15151515155,'BARRIO NORTE 5678',77777,110);
/*!40000 ALTER TABLE `consorcio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `consorcios_grandes`
--

DROP TABLE IF EXISTS `consorcios_grandes`;
/*!50001 DROP VIEW IF EXISTS `consorcios_grandes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `consorcios_grandes` AS SELECT 
 1 AS `ID`,
 1 AS `DIRECCION`,
 1 AS `UNIDADES_FUNCIONALES`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `expensa`
--

DROP TABLE IF EXISTS `expensa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expensa` (
  `ID_EXPENSA` int NOT NULL AUTO_INCREMENT,
  `ID_CONSORCIO` int DEFAULT NULL,
  `MES` varchar(10) NOT NULL,
  `AÑO` int NOT NULL,
  PRIMARY KEY (`ID_EXPENSA`),
  KEY `ID_CONSORCIO_EXP` (`ID_CONSORCIO`),
  CONSTRAINT `ID_CONSORCIO_EXP` FOREIGN KEY (`ID_CONSORCIO`) REFERENCES `consorcio` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expensa`
--

LOCK TABLES `expensa` WRITE;
/*!40000 ALTER TABLE `expensa` DISABLE KEYS */;
INSERT INTO `expensa` VALUES (1,10,'OCTUBRE',2014),(2,2,'ENERO',2015),(3,7,'MAYO',2001),(4,10,'OCTUBRE',2014),(5,2,'ENERO',2015),(6,7,'MAYO',2001),(7,1,'DICIEMBRE',2023),(8,3,'FEBRERO',2022),(9,5,'JULIO',2018),(10,12,'NOVIEMBRE',2019),(11,4,'MARZO',2017),(12,6,'AGOSTO',2016),(13,8,'ABRIL',2013),(14,9,'SEPTIEMBRE',2012),(15,14,'JUNIO',2020);
/*!40000 ALTER TABLE `expensa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_administrador`
--

DROP TABLE IF EXISTS `log_administrador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_administrador` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `MATRICULA_ADMINISTRADOR` int DEFAULT NULL,
  `FECHA` date DEFAULT NULL,
  `HORA` time DEFAULT NULL,
  `CAMPO_MODIFICADO` varchar(50) DEFAULT NULL,
  `VALOR_ANTERIOR` varchar(255) DEFAULT NULL,
  `VALOR_NUEVO` varchar(255) DEFAULT NULL,
  `USUARIO_MODIFICADOR` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_administrador`
--

LOCK TABLES `log_administrador` WRITE;
/*!40000 ALTER TABLE `log_administrador` DISABLE KEYS */;
INSERT INTO `log_administrador` VALUES (1,22222,'2024-01-15','19:15:56','EMAIL','ejemplotrigger1@gmail.com','ejemplotrigger2@gmail.com','root@localhost');
/*!40000 ALTER TABLE `log_administrador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_caja_banco`
--

DROP TABLE IF EXISTS `log_caja_banco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_caja_banco` (
  `ID_LOG` int NOT NULL AUTO_INCREMENT,
  `ID_CAJA` int DEFAULT NULL,
  `ACCION` varchar(10) DEFAULT NULL,
  `INGRESOS` int DEFAULT NULL,
  `EGRESOS` int DEFAULT NULL,
  `USUARIO` varchar(50) DEFAULT NULL,
  `FECHA` date DEFAULT NULL,
  `HORA` time DEFAULT NULL,
  PRIMARY KEY (`ID_LOG`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_caja_banco`
--

LOCK TABLES `log_caja_banco` WRITE;
/*!40000 ALTER TABLE `log_caja_banco` DISABLE KEYS */;
INSERT INTO `log_caja_banco` VALUES (1,16,'INSERT',300000,150000,'root@localhost','2024-01-15','19:16:50');
/*!40000 ALTER TABLE `log_caja_banco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `propietario`
--

DROP TABLE IF EXISTS `propietario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `propietario` (
  `DNI` int NOT NULL,
  `ID_CONSORCIO` int DEFAULT NULL,
  `EMAIL` varchar(30) DEFAULT NULL,
  `APELLIDO` varchar(15) NOT NULL,
  `UNIDAD_FUNCIONAL` int NOT NULL,
  `DEUDA` int NOT NULL,
  PRIMARY KEY (`DNI`),
  KEY `ID_CONSORCIO_PROP` (`ID_CONSORCIO`),
  CONSTRAINT `ID_CONSORCIO_PROP` FOREIGN KEY (`ID_CONSORCIO`) REFERENCES `consorcio` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propietario`
--

LOCK TABLES `propietario` WRITE;
/*!40000 ALTER TABLE `propietario` DISABLE KEYS */;
INSERT INTO `propietario` VALUES (10101010,3,'celeste@gmail.com','Celeste',18,35000),(11111111,1,'lopez@gmail.com','Lopez',5,15000),(11111112,13,'marfil@gmail.com','Marfil',19,0),(12121212,15,'plateado@gmail.com','Plateado',21,20000),(13131313,3,'dorado@gmail.com','Dorado',22,45000),(14141414,7,'purpura@gmail.com','Purpura',23,0),(15151515,3,'marron@gmail.com','Marron',24,30000),(22222222,2,'gomez@gmail.com','Gomez',12,0),(33333333,1,'fernandez@gmail.com','Fernandez',1,50000),(44444444,3,'rojo@gmail.com','Rojo',2,5000),(55555555,5,'verde@gmail.com','Verde',14,0),(66666666,10,'naranja@gmail.com','Naranja',13,40000),(77777777,1,'violeta@gmail.com','Violeta',5,2500),(88888888,6,'amarillo@gmail.com','Amarillo',16,0),(99999999,9,'rosa@gmail.com','Rosa',17,15000);
/*!40000 ALTER TABLE `propietario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `propietarios_deudores`
--

DROP TABLE IF EXISTS `propietarios_deudores`;
/*!50001 DROP VIEW IF EXISTS `propietarios_deudores`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `propietarios_deudores` AS SELECT 
 1 AS `DNI`,
 1 AS `APELLIDO`,
 1 AS `UNIDAD_FUNCIONAL`,
 1 AS `DEUDA`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `propietarios_no_deudores`
--

DROP TABLE IF EXISTS `propietarios_no_deudores`;
/*!50001 DROP VIEW IF EXISTS `propietarios_no_deudores`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `propietarios_no_deudores` AS SELECT 
 1 AS `DNI`,
 1 AS `APELLIDO`,
 1 AS `UNIDAD_FUNCIONAL`,
 1 AS `DEUDA`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `propietarios_unidades_por_consorcio`
--

DROP TABLE IF EXISTS `propietarios_unidades_por_consorcio`;
/*!50001 DROP VIEW IF EXISTS `propietarios_unidades_por_consorcio`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `propietarios_unidades_por_consorcio` AS SELECT 
 1 AS `ID`,
 1 AS `DIRECCION`,
 1 AS `DNI`,
 1 AS `APELLIDO`,
 1 AS `UNIDAD_FUNCIONAL`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `provedor`
--

DROP TABLE IF EXISTS `provedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provedor` (
  `ID_PROVEDOR` int NOT NULL AUTO_INCREMENT,
  `MATRICULA_ADMINISTRADOR` int DEFAULT NULL,
  `NOMBRE_COMPLETO` varchar(40) NOT NULL,
  `CUIT_PROVEDOR` bigint DEFAULT NULL,
  PRIMARY KEY (`ID_PROVEDOR`),
  KEY `MATRICULA_ADMINISTRADOR` (`MATRICULA_ADMINISTRADOR`),
  CONSTRAINT `MATRICULA_ADMINISTRADOR` FOREIGN KEY (`MATRICULA_ADMINISTRADOR`) REFERENCES `administrador` (`MATRICULA`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provedor`
--

LOCK TABLES `provedor` WRITE;
/*!40000 ALTER TABLE `provedor` DISABLE KEYS */;
INSERT INTO `provedor` VALUES (1,11111,'DESTAPA TODO',0),(2,22222,'ASCENSORES VECTOR',11111111111),(3,33333,'FUMIGACION KARINA',22222222222),(4,11111,'VERTIROD',33333333333),(5,11111,'ADMINISTRACION LOPEZ',44444444444),(6,44444,'ASCENSORES VECTOR',11111111111),(7,13131,'SECLAN',55555555555),(8,15151,'GESTIONAR',66666666666),(9,55555,'GESTIONAR',66666666666),(10,10101,'NANOTECK',77777777777),(11,12121,'FUMIGACIONES LOMAR',88888888888),(12,99999,'VELAZQUEZ',99999999999),(13,11112,'A-GESTION',10101010101),(14,14141,'A-GESTION',10101010101),(15,77777,'MATAFUEGOS DEL PARQUE',11111111112),(16,11111,'Nuevo Provedor',123456789),(17,22222,'SP Provedor',123559789),(18,22222,'SP Provedor',123559789),(19,22222,'SP Provedor',123559789),(20,22222,'SP Provedor',123559789),(21,22222,'SP Provedor',123559789),(22,33333,'SP Provedor',123559789),(23,33333,'SP Provedor',123559789),(24,33333,'SP Provedor',123559789),(25,33333,'SP Provedor',123559789),(26,33333,'SP Provedor',123559789),(27,33333,'SP Provedor',123559789),(28,33333,'SP Provedor',123559789),(29,33333,'SP Provedor',123559789);
/*!40000 ALTER TABLE `provedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `proveedores_por_administrador`
--

DROP TABLE IF EXISTS `proveedores_por_administrador`;
/*!50001 DROP VIEW IF EXISTS `proveedores_por_administrador`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `proveedores_por_administrador` AS SELECT 
 1 AS `NOMBRE`,
 1 AS `APELLIDO`,
 1 AS `NOMBRE_COMPLETO`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'gestar'
--

--
-- Dumping routines for database 'gestar'
--
/*!50003 DROP FUNCTION IF EXISTS `DINERO_RESTANTE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `DINERO_RESTANTE`(P_GASTOS_MES INT, P_RECAUDACION_MES INT) RETURNS int
    DETERMINISTIC
BEGIN
DECLARE V_TOTAL INT;
SET V_TOTAL = P_RECAUDACION_MES - P_GASTOS_MES;
RETURN V_TOTAL;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `SALDO_CONSORCIO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `SALDO_CONSORCIO`(P_CONSORCIO VARCHAR(255)) RETURNS int
    DETERMINISTIC
BEGIN
DECLARE V_ID_CONSORCIO INT;
DECLARE V_ID_CAJA INT;
DECLARE V_SALDO_FINAL INT;

SELECT ID INTO V_ID_CONSORCIO FROM CONSORCIO WHERE DIRECCION = (P_CONSORCIO);

SELECT ID_CAJA INTO V_ID_CAJA FROM CAJA_TOTAL WHERE ID_EXPENSA IN (SELECT ID_EXPENSA FROM EXPENSA WHERE ID_CONSORCIO = V_ID_CONSORCIO);

SELECT (INGRESOS_BANCO - EGRESOS_BANCO) INTO V_SALDO_FINAL FROM CAJA_BANCO WHERE ID_CAJA = V_ID_CAJA;

RETURN V_SALDO_FINAL;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_INSERTAR_PROVEDOR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_INSERTAR_PROVEDOR`(IN P_MATRICULA_ADMINISTRADOR INT,
									   IN P_NOMBRE_COMPLETO VARCHAR(40),
                                       IN P_CUIT_PROVEDOR BIGINT,
                                       OUT V_MATRICULA_ADMINISTRADOR INT,
									   OUT V_NOMBRE_COMPLETO VARCHAR(40),
                                       OUT V_CUIT_PROVEDOR BIGINT)
BEGIN
INSERT INTO PROVEDOR(MATRICULA_ADMINISTRADOR, NOMBRE_COMPLETO, CUIT_PROVEDOR) VALUES (
	P_MATRICULA_ADMINISTRADOR, P_NOMBRE_COMPLETO, P_CUIT_PROVEDOR);


SELECT MATRICULA_ADMINISTRADOR, NOMBRE_COMPLETO, CUIT_PROVEDOR INTO V_MATRICULA_ADMINISTRADOR, V_NOMBRE_COMPLETO, V_CUIT_PROVEDOR
    FROM PROVEDOR
    WHERE MATRICULA_ADMINISTRADOR = P_MATRICULA_ADMINISTRADOR
        AND NOMBRE_COMPLETO = P_NOMBRE_COMPLETO
        AND CUIT_PROVEDOR = P_CUIT_PROVEDOR
	LIMIT 1;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ORDENAR_CONSORCIOS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ORDENAR_CONSORCIOS`(
  IN P_CAMPO ENUM('DIRECCION', 'UNIDADES_FUNCIONALES'),
  IN P_ORDEN BOOLEAN,
  OUT V_CONSORCIOS_CAMPO TEXT
)
BEGIN
  SET @ORDER_DIRECTION = IF(P_ORDEN, 'DESC', 'ASC');

  CASE P_CAMPO
    WHEN 'DIRECCION' THEN
      SET @QUERY = CONCAT('SELECT * FROM CONSORCIO ORDER BY DIRECCION ', @ORDER_DIRECTION);
    WHEN 'UNIDADES_FUNCIONALES' THEN
      SET @QUERY = CONCAT('SELECT * FROM CONSORCIO ORDER BY UNIDADES_FUNCIONALES ', @ORDER_DIRECTION);
    ELSE
      SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'Campo de ordenamiento no válido';
  END CASE;

  PREPARE stmt FROM @QUERY;
  EXECUTE stmt;
  DEALLOCATE PREPARE stmt;

  SET V_CONSORCIOS_CAMPO = @QUERY;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `consorcios_grandes`
--

/*!50001 DROP VIEW IF EXISTS `consorcios_grandes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `consorcios_grandes` AS select `c`.`ID` AS `ID`,`c`.`DIRECCION` AS `DIRECCION`,`c`.`UNIDADES_FUNCIONALES` AS `UNIDADES_FUNCIONALES` from `consorcio` `c` where (`c`.`UNIDADES_FUNCIONALES` > 50) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `propietarios_deudores`
--

/*!50001 DROP VIEW IF EXISTS `propietarios_deudores`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `propietarios_deudores` AS select `p`.`DNI` AS `DNI`,`p`.`APELLIDO` AS `APELLIDO`,`p`.`UNIDAD_FUNCIONAL` AS `UNIDAD_FUNCIONAL`,`p`.`DEUDA` AS `DEUDA` from `propietario` `p` where (`p`.`DEUDA` > 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `propietarios_no_deudores`
--

/*!50001 DROP VIEW IF EXISTS `propietarios_no_deudores`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `propietarios_no_deudores` AS select `p`.`DNI` AS `DNI`,`p`.`APELLIDO` AS `APELLIDO`,`p`.`UNIDAD_FUNCIONAL` AS `UNIDAD_FUNCIONAL`,`p`.`DEUDA` AS `DEUDA` from `propietario` `p` where (`p`.`DEUDA` = 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `propietarios_unidades_por_consorcio`
--

/*!50001 DROP VIEW IF EXISTS `propietarios_unidades_por_consorcio`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `propietarios_unidades_por_consorcio` AS select `c`.`ID` AS `ID`,`c`.`DIRECCION` AS `DIRECCION`,`p`.`DNI` AS `DNI`,`p`.`APELLIDO` AS `APELLIDO`,`p`.`UNIDAD_FUNCIONAL` AS `UNIDAD_FUNCIONAL` from (`consorcio` `c` join `propietario` `p` on((`p`.`ID_CONSORCIO` = `c`.`ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `proveedores_por_administrador`
--

/*!50001 DROP VIEW IF EXISTS `proveedores_por_administrador`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `proveedores_por_administrador` AS select `a`.`NOMBRE` AS `NOMBRE`,`a`.`APELLIDO` AS `APELLIDO`,`p`.`NOMBRE_COMPLETO` AS `NOMBRE_COMPLETO` from (`administrador` `a` join `provedor` `p` on((`p`.`MATRICULA_ADMINISTRADOR` = `a`.`MATRICULA`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-29 17:29:28
