CREATE DATABASE  IF NOT EXISTS `dyv-an` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `dyv-an`;
-- MySQL dump 10.13  Distrib 5.5.43, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: dyv-an
-- ------------------------------------------------------
-- Server version	5.5.39

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bancos`
--

DROP TABLE IF EXISTS `bancos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bancos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `banco` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `num_cuenta` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `deleted` int(11) DEFAULT '0',
  `tipo` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `imagen` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bancos`
--

LOCK TABLES `bancos` WRITE;
/*!40000 ALTER TABLE `bancos` DISABLE KEYS */;
INSERT INTO `bancos` VALUES (1,'fasfsaf','r3r33qr',1,'qrqwrwqr','banda-01.png','2015-05-23','2015-05-23'),(2,'banco pepito','342343243243',0,'ahorro','maxresdefault.jpg','2015-06-01','2015-06-01');
/*!40000 ALTER TABLE `bancos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_nomb` varchar(50) NOT NULL,
  `cat_desc` varchar(50) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  `deleted` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Trajes de baños','Trajes de baños','2015-04-25','2015-05-03',1),(2,'zapatos','zapatos','2015-04-25','2015-04-25',1),(3,'Trajes de baño','Trajes de baño','2015-05-03','2015-05-03',0),(4,'ropa','ropa','2015-06-01','2015-06-01',0),(5,'ropa2','ropa2','2015-06-01','2015-06-01',0),(6,'ropa3','ropa3','2015-06-01','2015-06-01',0),(7,'ropa4','ropa4','2015-06-01','2015-06-01',0),(8,'ropa5','ropa5','2015-06-01','2015-06-01',0);
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colores`
--

DROP TABLE IF EXISTS `colores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `color_nomb` varchar(20) DEFAULT NULL,
  `color_desc` varchar(20) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colores`
--

LOCK TABLES `colores` WRITE;
/*!40000 ALTER TABLE `colores` DISABLE KEYS */;
INSERT INTO `colores` VALUES (1,'amarillo','Amarillos','2015-03-08','2015-04-25',0),(2,'azul','Azul','2015-03-08','2015-03-08',0),(3,'rojo','Rojo','2015-03-08','2015-04-25',1),(4,'safasf','asffsas','2015-03-13','2015-03-13',1);
/*!40000 ALTER TABLE `colores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departamento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (1,'la paz'),(2,'santa cruz'),(3,'cochabamba'),(4,'beni'),(5,'potosi'),(6,'tarija'),(7,'chuquisaca'),(8,'oruro'),(9,'pando');
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direcciones`
--

DROP TABLE IF EXISTS `direcciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `direcciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `dir` varchar(500) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `deleted` int(11) DEFAULT '0',
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `user_dir` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direcciones`
--

LOCK TABLES `direcciones` WRITE;
/*!40000 ALTER TABLE `direcciones` DISABLE KEYS */;
INSERT INTO `direcciones` VALUES (1,9,'esta es la direccion nueva','pepito@pape.com',0,'2015-06-11','2015-06-11',NULL),(2,2,'caguafadf daf daf daf daf adf adf ','shenlong_12@hotmail.com',0,'2015-05-12','2015-06-09',1),(3,9,' dfadfdfadf','pepetonio@pepe.com',0,'2015-06-16','2015-06-16',1);
/*!40000 ALTER TABLE `direcciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado`
--

DROP TABLE IF EXISTS `estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador de la tabla Estado',
  `nombre` varchar(100) NOT NULL COMMENT 'Indica el nombre del estado almacenado',
  `pais_id` int(11) NOT NULL COMMENT 'Campo que relaciona el estado con el pais',
  `deleted` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_estado_pais` (`pais_id`),
  CONSTRAINT `fk_estado_pais` FOREIGN KEY (`pais_id`) REFERENCES `pais` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='Entidad que contiene informacion sobre estados. Desarrollado por Jose Rodriguez <josearodrigueze@gmail.com> @josearodrigueze';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
INSERT INTO `estado` VALUES (1,'DTTO. CAPITAL',1,0),(2,'ANZOATEGUI',1,0),(3,'APURE',1,0),(4,'ARAGUA',1,0),(5,'BARINAS',1,0),(6,'BOLIVAR',1,0),(7,'CARABOBO',1,0),(8,'COJEDES',1,0),(9,'FALCON',1,0),(10,'GUARICO',1,0),(11,'LARA',1,0),(12,'MERIDA',1,0),(13,'MIRANDA',1,0),(14,'MONAGAS',1,0),(15,'NUEVA ESPARTA',1,0),(16,'PORTUGUESA',1,0),(17,'SUCRE',1,0),(18,'TACHIRA',1,0),(19,'TRUJILLO',1,0),(20,'YARACUY',1,0),(21,'ZULIA',1,0),(22,'AMAZONAS',1,0),(23,'DELTA AMACURO',1,0),(24,'VARGAS',1,0);
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura_item`
--

DROP TABLE IF EXISTS `factura_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `factura_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `factura_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `item_qty` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `item_talla` int(11) DEFAULT NULL,
  `item_color` int(11) DEFAULT NULL,
  `item_precio` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura_item`
--

LOCK TABLES `factura_item` WRITE;
/*!40000 ALTER TABLE `factura_item` DISABLE KEYS */;
INSERT INTO `factura_item` VALUES (1,3,1,20,'2015-05-12','2015-05-12',1,1,1000),(2,4,1,1,'2015-05-15','2015-05-15',1,1,1000),(3,5,1,1,'2015-06-01','2015-06-01',1,1,1000),(4,6,1,2,'2015-06-11','2015-06-11',1,1,1000),(5,7,1,4,'2015-06-11','2015-06-11',1,1,1000),(6,8,4,1,'2015-06-16','2015-06-16',1,1,134123),(7,8,1,1,'2015-06-16','2015-06-16',1,1,1000);
/*!40000 ALTER TABLE `factura_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facturas`
--

DROP TABLE IF EXISTS `facturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facturas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `pagada` int(11) DEFAULT '0',
  `num_trans` int(11) DEFAULT NULL,
  `dir` varchar(500) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `fech_trans` varchar(45) DEFAULT NULL,
  `banco` int(11) DEFAULT NULL,
  `banco_ext` varchar(45) DEFAULT NULL,
  `deleted` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturas`
--

LOCK TABLES `facturas` WRITE;
/*!40000 ALTER TABLE `facturas` DISABLE KEYS */;
INSERT INTO `facturas` VALUES (1,2,0,NULL,'1','2015-05-12 23:35:08','2015-05-12 23:35:08',NULL,NULL,NULL,NULL,0),(2,2,0,NULL,'1','2015-05-12 23:35:53','2015-05-12 23:35:53',NULL,NULL,NULL,NULL,0),(3,2,0,NULL,'1','2015-05-12 23:36:25','2015-05-12 23:36:25',NULL,NULL,NULL,NULL,0),(4,2,0,NULL,'1','2015-05-15 23:27:02','2015-05-15 23:27:02',NULL,NULL,NULL,NULL,0),(5,2,1,2147483647,'1','2015-06-01 22:08:09','2015-06-12 19:43:42',NULL,'12/11/2015',2,NULL,0),(6,9,0,NULL,'0','2015-06-11 02:45:07','2015-06-11 02:45:07',NULL,NULL,NULL,NULL,0),(7,9,1,2147483647,'0','2015-06-11 22:54:32','2015-06-12 19:43:19',NULL,'03-06-2015',2,'asafsf',0),(8,9,-1,12314,'3','2015-06-16 19:25:08','2015-06-16 19:28:19',NULL,'19-06-2015',2,NULL,0);
/*!40000 ALTER TABLE `facturas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `misc_id` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted` int(11) DEFAULT '0',
  `order` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (1,1,'1/banda-01.png','2015-05-03','2015-06-12',0,0),(2,1,'1/maxresdefault1.jpg','2015-06-01','2015-06-12',0,0),(3,3,'2/sol1.jpg','2015-06-12','2015-06-12',0,0),(4,3,'2/banco-economico.gif','2015-06-12','2015-06-12',0,0),(5,3,'2/bancocredito.gif','2015-06-12','2015-06-12',0,0),(6,5,'3/bancoCredito.png','2015-06-12','2015-06-12',0,0),(7,6,'4/ADEA.jpeg','2015-06-15','2015-06-15',0,0),(8,7,'4/entidades.png','2015-06-15','2015-06-15',0,0),(9,8,'5/maqueta.png','2015-06-16','2015-06-19',0,6),(10,8,'5/ponto.png','2015-06-16','2015-06-19',0,1),(11,9,'5/ciades.jpg','2015-06-16','2015-06-19',0,2),(12,9,'5/35235.jpg','2015-06-16','2015-06-19',0,4),(13,10,'5/12.png','2015-06-18','2015-06-19',0,3),(14,11,'5/3.png','2015-06-18','2015-06-19',0,7),(15,8,'5/35235(1).jpg','2015-06-18','2015-06-19',0,8),(16,8,'5/ADEA.jpg','2015-06-18','2015-06-19',0,5);
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_cod` varchar(10) NOT NULL,
  `item_nomb` varchar(100) NOT NULL,
  `item_desc` text NOT NULL,
  `item_prov` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  `deleted` int(11) DEFAULT '0',
  `item_cat` int(11) DEFAULT NULL,
  `item_subcat` int(11) DEFAULT NULL,
  `item_precio` float DEFAULT NULL,
  `item_stock` varchar(45) DEFAULT NULL,
  `item_prom` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `item_cod` (`item_cod`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,'00012','Articulo seg','<p>xxxxxxxxxxxxxxxx</p>\r\n',0,'2015-05-03','2015-06-12',0,3,3,1000,NULL,NULL),(2,'1111','peperoni','<p>adfdafadfdfdafdafdaf</p>\r\n',0,'2015-06-12','2015-06-12',0,3,NULL,12000,NULL,NULL),(3,'0002z1','articulo 5555','<p>afdafdafadf</p>\r\n',0,'2015-06-12','2015-06-12',0,4,NULL,500,NULL,NULL),(4,'111','bebbeebe','<p>dfadfadfadfadf</p>\r\n',0,'2015-06-15','2015-06-15',0,3,NULL,134123,NULL,NULL),(5,'a4a4','asfasf','<p>dgadgdagdgadgdagadgadgadgg</p>\r\n',0,'2015-06-16','2015-06-16',0,3,3,134123,NULL,NULL);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `miscelanias`
--

DROP TABLE IF EXISTS `miscelanias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `miscelanias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) DEFAULT NULL,
  `item_talla` varchar(20) DEFAULT NULL,
  `item_color` varchar(20) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `deleted` int(11) DEFAULT '0',
  `item_stock` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `miscelanias`
--

LOCK TABLES `miscelanias` WRITE;
/*!40000 ALTER TABLE `miscelanias` DISABLE KEYS */;
INSERT INTO `miscelanias` VALUES (1,1,'1','1','2015-06-16','2015-05-03',0,'92'),(2,1,'1','1','2015-06-01','2015-06-01',0,'5'),(3,0,NULL,NULL,'2015-06-12','2015-06-12',0,NULL),(4,2,'1','1','2015-06-12','2015-06-12',0,'100'),(5,3,NULL,NULL,'2015-06-12','2015-06-12',0,NULL),(6,4,'1','1','2015-06-16','2015-06-15',0,'11'),(7,4,'2','2','2015-06-15','2015-06-15',0,'12'),(8,5,'1','1','2015-06-16','2015-06-16',0,'12'),(9,5,'2','2','2015-06-16','2015-06-16',0,'12'),(10,5,'1','2','2015-06-18','2015-06-18',0,'12'),(11,5,'3','1','2015-06-18','2015-06-18',0,'122'),(12,5,'2','2','2015-06-18','2015-06-18',0,'1111111111111');
/*!40000 ALTER TABLE `miscelanias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `municipio`
--

DROP TABLE IF EXISTS `municipio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `municipio` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador de Munucipio',
  `nombre` varchar(100) NOT NULL,
  `estado_id` int(11) NOT NULL COMMENT 'Identificador del estado al que pertenece la parroquia',
  `deleted` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_municipio_estado1` (`estado_id`),
  CONSTRAINT `fk_municipio_estado1` FOREIGN KEY (`estado_id`) REFERENCES `estado` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=336 DEFAULT CHARSET=utf8 COMMENT='Entidad que contiene la informacion de municipios. Desarrollado por Jose Rodriguez <josearodrigueze@gmail.com> @josearodrigueze';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `municipio`
--

LOCK TABLES `municipio` WRITE;
/*!40000 ALTER TABLE `municipio` DISABLE KEYS */;
INSERT INTO `municipio` VALUES (1,'LIBERTADOR',1,0),(2,'ANACO',2,0),(3,'ARAGUA',2,0),(4,'BOLIVAR',2,0),(5,'BRUZUAL',2,0),(6,'CAJIGAL',2,0),(7,'FREITES',2,0),(8,'INDEPENDENCIA',2,0),(9,'LIBERTAD',2,0),(10,'MIRANDA',2,0),(11,'MONAGAS',2,0),(12,'PEÑALVER',2,0),(13,'SIMON RODRIGUEZ',2,0),(14,'SOTILLO',2,0),(15,'GUANIPA',2,0),(16,'GUANTA',2,0),(17,'PIRITU',2,0),(18,'M.L/DIEGO BAUTISTA U',2,0),(19,'CARVAJAL',2,0),(20,'SANTA ANA',2,0),(21,'MC GREGOR',2,0),(22,'S JUAN CAPISTRANO',2,0),(23,'ACHAGUAS',3,0),(24,'MUÑOZ',3,0),(25,'PAEZ',3,0),(26,'PEDRO CAMEJO',3,0),(27,'ROMULO GALLEGOS',3,0),(28,'SAN FERNANDO',3,0),(29,'BIRUACA',3,0),(30,'GIRARDOT',4,0),(31,'SANTIAGO MARIÑO',4,0),(32,'JOSE FELIX RIVAS',4,0),(33,'SAN CASIMIRO',4,0),(34,'SAN SEBASTIAN',4,0),(35,'SUCRE',4,0),(36,'URDANETA',4,0),(37,'ZAMORA',4,0),(38,'LIBERTADOR',4,0),(39,'JOSE ANGEL LAMAS',4,0),(40,'BOLIVAR',4,0),(41,'SANTOS MICHELENA',4,0),(42,'MARIO B IRAGORRY',4,0),(43,'TOVAR',4,0),(44,'CAMATAGUA',4,0),(45,'JOSE R REVENGA',4,0),(46,'FRANCISCO LINARES A.',4,0),(47,'M.OCUMARE D LA COSTA',4,0),(48,'ARISMENDI',5,0),(49,'BARINAS',5,0),(50,'BOLIVAR',5,0),(51,'EZEQUIEL ZAMORA',5,0),(52,'OBISPOS',5,0),(53,'PEDRAZA',5,0),(54,'ROJAS',5,0),(55,'SOSA',5,0),(56,'ALBERTO ARVELO T',5,0),(57,'A JOSE DE SUCRE',5,0),(58,'CRUZ PAREDES',5,0),(59,'ANDRES E. BLANCO',5,0),(60,'CARONI',6,0),(61,'CEDEÑO',6,0),(62,'HERES',6,0),(63,'PIAR',6,0),(64,'ROSCIO',6,0),(65,'SUCRE',6,0),(66,'SIFONTES',6,0),(67,'RAUL LEONI',6,0),(68,'GRAN SABANA',6,0),(69,'EL CALLAO',6,0),(70,'PADRE PEDRO CHIEN',6,0),(71,'BEJUMA',7,0),(72,'CARLOS ARVELO',7,0),(73,'DIEGO IBARRA',7,0),(74,'GUACARA',7,0),(75,'MONTALBAN',7,0),(76,'JUAN JOSE MORA',7,0),(77,'PUERTO CABELLO',7,0),(78,'SAN JOAQUIN',7,0),(79,'VALENCIA',7,0),(80,'MIRANDA',7,0),(81,'LOS GUAYOS',7,0),(82,'NAGUANAGUA',7,0),(83,'SAN DIEGO',7,0),(84,'LIBERTADOR',7,0),(85,'ANZOATEGUI',8,0),(86,'FALCON',8,0),(87,'GIRARDOT',8,0),(88,'MP PAO SN J BAUTISTA',8,0),(89,'RICAURTE',8,0),(90,'SAN CARLOS',8,0),(91,'TINACO',8,0),(92,'LIMA BLANCO',8,0),(93,'ROMULO GALLEGOS',8,0),(94,'ACOSTA',9,0),(95,'BOLIVAR',9,0),(96,'BUCHIVACOA',9,0),(97,'CARIRUBANA',9,0),(98,'COLINA',9,0),(99,'DEMOCRACIA',9,0),(100,'FALCON',9,0),(101,'FEDERACION',9,0),(102,'MAUROA',9,0),(103,'MIRANDA',9,0),(104,'PETIT',9,0),(105,'SILVA',9,0),(106,'ZAMORA',9,0),(107,'DABAJURO',9,0),(108,'MONS. ITURRIZA',9,0),(109,'LOS TAQUES',9,0),(110,'PIRITU',9,0),(111,'UNION',9,0),(112,'SAN FRANCISCO',9,0),(113,'JACURA',9,0),(114,'CACIQUE MANAURE',9,0),(115,'PALMA SOLA',9,0),(116,'SUCRE',9,0),(117,'URUMACO',9,0),(118,'TOCOPERO',9,0),(119,'INFANTE',10,0),(120,'MELLADO',10,0),(121,'MIRANDA',10,0),(122,'MONAGAS',10,0),(123,'RIBAS',10,0),(124,'ROSCIO',10,0),(125,'ZARAZA',10,0),(126,'CAMAGUAN',10,0),(127,'S JOSE DE GUARIBE',10,0),(128,'LAS MERCEDES',10,0),(129,'EL SOCORRO',10,0),(130,'ORTIZ',10,0),(131,'S MARIA DE IPIRE',10,0),(132,'CHAGUARAMAS',10,0),(133,'SAN GERONIMO DE G',10,0),(134,'CRESPO',11,0),(135,'IRIBARREN',11,0),(136,'JIMENEZ',11,0),(137,'MORAN',11,0),(138,'PALAVECINO',11,0),(139,'TORRES',11,0),(140,'URDANETA',11,0),(141,'ANDRES E BLANCO',11,0),(142,'SIMON PLANAS',11,0),(143,'ALBERTO ADRIANI',12,0),(144,'ANDRES BELLO',12,0),(145,'ARZOBISPO CHACON',12,0),(146,'CAMPO ELIAS',12,0),(147,'GUARAQUE',12,0),(148,'JULIO CESAR SALAS',12,0),(149,'JUSTO BRICEÑO',12,0),(150,'LIBERTADOR',12,0),(151,'SANTOS MARQUINA',12,0),(152,'MIRANDA',12,0),(153,'ANTONIO PINTO S.',12,0),(154,'OB. RAMOS DE LORA',12,0),(155,'CARACCIOLO PARRA',12,0),(156,'CARDENAL QUINTERO',12,0),(157,'PUEBLO LLANO',12,0),(158,'RANGEL',12,0),(159,'RIVAS DAVILA',12,0),(160,'SUCRE',12,0),(161,'TOVAR',12,0),(162,'TULIO F CORDERO',12,0),(163,'PADRE NOGUERA',12,0),(164,'ARICAGUA',12,0),(165,'ZEA',12,0),(166,'ACEVEDO',13,0),(167,'BRION',13,0),(168,'GUAICAIPURO',13,0),(169,'INDEPENDENCIA',13,0),(170,'LANDER',13,0),(171,'PAEZ',13,0),(172,'PAZ CASTILLO',13,0),(173,'PLAZA',13,0),(174,'SUCRE',13,0),(175,'URDANETA',13,0),(176,'ZAMORA',13,0),(177,'CRISTOBAL ROJAS',13,0),(178,'LOS SALIAS',13,0),(179,'ANDRES BELLO',13,0),(180,'SIMON BOLIVAR',13,0),(181,'BARUTA',13,0),(182,'CARRIZAL',13,0),(183,'CHACAO',13,0),(184,'EL HATILLO',13,0),(185,'BUROZ',13,0),(186,'PEDRO GUAL',13,0),(187,'ACOSTA',14,0),(188,'BOLIVAR',14,0),(189,'CARIPE',14,0),(190,'CEDEÑO',14,0),(191,'EZEQUIEL ZAMORA',14,0),(192,'LIBERTADOR',14,0),(193,'MATURIN',14,0),(194,'PIAR',14,0),(195,'PUNCERES',14,0),(196,'SOTILLO',14,0),(197,'AGUASAY',14,0),(198,'SANTA BARBARA',14,0),(199,'URACOA',14,0),(200,'ARISMENDI',15,0),(201,'DIAZ',15,0),(202,'GOMEZ',15,0),(203,'MANEIRO',15,0),(204,'MARCANO',15,0),(205,'MARIÑO',15,0),(206,'PENIN. DE MACANAO',15,0),(207,'VILLALBA(I.COCHE)',15,0),(208,'TUBORES',15,0),(209,'ANTOLIN DEL CAMPO',15,0),(210,'GARCIA',15,0),(211,'ARAURE',16,0),(212,'ESTELLER',16,0),(213,'GUANARE',16,0),(214,'GUANARITO',16,0),(215,'OSPINO',16,0),(216,'PAEZ',16,0),(217,'SUCRE',16,0),(218,'TUREN',16,0),(219,'M.JOSE V DE UNDA',16,0),(220,'AGUA BLANCA',16,0),(221,'PAPELON',16,0),(222,'GENARO BOCONOITO',16,0),(223,'S RAFAEL DE ONOTO',16,0),(224,'SANTA ROSALIA',16,0),(225,'ARISMENDI',17,0),(226,'BENITEZ',17,0),(227,'BERMUDEZ',17,0),(228,'CAJIGAL',17,0),(229,'MARIÑO',17,0),(230,'MEJIA',17,0),(231,'MONTES',17,0),(232,'RIBERO',17,0),(233,'SUCRE',17,0),(234,'VALDEZ',17,0),(235,'ANDRES E BLANCO',17,0),(236,'LIBERTADOR',17,0),(237,'ANDRES MATA',17,0),(238,'BOLIVAR',17,0),(239,'CRUZ S ACOSTA',17,0),(240,'AYACUCHO',18,0),(241,'BOLIVAR',18,0),(242,'INDEPENDENCIA',18,0),(243,'CARDENAS',18,0),(244,'JAUREGUI',18,0),(245,'JUNIN',18,0),(246,'LOBATERA',18,0),(247,'SAN CRISTOBAL',18,0),(248,'URIBANTE',18,0),(249,'CORDOBA',18,0),(250,'GARCIA DE HEVIA',18,0),(251,'GUASIMOS',18,0),(252,'MICHELENA',18,0),(253,'LIBERTADOR',18,0),(254,'PANAMERICANO',18,0),(255,'PEDRO MARIA UREÑA',18,0),(256,'SUCRE',18,0),(257,'ANDRES BELLO',18,0),(258,'FERNANDEZ FEO',18,0),(259,'LIBERTAD',18,0),(260,'SAMUEL MALDONADO',18,0),(261,'SEBORUCO',18,0),(262,'ANTONIO ROMULO C',18,0),(263,'FCO DE MIRANDA',18,0),(264,'JOSE MARIA VARGA',18,0),(265,'RAFAEL URDANETA',18,0),(266,'SIMON RODRIGUEZ',18,0),(267,'TORBES',18,0),(268,'SAN JUDAS TADEO',18,0),(269,'RAFAEL RANGEL',19,0),(270,'BOCONO',19,0),(271,'CARACHE',19,0),(272,'ESCUQUE',19,0),(273,'TRUJILLO',19,0),(274,'URDANETA',19,0),(275,'VALERA',19,0),(276,'CANDELARIA',19,0),(277,'MIRANDA',19,0),(278,'MONTE CARMELO',19,0),(279,'MOTATAN',19,0),(280,'PAMPAN',19,0),(281,'S RAFAEL CARVAJAL',19,0),(282,'SUCRE',19,0),(283,'ANDRES BELLO',19,0),(284,'BOLIVAR',19,0),(285,'JOSE F M CAÑIZAL',19,0),(286,'JUAN V CAMPO ELI',19,0),(287,'LA CEIBA',19,0),(288,'PAMPANITO',19,0),(289,'BOLIVAR',20,0),(290,'BRUZUAL',20,0),(291,'NIRGUA',20,0),(292,'SAN FELIPE',20,0),(293,'SUCRE',20,0),(294,'URACHICHE',20,0),(295,'PEÑA',20,0),(296,'JOSE ANTONIO PAEZ',20,0),(297,'LA TRINIDAD',20,0),(298,'COCOROTE',20,0),(299,'INDEPENDENCIA',20,0),(300,'ARISTIDES BASTID',20,0),(301,'MANUEL MONGE',20,0),(302,'VEROES',20,0),(303,'BARALT',21,0),(304,'SANTA RITA',21,0),(305,'COLON',21,0),(306,'MARA',21,0),(307,'MARACAIBO',21,0),(308,'MIRANDA',21,0),(309,'PAEZ',21,0),(310,'MACHIQUES DE P',21,0),(311,'SUCRE',21,0),(312,'LA CAÑADA DE U.',21,0),(313,'LAGUNILLAS',21,0),(314,'CATATUMBO',21,0),(315,'M/ROSARIO DE PERIJA',21,0),(316,'CABIMAS',21,0),(317,'VALMORE RODRIGUEZ',21,0),(318,'JESUS E LOSSADA',21,0),(319,'ALMIRANTE P',21,0),(320,'SAN FRANCISCO',21,0),(321,'JESUS M SEMPRUN',21,0),(322,'FRANCISCO J PULG',21,0),(323,'SIMON BOLIVAR',21,0),(324,'ATURES',22,0),(325,'ATABAPO',22,0),(326,'MAROA',22,0),(327,'RIO NEGRO',22,0),(328,'AUTANA',22,0),(329,'MANAPIARE',22,0),(330,'ALTO ORINOCO',22,0),(331,'TUCUPITA',23,0),(332,'PEDERNALES',23,0),(333,'ANTONIO DIAZ',23,0),(334,'CASACOIMA',23,0),(335,'VARGAS',24,0);
/*!40000 ALTER TABLE `municipio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pais` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cod` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` VALUES (1,'AC','Isla de la Ascensión'),(2,'AD','Andorra'),(3,'AE','Emiratos Árabes Unidos'),(4,'AF','Afganistán'),(5,'AG','Antigua y Barbuda'),(6,'AI','Anguila'),(7,'AL','Albania'),(8,'AM','Armenia'),(9,'AN','Antillas Neerlandesas'),(10,'AO','Angola'),(11,'AQ','Antártida'),(12,'AR','Argentina'),(13,'AS','Samoa Americana'),(14,'AT','Austria'),(15,'AU','Australia'),(16,'AW','Aruba'),(17,'AX','Islas Åland'),(18,'AZ','Azerbaiyán'),(19,'BA','Bosnia-Herzegovina'),(20,'BB','Barbados'),(21,'BD','Bangladesh'),(22,'BE','Bélgica'),(23,'BF','Burkina Faso'),(24,'BG','Bulgaria'),(25,'BH','Bahréin'),(26,'BI','Burundi'),(27,'BJ','Benín'),(28,'BL','San Bartolomé'),(29,'BM','Bermudas'),(30,'BN','Brunéi'),(31,'BO','Bolivia'),(32,'BR','Brasil'),(33,'BS','Bahamas'),(34,'BT','Bután'),(35,'BV','Isla Bouvet'),(36,'BW','Botsuana'),(37,'BY','Bielorrusia'),(38,'BZ','Belice'),(39,'CA','Canadá'),(40,'CC','Islas Cocos'),(41,'CD','República Democrática del Congo'),(42,'CF','República Centroafricana'),(43,'CG','Congo - Brazzaville'),(44,'CH','Suiza'),(45,'CI','Costa de Marfil'),(46,'CK','Islas Cook'),(47,'CL','Chile'),(48,'CM','Camerún'),(49,'CN','China'),(50,'CO','Colombia'),(51,'CP','Isla Clipperton'),(52,'CR','Costa Rica'),(53,'CS','Serbia y Montenegro'),(54,'CU','Cuba'),(55,'CV','Cabo Verde'),(56,'CX','Isla Christmas'),(57,'CY','Chipre'),(58,'CZ','República Checa'),(59,'DE','Alemania'),(60,'DG','Diego García'),(61,'DJ','Yibuti'),(62,'DK','Dinamarca'),(63,'DM','Dominica'),(64,'DO','República Dominicana'),(65,'DZ','Argelia'),(66,'EA','Ceuta y Melilla'),(67,'EC','Ecuador'),(68,'EE','Estonia'),(69,'EG','Egipto'),(70,'EH','Sáhara Occidental'),(71,'ER','Eritrea'),(72,'ES','España'),(73,'ET','Etiopía'),(74,'EU','Unión Europea'),(75,'FI','Finlandia'),(76,'FJ','Fiyi'),(77,'FK','Islas Malvinas'),(78,'FM','Micronesia'),(79,'FO','Islas Feroe'),(80,'FR','Francia'),(81,'GA','Gabón'),(82,'GB','Reino Unido'),(83,'GD','Granada'),(84,'GE','Georgia'),(85,'GF','Guayana Francesa'),(86,'GG','Guernsey'),(87,'GH','Ghana'),(88,'GI','Gibraltar'),(89,'GL','Groenlandia'),(90,'GM','Gambia'),(91,'GN','Guinea'),(92,'GP','Guadalupe'),(93,'GQ','Guinea Ecuatorial'),(94,'GR','Grecia'),(95,'GS','Islas Georgia del Sur y Sandwich del Sur'),(96,'GT','Guatemala'),(97,'GU','Guam'),(98,'GW','Guinea-Bissau'),(99,'GY','Guyana'),(100,'HK','Región Administrativa Especial de Hong Kong de la República Popu'),(101,'HM','Islas Heard y McDonald'),(102,'HN','Honduras'),(103,'HR','Croacia'),(104,'HT','Haití'),(105,'HU','Hungría'),(106,'IC','Islas Canarias'),(107,'ID','Indonesia'),(108,'IE','Irlanda'),(109,'IL','Israel'),(110,'IM','Isla de Man'),(111,'IN','India'),(112,'IO','Territorio Británico del Océano Índico'),(113,'IQ','Iraq'),(114,'IR','Irán'),(115,'IS','Islandia'),(116,'IT','Italia'),(117,'JE','Jersey'),(118,'JM','Jamaica'),(119,'JO','Jordania'),(120,'JP','Japón'),(121,'KE','Kenia'),(122,'KG','Kirguistán'),(123,'KH','Camboya'),(124,'KI','Kiribati'),(125,'KM','Comoras'),(126,'KN','San Cristóbal y Nieves'),(127,'KP','Corea del Norte'),(128,'KR','Corea del Sur'),(129,'KW','Kuwait'),(130,'KY','Islas Caimán'),(131,'KZ','Kazajistán'),(132,'LA','Laos'),(133,'LB','Líbano'),(134,'LC','Santa Lucía'),(135,'LI','Liechtenstein'),(136,'LK','Sri Lanka'),(137,'LR','Liberia'),(138,'LS','Lesoto'),(139,'LT','Lituania'),(140,'LU','Luxemburgo'),(141,'LV','Letonia'),(142,'LY','Libia'),(143,'MA','Marruecos'),(144,'MC','Mónaco'),(145,'MD','Moldavia'),(146,'ME','Montenegro'),(147,'MF','San Martín'),(148,'MG','Madagascar'),(149,'MH','Islas Marshall'),(150,'MK','Macedonia'),(151,'ML','Mali'),(152,'MM','Myanmar [Birmania]'),(153,'MN','Mongolia'),(154,'MO','Región Administrativa Especial de Macao de la República Popular '),(155,'MP','Islas Marianas del Norte'),(156,'MQ','Martinica'),(157,'MR','Mauritania'),(158,'MS','Montserrat'),(159,'MT','Malta'),(160,'MU','Mauricio'),(161,'MV','Maldivas'),(162,'MW','Malaui'),(163,'MX','México'),(164,'MY','Malasia'),(165,'MZ','Mozambique'),(166,'NA','Namibia'),(167,'NC','Nueva Caledonia'),(168,'NE','Níger'),(169,'NF','Isla Norfolk'),(170,'NG','Nigeria'),(171,'NI','Nicaragua'),(172,'NL','Países Bajos'),(173,'NO','Noruega'),(174,'NP','Nepal'),(175,'NR','Nauru'),(176,'NU','Isla Niue'),(177,'NZ','Nueva Zelanda'),(178,'OM','Omán'),(179,'PA','Panamá'),(180,'PE','Perú'),(181,'PF','Polinesia Francesa'),(182,'PG','Papúa Nueva Guinea'),(183,'PH','Filipinas'),(184,'PK','Pakistán'),(185,'PL','Polonia'),(186,'PM','San Pedro y Miquelón'),(187,'PN','Islas Pitcairn'),(188,'PR','Puerto Rico'),(189,'PS','Territorios Palestinos'),(190,'PT','Portugal'),(191,'PW','Palau'),(192,'PY','Paraguay'),(193,'QA','Qatar'),(194,'QO','Territorios alejados de Oceanía'),(195,'RE','Reunión'),(196,'RO','Rumanía'),(197,'RS','Serbia'),(198,'RU','Rusia'),(199,'RW','Ruanda'),(200,'SA','Arabia Saudí'),(201,'SB','Islas Salomón'),(202,'SC','Seychelles'),(203,'SD','Sudán'),(204,'SE','Suecia'),(205,'SG','Singapur'),(206,'SH','Santa Elena'),(207,'SI','Eslovenia'),(208,'SJ','Svalbard y Jan Mayen'),(209,'SK','Eslovaquia'),(210,'SL','Sierra Leona'),(211,'SM','San Marino'),(212,'SN','Senegal'),(213,'SO','Somalia'),(214,'SR','Surinam'),(215,'ST','Santo Tomé y Príncipe'),(216,'SV','El Salvador'),(217,'SY','Siria'),(218,'SZ','Suazilandia'),(219,'TA','Tristán da Cunha'),(220,'TC','Islas Turcas y Caicos'),(221,'TD','Chad'),(222,'TF','Territorios Australes Franceses'),(223,'TG','Togo'),(224,'TH','Tailandia'),(225,'TJ','Tayikistán'),(226,'TK','Tokelau'),(227,'TL','Timor Oriental'),(228,'TM','Turkmenistán'),(229,'TN','Túnez'),(230,'TO','Tonga'),(231,'TR','Turquía'),(232,'TT','Trinidad y Tobago'),(233,'TV','Tuvalu'),(234,'TW','Taiwán'),(235,'TZ','Tanzania'),(236,'UA','Ucrania'),(237,'UG','Uganda'),(238,'UM','Islas menores alejadas de los Estados Unidos'),(239,'US','Estados Unidos'),(240,'UY','Uruguay'),(241,'UZ','Uzbekistán'),(242,'VA','Ciudad del Vaticano'),(243,'VC','San Vicente y las Granadinas'),(244,'VE','Venezuela'),(245,'VG','Islas Vírgenes Británicas'),(246,'VI','Islas Vírgenes de los Estados Unidos'),(247,'VN','Vietnam'),(248,'VU','Vanuatu'),(249,'WF','Wallis y Futuna'),(250,'WS','Samoa'),(251,'YE','Yemen'),(252,'YT','Mayotte'),(253,'ZA','Sudáfrica'),(254,'ZM','Zambia'),(255,'ZW','Zimbabue');
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parroquia`
--

DROP TABLE IF EXISTS `parroquia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parroquia` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador de la parroquia',
  `nombre` varchar(100) NOT NULL COMMENT 'Nombre de la parroquia',
  `municipio_id` int(11) NOT NULL COMMENT 'Identificador del municipio al que pertenece la parroquia',
  `deleted` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_parroquia_municipio1` (`municipio_id`),
  CONSTRAINT `fk_parroquia_municipio1` FOREIGN KEY (`municipio_id`) REFERENCES `municipio` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1135 DEFAULT CHARSET=utf8 COMMENT='Entidad que contiene informacion sobre parroquias. Desarrollado por Jose Rodriguez <josearodrigueze@gmail.com> @josearodrigueze';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parroquia`
--

LOCK TABLES `parroquia` WRITE;
/*!40000 ALTER TABLE `parroquia` DISABLE KEYS */;
INSERT INTO `parroquia` VALUES (1,'ALTAGRACIA',1,0),(2,'CANDELARIA',1,0),(3,'CATEDRAL',1,0),(4,'LA PASTORA',1,0),(5,'SAN AGUSTIN',1,0),(6,'SAN JOSE',1,0),(7,'SAN JUAN',1,0),(8,'SANTA ROSALIA',1,0),(9,'SANTA TERESA',1,0),(10,'SUCRE',1,0),(11,'23 DE ENERO',1,0),(12,'ANTIMANO',1,0),(13,'EL RECREO',1,0),(14,'EL VALLE',1,0),(15,'LA VEGA',1,0),(16,'MACARAO',1,0),(17,'CARICUAO',1,0),(18,'EL JUNQUITO',1,0),(19,'COCHE',1,0),(20,'SAN PEDRO',1,0),(21,'SAN BERNARDINO',1,0),(22,'EL PARAISO',1,0),(23,'ANACO',2,0),(24,'SAN JOAQUIN',2,0),(25,'CM. ARAGUA DE BARCELONA',3,0),(26,'CACHIPO',3,0),(27,'EL CARMEN',4,0),(28,'SAN CRISTOBAL',4,0),(29,'BERGANTIN',4,0),(30,'CAIGUA',4,0),(31,'EL PILAR',4,0),(32,'NARICUAL',4,0),(33,'CM. CLARINES',5,0),(34,'GUANAPE',5,0),(35,'SABANA DE UCHIRE',5,0),(36,'CM. ONOTO',6,0),(37,'SAN PABLO',6,0),(38,'CM. CANTAURA',7,0),(39,'LIBERTADOR',7,0),(40,'SANTA ROSA',7,0),(41,'URICA',7,0),(42,'CM. SOLEDAD',8,0),(43,'MAMO',8,0),(44,'CM. SAN MATEO',9,0),(45,'EL CARITO',9,0),(46,'SANTA INES',9,0),(47,'CM. PARIAGUAN',10,0),(48,'ATAPIRIRE',10,0),(49,'BOCA DEL PAO',10,0),(50,'EL PAO',10,0),(51,'CM. MAPIRE',11,0),(52,'PIAR',11,0),(53,'SN DIEGO DE CABRUTICA',11,0),(54,'SANTA CLARA',11,0),(55,'UVERITO',11,0),(56,'ZUATA',11,0),(57,'CM. PUERTO PIRITU',12,0),(58,'SAN MIGUEL',12,0),(59,'SUCRE',12,0),(60,'CM. EL TIGRE',13,0),(61,'POZUELOS',14,0),(62,'CM PTO. LA CRUZ',14,0),(63,'CM. SAN JOSE DE GUANIPA',15,0),(64,'GUANTA',16,0),(65,'CHORRERON',16,0),(66,'PIRITU',17,0),(67,'SAN FRANCISCO',17,0),(68,'LECHERIAS',18,0),(69,'EL MORRO',18,0),(70,'VALLE GUANAPE',19,0),(71,'SANTA BARBARA',19,0),(72,'SANTA ANA',20,0),(73,'PUEBLO NUEVO',20,0),(74,'EL CHAPARRO',21,0),(75,'TOMAS ALFARO CALATRAVA',21,0),(76,'BOCA UCHIRE',22,0),(77,'BOCA DE CHAVEZ',22,0),(78,'ACHAGUAS',23,0),(79,'APURITO',23,0),(80,'EL YAGUAL',23,0),(81,'GUACHARA',23,0),(82,'MUCURITAS',23,0),(83,'QUESERAS DEL MEDIO',23,0),(84,'BRUZUAL',24,0),(85,'MANTECAL',24,0),(86,'QUINTERO',24,0),(87,'SAN VICENTE',24,0),(88,'RINCON HONDO',24,0),(89,'GUASDUALITO',25,0),(90,'ARAMENDI',25,0),(91,'EL AMPARO',25,0),(92,'SAN CAMILO',25,0),(93,'URDANETA',25,0),(94,'SAN JUAN DE PAYARA',26,0),(95,'CODAZZI',26,0),(96,'CUNAVICHE',26,0),(97,'ELORZA',27,0),(98,'LA TRINIDAD',27,0),(99,'SAN FERNANDO',28,0),(100,'PEÑALVER',28,0),(101,'EL RECREO',28,0),(102,'SN RAFAEL DE ATAMAICA',28,0),(103,'BIRUACA',29,0),(104,'CM. LAS DELICIAS',30,0),(105,'CHORONI',30,0),(106,'MADRE MA DE SAN JOSE',30,0),(107,'JOAQUIN CRESPO',30,0),(108,'PEDRO JOSE OVALLES',30,0),(109,'JOSE CASANOVA GODOY',30,0),(110,'ANDRES ELOY BLANCO',30,0),(111,'LOS TACARIGUAS',30,0),(112,'CM. TURMERO',31,0),(113,'SAMAN DE GUERE',31,0),(114,'ALFREDO PACHECO M',31,0),(115,'CHUAO',31,0),(116,'AREVALO APONTE',31,0),(117,'CM. LA VICTORIA',32,0),(118,'ZUATA',32,0),(119,'PAO DE ZARATE',32,0),(120,'CASTOR NIEVES RIOS',32,0),(121,'LAS GUACAMAYAS',32,0),(122,'CM. SAN CASIMIRO',33,0),(123,'VALLE MORIN',33,0),(124,'GUIRIPA',33,0),(125,'OLLAS DE CARAMACATE',33,0),(126,'CM. SAN SEBASTIAN',34,0),(127,'CM. CAGUA',35,0),(128,'BELLA VISTA',35,0),(129,'CM. BARBACOAS',36,0),(130,'SAN FRANCISCO DE CARA',36,0),(131,'TAGUAY',36,0),(132,'LAS PEÑITAS',36,0),(133,'CM. VILLA DE CURA',37,0),(134,'MAGDALENO',37,0),(135,'SAN FRANCISCO DE ASIS',37,0),(136,'VALLES DE TUCUTUNEMO',37,0),(137,'PQ AUGUSTO MIJARES',37,0),(138,'CM. PALO NEGRO',38,0),(139,'SAN MARTIN DE PORRES',38,0),(140,'CM. SANTA CRUZ',39,0),(141,'CM. SAN MATEO',40,0),(142,'CM. LAS TEJERIAS',41,0),(143,'TIARA',41,0),(144,'CM. EL LIMON',42,0),(145,'CA A DE AZUCAR',42,0),(146,'CM. COLONIA TOVAR',43,0),(147,'CM. CAMATAGUA',44,0),(148,'CARMEN DE CURA',44,0),(149,'CM. EL CONSEJO',45,0),(150,'CM. SANTA RITA',46,0),(151,'FRANCISCO DE MIRANDA',46,0),(152,'MONS FELICIANO G',46,0),(153,'OCUMARE DE LA COSTA',47,0),(154,'ARISMENDI',48,0),(155,'GUADARRAMA',48,0),(156,'LA UNION',48,0),(157,'SAN ANTONIO',48,0),(158,'ALFREDO A LARRIVA',49,0),(159,'BARINAS',49,0),(160,'SAN SILVESTRE',49,0),(161,'SANTA INES',49,0),(162,'SANTA LUCIA',49,0),(163,'TORUNOS',49,0),(164,'EL CARMEN',49,0),(165,'ROMULO BETANCOURT',49,0),(166,'CORAZON DE JESUS',49,0),(167,'RAMON I MENDEZ',49,0),(168,'ALTO BARINAS',49,0),(169,'MANUEL P FAJARDO',49,0),(170,'JUAN A RODRIGUEZ D',49,0),(171,'DOMINGA ORTIZ P',49,0),(172,'ALTAMIRA',50,0),(173,'BARINITAS',50,0),(174,'CALDERAS',50,0),(175,'SANTA BARBARA',51,0),(176,'JOSE IGNACIO DEL PUMAR',51,0),(177,'RAMON IGNACIO MENDEZ',51,0),(178,'PEDRO BRICEÑO MENDEZ',51,0),(179,'EL REAL',52,0),(180,'LA LUZ',52,0),(181,'OBISPOS',52,0),(182,'LOS GUASIMITOS',52,0),(183,'CIUDAD BOLIVIA',53,0),(184,'IGNACIO BRICEÑO',53,0),(185,'PAEZ',53,0),(186,'JOSE FELIX RIBAS',53,0),(187,'DOLORES',54,0),(188,'LIBERTAD',54,0),(189,'PALACIO FAJARDO',54,0),(190,'SANTA ROSA',54,0),(191,'CIUDAD DE NUTRIAS',55,0),(192,'EL REGALO',55,0),(193,'PUERTO DE NUTRIAS',55,0),(194,'SANTA CATALINA',55,0),(195,'RODRIGUEZ DOMINGUEZ',56,0),(196,'SABANETA',56,0),(197,'TICOPORO',57,0),(198,'NICOLAS PULIDO',57,0),(199,'ANDRES BELLO',57,0),(200,'BARRANCAS',58,0),(201,'EL SOCORRO',58,0),(202,'MASPARRITO',58,0),(203,'EL CANTON',59,0),(204,'SANTA CRUZ DE GUACAS',59,0),(205,'PUERTO VIVAS',59,0),(206,'SIMON BOLIVAR',60,0),(207,'ONCE DE ABRIL',60,0),(208,'VISTA AL SOL',60,0),(209,'CHIRICA',60,0),(210,'DALLA COSTA',60,0),(211,'CACHAMAY',60,0),(212,'UNIVERSIDAD',60,0),(213,'UNARE',60,0),(214,'YOCOIMA',60,0),(215,'POZO VERDE',60,0),(216,'CM. CAICARA DEL ORINOCO',61,0),(217,'ASCENSION FARRERAS',61,0),(218,'ALTAGRACIA',61,0),(219,'LA URBANA',61,0),(220,'GUANIAMO',61,0),(221,'PIJIGUAOS',61,0),(222,'CATEDRAL',62,0),(223,'AGUA SALADA',62,0),(224,'LA SABANITA',62,0),(225,'VISTA HERMOSA',62,0),(226,'MARHUANTA',62,0),(227,'JOSE ANTONIO PAEZ',62,0),(228,'ORINOCO',62,0),(229,'PANAPANA',62,0),(230,'ZEA',62,0),(231,'CM. UPATA',63,0),(232,'ANDRES ELOY BLANCO',63,0),(233,'PEDRO COVA',63,0),(234,'CM. GUASIPATI',64,0),(235,'SALOM',64,0),(236,'CM. MARIPA',65,0),(237,'ARIPAO',65,0),(238,'LAS MAJADAS',65,0),(239,'MOITACO',65,0),(240,'GUARATARO',65,0),(241,'CM. TUMEREMO',66,0),(242,'DALLA COSTA',66,0),(243,'SAN ISIDRO',66,0),(244,'CM. CIUDAD PIAR',67,0),(245,'SAN FRANCISCO',67,0),(246,'BARCELONETA',67,0),(247,'SANTA BARBARA',67,0),(248,'CM. SANTA ELENA DE UAIREN',68,0),(249,'IKABARU',68,0),(250,'CM. EL CALLAO',69,0),(251,'CM. EL PALMAR',70,0),(252,'BEJUMA',71,0),(253,'CANOABO',71,0),(254,'SIMON BOLIVAR',71,0),(255,'GUIGUE',72,0),(256,'BELEN',72,0),(257,'TACARIGUA',72,0),(258,'MARIARA',73,0),(259,'AGUAS CALIENTES',73,0),(260,'GUACARA',74,0),(261,'CIUDAD ALIANZA',74,0),(262,'YAGUA',74,0),(263,'MONTALBAN',75,0),(264,'MORON',76,0),(265,'URAMA',76,0),(266,'DEMOCRACIA',77,0),(267,'FRATERNIDAD',77,0),(268,'GOAIGOAZA',77,0),(269,'JUAN JOSE FLORES',77,0),(270,'BARTOLOME SALOM',77,0),(271,'UNION',77,0),(272,'BORBURATA',77,0),(273,'PATANEMO',77,0),(274,'SAN JOAQUIN',78,0),(275,'CANDELARIA',79,0),(276,'CATEDRAL',79,0),(277,'EL SOCORRO',79,0),(278,'MIGUEL PEÑA',79,0),(279,'SAN BLAS',79,0),(280,'SAN JOSE',79,0),(281,'SANTA ROSA',79,0),(282,'RAFAEL URDANETA',79,0),(283,'NEGRO PRIMERO',79,0),(284,'MIRANDA',80,0),(285,'U LOS GUAYOS',81,0),(286,'NAGUANAGUA',82,0),(287,'URB SAN DIEGO',83,0),(288,'U TOCUYITO',84,0),(289,'U INDEPENDENCIA',84,0),(290,'COJEDES',85,0),(291,'JUAN DE MATA SUAREZ',85,0),(292,'TINAQUILLO',86,0),(293,'EL BAUL',87,0),(294,'SUCRE',87,0),(295,'EL PAO',88,0),(296,'LIBERTAD DE COJEDES',89,0),(297,'EL AMPARO',89,0),(298,'SAN CARLOS DE AUSTRIA',90,0),(299,'JUAN ANGEL BRAVO',90,0),(300,'MANUEL MANRIQUE',90,0),(301,'GRL/JEFE JOSE L SILVA',91,0),(302,'MACAPO',92,0),(303,'LA AGUADITA',92,0),(304,'ROMULO GALLEGOS',93,0),(305,'SAN JUAN DE LOS CAYOS',94,0),(306,'CAPADARE',94,0),(307,'LA PASTORA',94,0),(308,'LIBERTADOR',94,0),(309,'SAN LUIS',95,0),(310,'ARACUA',95,0),(311,'LA PEÑA',95,0),(312,'CAPATARIDA',96,0),(313,'BOROJO',96,0),(314,'SEQUE',96,0),(315,'ZAZARIDA',96,0),(316,'BARIRO',96,0),(317,'GUAJIRO',96,0),(318,'NORTE',97,0),(319,'CARIRUBANA',97,0),(320,'PUNTA CARDON',97,0),(321,'SANTA ANA',97,0),(322,'LA VELA DE CORO',98,0),(323,'ACURIGUA',98,0),(324,'GUAIBACOA',98,0),(325,'MACORUCA',98,0),(326,'LAS CALDERAS',98,0),(327,'PEDREGAL',99,0),(328,'AGUA CLARA',99,0),(329,'AVARIA',99,0),(330,'PIEDRA GRANDE',99,0),(331,'PURURECHE',99,0),(332,'PUEBLO NUEVO',100,0),(333,'ADICORA',100,0),(334,'BARAIVED',100,0),(335,'BUENA VISTA',100,0),(336,'JADACAQUIVA',100,0),(337,'MORUY',100,0),(338,'EL VINCULO',100,0),(339,'EL HATO',100,0),(340,'ADAURE',100,0),(341,'CHURUGUARA',101,0),(342,'AGUA LARGA',101,0),(343,'INDEPENDENCIA',101,0),(344,'MAPARARI',101,0),(345,'EL PAUJI',101,0),(346,'MENE DE MAUROA',102,0),(347,'CASIGUA',102,0),(348,'SAN FELIX',102,0),(349,'SAN ANTONIO',103,0),(350,'SAN GABRIEL',103,0),(351,'SANTA ANA',103,0),(352,'GUZMAN GUILLERMO',103,0),(353,'MITARE',103,0),(354,'SABANETA',103,0),(355,'RIO SECO',103,0),(356,'CABURE',104,0),(357,'CURIMAGUA',104,0),(358,'COLINA',104,0),(359,'TUCACAS',105,0),(360,'BOCA DE AROA',105,0),(361,'PUERTO CUMAREBO',106,0),(362,'LA CIENAGA',106,0),(363,'LA SOLEDAD',106,0),(364,'PUEBLO CUMAREBO',106,0),(365,'ZAZARIDA',106,0),(366,'CM. DABAJURO',107,0),(367,'CHICHIRIVICHE',108,0),(368,'BOCA DE TOCUYO',108,0),(369,'TOCUYO DE LA COSTA',108,0),(370,'LOS TAQUES',109,0),(371,'JUDIBANA',109,0),(372,'PIRITU',110,0),(373,'SAN JOSE DE LA COSTA',110,0),(374,'STA.CRUZ DE BUCARAL',111,0),(375,'EL CHARAL',111,0),(376,'LAS VEGAS DEL TUY',111,0),(377,'CM. MIRIMIRE',112,0),(378,'JACURA',113,0),(379,'AGUA LINDA',113,0),(380,'ARAURIMA',113,0),(381,'CM. YARACAL',114,0),(382,'CM. PALMA SOLA',115,0),(383,'SUCRE',116,0),(384,'PECAYA',116,0),(385,'URUMACO',117,0),(386,'BRUZUAL',117,0),(387,'CM. TOCOPERO',118,0),(388,'VALLE DE LA PASCUA',119,0),(389,'ESPINO',119,0),(390,'EL SOMBRERO',120,0),(391,'SOSA',120,0),(392,'CALABOZO',121,0),(393,'EL CALVARIO',121,0),(394,'EL RASTRO',121,0),(395,'GUARDATINAJAS',121,0),(396,'ALTAGRACIA DE ORITUCO',122,0),(397,'LEZAMA',122,0),(398,'LIBERTAD DE ORITUCO',122,0),(399,'SAN FCO DE MACAIRA',122,0),(400,'SAN RAFAEL DE ORITUCO',122,0),(401,'SOUBLETTE',122,0),(402,'PASO REAL DE MACAIRA',122,0),(403,'TUCUPIDO',123,0),(404,'SAN RAFAEL DE LAYA',123,0),(405,'SAN JUAN DE LOS MORROS',124,0),(406,'PARAPARA',124,0),(407,'CANTAGALLO',124,0),(408,'ZARAZA',125,0),(409,'SAN JOSE DE UNARE',125,0),(410,'CAMAGUAN',126,0),(411,'PUERTO MIRANDA',126,0),(412,'UVERITO',126,0),(413,'SAN JOSE DE GUARIBE',127,0),(414,'LAS MERCEDES',128,0),(415,'STA RITA DE MANAPIRE',128,0),(416,'CABRUTA',128,0),(417,'EL SOCORRO',129,0),(418,'ORTIZ',130,0),(419,'SAN FCO. DE TIZNADOS',130,0),(420,'SAN JOSE DE TIZNADOS',130,0),(421,'S LORENZO DE TIZNADOS',130,0),(422,'SANTA MARIA DE IPIRE',131,0),(423,'ALTAMIRA',131,0),(424,'CHAGUARAMAS',132,0),(425,'GUAYABAL',133,0),(426,'CAZORLA',133,0),(427,'FREITEZ',134,0),(428,'JOSE MARIA BLANCO',134,0),(429,'CATEDRAL',135,0),(430,'LA CONCEPCION',135,0),(431,'SANTA ROSA',135,0),(432,'UNION',135,0),(433,'EL CUJI',135,0),(434,'TAMACA',135,0),(435,'JUAN DE VILLEGAS',135,0),(436,'AGUEDO F. ALVARADO',135,0),(437,'BUENA VISTA',135,0),(438,'JUAREZ',135,0),(439,'JUAN B RODRIGUEZ',136,0),(440,'DIEGO DE LOZADA',136,0),(441,'SAN MIGUEL',136,0),(442,'CUARA',136,0),(443,'PARAISO DE SAN JOSE',136,0),(444,'TINTORERO',136,0),(445,'JOSE BERNARDO DORANTE',136,0),(446,'CRNEL. MARIANO PERAZA',136,0),(447,'BOLIVAR',137,0),(448,'ANZOATEGUI',137,0),(449,'GUARICO',137,0),(450,'HUMOCARO ALTO',137,0),(451,'HUMOCARO BAJO',137,0),(452,'MORAN',137,0),(453,'HILARIO LUNA Y LUNA',137,0),(454,'LA CANDELARIA',137,0),(455,'CABUDARE',138,0),(456,'JOSE G. BASTIDAS',138,0),(457,'AGUA VIVA',138,0),(458,'TRINIDAD SAMUEL',139,0),(459,'ANTONIO DIAZ',139,0),(460,'CAMACARO',139,0),(461,'CASTAÑEDA',139,0),(462,'CHIQUINQUIRA',139,0),(463,'ESPINOZA LOS MONTEROS',139,0),(464,'LARA',139,0),(465,'MANUEL MORILLO',139,0),(466,'MONTES DE OCA',139,0),(467,'TORRES',139,0),(468,'EL BLANCO',139,0),(469,'MONTA A VERDE',139,0),(470,'HERIBERTO ARROYO',139,0),(471,'LAS MERCEDES',139,0),(472,'CECILIO ZUBILLAGA',139,0),(473,'REYES VARGAS',139,0),(474,'ALTAGRACIA',139,0),(475,'SIQUISIQUE',140,0),(476,'SAN MIGUEL',140,0),(477,'XAGUAS',140,0),(478,'MOROTURO',140,0),(479,'PIO TAMAYO',141,0),(480,'YACAMBU',141,0),(481,'QBDA. HONDA DE GUACHE',141,0),(482,'SARARE',142,0),(483,'GUSTAVO VEGAS LEON',142,0),(484,'BURIA',142,0),(485,'GABRIEL PICON G.',143,0),(486,'HECTOR AMABLE MORA',143,0),(487,'JOSE NUCETE SARDI',143,0),(488,'PULIDO MENDEZ',143,0),(489,'PTE. ROMULO GALLEGOS',143,0),(490,'PRESIDENTE BETANCOURT',143,0),(491,'PRESIDENTE PAEZ',143,0),(492,'CM. LA AZULITA',144,0),(493,'CM. CANAGUA',145,0),(494,'CAPURI',145,0),(495,'CHACANTA',145,0),(496,'EL MOLINO',145,0),(497,'GUAIMARAL',145,0),(498,'MUCUTUY',145,0),(499,'MUCUCHACHI',145,0),(500,'ACEQUIAS',146,0),(501,'JAJI',146,0),(502,'LA MESA',146,0),(503,'SAN JOSE',146,0),(504,'MONTALBAN',146,0),(505,'MATRIZ',146,0),(506,'FERNANDEZ PEÑA',146,0),(507,'CM. GUARAQUE',147,0),(508,'MESA DE QUINTERO',147,0),(509,'RIO NEGRO',147,0),(510,'CM. ARAPUEY',148,0),(511,'PALMIRA',148,0),(512,'CM. TORONDOY',149,0),(513,'SAN CRISTOBAL DE T',149,0),(514,'ARIAS',150,0),(515,'SAGRARIO',150,0),(516,'MILLA',150,0),(517,'EL LLANO',150,0),(518,'JUAN RODRIGUEZ SUAREZ',150,0),(519,'JACINTO PLAZA',150,0),(520,'DOMINGO PEÑA',150,0),(521,'GONZALO PICON FEBRES',150,0),(522,'OSUNA RODRIGUEZ',150,0),(523,'LASSO DE LA VEGA',150,0),(524,'CARACCIOLO PARRA P',150,0),(525,'MARIANO PICON SALAS',150,0),(526,'ANTONIO SPINETTI DINI',150,0),(527,'EL MORRO',150,0),(528,'LOS NEVADOS',150,0),(529,'CM. TABAY',151,0),(530,'CM. TIMOTES',152,0),(531,'ANDRES ELOY BLANCO',152,0),(532,'PIÑANGO',152,0),(533,'LA VENTA',152,0),(534,'CM. STA CRUZ DE MORA',153,0),(535,'MESA BOLIVAR',153,0),(536,'MESA DE LAS PALMAS',153,0),(537,'CM. STA ELENA DE ARENALES',154,0),(538,'ELOY PAREDES',154,0),(539,'PQ R DE ALCAZAR',154,0),(540,'CM. TUCANI',155,0),(541,'FLORENCIO RAMIREZ',155,0),(542,'CM. SANTO DOMINGO',156,0),(543,'LAS PIEDRAS',156,0),(544,'CM. PUEBLO LLANO',157,0),(545,'CM. MUCUCHIES',158,0),(546,'MUCURUBA',158,0),(547,'SAN RAFAEL',158,0),(548,'CACUTE',158,0),(549,'LA TOMA',158,0),(550,'CM. BAILADORES',159,0),(551,'GERONIMO MALDONADO',159,0),(552,'CM. LAGUNILLAS',160,0),(553,'CHIGUARA',160,0),(554,'ESTANQUES',160,0),(555,'SAN JUAN',160,0),(556,'PUEBLO NUEVO DEL SUR',160,0),(557,'LA TRAMPA',160,0),(558,'EL LLANO',161,0),(559,'TOVAR',161,0),(560,'EL AMPARO',161,0),(561,'SAN FRANCISCO',161,0),(562,'CM. NUEVA BOLIVIA',162,0),(563,'INDEPENDENCIA',162,0),(564,'MARIA C PALACIOS',162,0),(565,'SANTA APOLONIA',162,0),(566,'CM. STA MARIA DE CAPARO',163,0),(567,'CM. ARICAGUA',164,0),(568,'SAN ANTONIO',164,0),(569,'CM. ZEA',165,0),(570,'CAÑO EL TIGRE',165,0),(571,'CAUCAGUA',166,0),(572,'ARAGUITA',166,0),(573,'AREVALO GONZALEZ',166,0),(574,'CAPAYA',166,0),(575,'PANAQUIRE',166,0),(576,'RIBAS',166,0),(577,'EL CAFE',166,0),(578,'MARIZAPA',166,0),(579,'HIGUEROTE',167,0),(580,'CURIEPE',167,0),(581,'TACARIGUA',167,0),(582,'LOS TEQUES',168,0),(583,'CECILIO ACOSTA',168,0),(584,'PARACOTOS',168,0),(585,'SAN PEDRO',168,0),(586,'TACATA',168,0),(587,'EL JARILLO',168,0),(588,'ALTAGRACIA DE LA M',168,0),(589,'STA TERESA DEL TUY',169,0),(590,'EL CARTANAL',169,0),(591,'OCUMARE DEL TUY',170,0),(592,'LA DEMOCRACIA',170,0),(593,'SANTA BARBARA',170,0),(594,'RIO CHICO',171,0),(595,'EL GUAPO',171,0),(596,'TACARIGUA DE LA LAGUNA',171,0),(597,'PAPARO',171,0),(598,'SN FERNANDO DEL GUAPO',171,0),(599,'SANTA LUCIA',172,0),(600,'GUARENAS',173,0),(601,'PETARE',174,0),(602,'LEONCIO MARTINEZ',174,0),(603,'CAUCAGUITA',174,0),(604,'FILAS DE MARICHES',174,0),(605,'LA DOLORITA',174,0),(606,'CUA',175,0),(607,'NUEVA CUA',175,0),(608,'GUATIRE',176,0),(609,'BOLIVAR',176,0),(610,'CHARALLAVE',177,0),(611,'LAS BRISAS',177,0),(612,'SAN ANTONIO LOS ALTOS',178,0),(613,'SAN JOSE DE BARLOVENTO',179,0),(614,'CUMBO',179,0),(615,'SAN FCO DE YARE',180,0),(616,'S ANTONIO DE YARE',180,0),(617,'BARUTA',181,0),(618,'EL CAFETAL',181,0),(619,'LAS MINAS DE BARUTA',181,0),(620,'CARRIZAL',182,0),(621,'CHACAO',183,0),(622,'EL HATILLO',184,0),(623,'MAMPORAL',185,0),(624,'CUPIRA',186,0),(625,'MACHURUCUTO',186,0),(626,'CM. SAN ANTONIO',187,0),(627,'SAN FRANCISCO',187,0),(628,'CM. CARIPITO',188,0),(629,'CM. CARIPE',189,0),(630,'TERESEN',189,0),(631,'EL GUACHARO',189,0),(632,'SAN AGUSTIN',189,0),(633,'LA GUANOTA',189,0),(634,'SABANA DE PIEDRA',189,0),(635,'CM. CAICARA',190,0),(636,'AREO',190,0),(637,'SAN FELIX',190,0),(638,'VIENTO FRESCO',190,0),(639,'CM. PUNTA DE MATA',191,0),(640,'EL TEJERO',191,0),(641,'CM. TEMBLADOR',192,0),(642,'TABASCA',192,0),(643,'LAS ALHUACAS',192,0),(644,'CHAGUARAMAS',192,0),(645,'EL FURRIAL',193,0),(646,'JUSEPIN',193,0),(647,'EL COROZO',193,0),(648,'SAN VICENTE',193,0),(649,'LA PICA',193,0),(650,'ALTO DE LOS GODOS',193,0),(651,'BOQUERON',193,0),(652,'LAS COCUIZAS',193,0),(653,'SANTA CRUZ',193,0),(654,'SAN SIMON',193,0),(655,'CM. ARAGUA',194,0),(656,'CHAGUARAMAL',194,0),(657,'GUANAGUANA',194,0),(658,'APARICIO',194,0),(659,'TAGUAYA',194,0),(660,'EL PINTO',194,0),(661,'LA TOSCANA',194,0),(662,'CM. QUIRIQUIRE',195,0),(663,'CACHIPO',195,0),(664,'CM. BARRANCAS',196,0),(665,'LOS BARRANCOS DE FAJARDO',196,0),(666,'CM. AGUASAY',197,0),(667,'CM. SANTA BARBARA',198,0),(668,'CM. URACOA',199,0),(669,'CM. LA ASUNCION',200,0),(670,'CM. SAN JUAN BAUTISTA',201,0),(671,'ZABALA',201,0),(672,'CM. SANTA ANA',202,0),(673,'GUEVARA',202,0),(674,'MATASIETE',202,0),(675,'BOLIVAR',202,0),(676,'SUCRE',202,0),(677,'CM. PAMPATAR',203,0),(678,'AGUIRRE',203,0),(679,'CM. JUAN GRIEGO',204,0),(680,'ADRIAN',204,0),(681,'CM. PORLAMAR',205,0),(682,'CM. BOCA DEL RIO',206,0),(683,'SAN FRANCISCO',206,0),(684,'CM. SAN PEDRO DE COCHE',207,0),(685,'VICENTE FUENTES',207,0),(686,'CM. PUNTA DE PIEDRAS',208,0),(687,'LOS BARALES',208,0),(688,'CM.LA PLAZA DE PARAGUACHI',209,0),(689,'CM. VALLE ESP SANTO',210,0),(690,'FRANCISCO FAJARDO',210,0),(691,'CM. ARAURE',211,0),(692,'RIO ACARIGUA',211,0),(693,'CM. PIRITU',212,0),(694,'UVERAL',212,0),(695,'CM. GUANARE',213,0),(696,'CORDOBA',213,0),(697,'SAN JUAN GUANAGUANARE',213,0),(698,'VIRGEN DE LA COROMOTO',213,0),(699,'SAN JOSE DE LA MONTAÑA',213,0),(700,'CM. GUANARITO',214,0),(701,'TRINIDAD DE LA CAPILLA',214,0),(702,'DIVINA PASTORA',214,0),(703,'CM. OSPINO',215,0),(704,'APARICION',215,0),(705,'LA ESTACION',215,0),(706,'CM. ACARIGUA',216,0),(707,'PAYARA',216,0),(708,'PIMPINELA',216,0),(709,'RAMON PERAZA',216,0),(710,'CM. BISCUCUY',217,0),(711,'CONCEPCION',217,0),(712,'SAN RAFAEL PALO ALZADO',217,0),(713,'UVENCIO A VELASQUEZ',217,0),(714,'SAN JOSE DE SAGUAZ',217,0),(715,'VILLA ROSA',217,0),(716,'CM. VILLA BRUZUAL',218,0),(717,'CANELONES',218,0),(718,'SANTA CRUZ',218,0),(719,'SAN ISIDRO LABRADOR',218,0),(720,'CM. CHABASQUEN',219,0),(721,'PEÑA BLANCA',219,0),(722,'CM. AGUA BLANCA',220,0),(723,'CM. PAPELON',221,0),(724,'CAÑO DELGADITO',221,0),(725,'CM. BOCONOITO',222,0),(726,'ANTOLIN TOVAR AQUINO',222,0),(727,'CM. SAN RAFAEL DE ONOTO',223,0),(728,'SANTA FE',223,0),(729,'THERMO MORLES',223,0),(730,'CM. EL PLAYON',224,0),(731,'FLORIDA',224,0),(732,'RIO CARIBE',225,0),(733,'SAN JUAN GALDONAS',225,0),(734,'PUERTO SANTO',225,0),(735,'EL MORRO DE PTO SANTO',225,0),(736,'ANTONIO JOSE DE SUCRE',225,0),(737,'EL PILAR',226,0),(738,'EL RINCON',226,0),(739,'GUARAUNOS',226,0),(740,'TUNAPUICITO',226,0),(741,'UNION',226,0),(742,'GRAL FCO. A VASQUEZ',226,0),(743,'SANTA CATALINA',227,0),(744,'SANTA ROSA',227,0),(745,'SANTA TERESA',227,0),(746,'BOLIVAR',227,0),(747,'MACARAPANA',227,0),(748,'YAGUARAPARO',228,0),(749,'LIBERTAD',228,0),(750,'PAUJIL',228,0),(751,'IRAPA',229,0),(752,'CAMPO CLARO',229,0),(753,'SORO',229,0),(754,'SAN ANTONIO DE IRAPA',229,0),(755,'MARABAL',229,0),(756,'CM. SAN ANT DEL GOLFO',230,0),(757,'CUMANACOA',231,0),(758,'ARENAS',231,0),(759,'ARICAGUA',231,0),(760,'COCOLLAR',231,0),(761,'SAN FERNANDO',231,0),(762,'SAN LORENZO',231,0),(763,'CARIACO',232,0),(764,'CATUARO',232,0),(765,'RENDON',232,0),(766,'SANTA CRUZ',232,0),(767,'SANTA MARIA',232,0),(768,'ALTAGRACIA',233,0),(769,'AYACUCHO',233,0),(770,'SANTA INES',233,0),(771,'VALENTIN VALIENTE',233,0),(772,'SAN JUAN',233,0),(773,'GRAN MARISCAL',233,0),(774,'RAUL LEONI',233,0),(775,'GUIRIA',234,0),(776,'CRISTOBAL COLON',234,0),(777,'PUNTA DE PIEDRA',234,0),(778,'BIDEAU',234,0),(779,'MARIÑO',235,0),(780,'ROMULO GALLEGOS',235,0),(781,'TUNAPUY',236,0),(782,'CAMPO ELIAS',236,0),(783,'SAN JOSE DE AREOCUAR',237,0),(784,'TAVERA ACOSTA',237,0),(785,'CM. MARIGUITAR',238,0),(786,'ARAYA',239,0),(787,'MANICUARE',239,0),(788,'CHACOPATA',239,0),(789,'CM. COLON',240,0),(790,'RIVAS BERTI',240,0),(791,'SAN PEDRO DEL RIO',240,0),(792,'CM. SAN ANT DEL TACHIRA',241,0),(793,'PALOTAL',241,0),(794,'JUAN VICENTE GOMEZ',241,0),(795,'ISAIAS MEDINA ANGARIT',241,0),(796,'CM. CAPACHO NUEVO',242,0),(797,'JUAN GERMAN ROSCIO',242,0),(798,'ROMAN CARDENAS',242,0),(799,'CM. TARIBA',243,0),(800,'LA FLORIDA',243,0),(801,'AMENODORO RANGEL LAMU',243,0),(802,'CM. LA GRITA',244,0),(803,'EMILIO C. GUERRERO',244,0),(804,'MONS. MIGUEL A SALAS',244,0),(805,'CM. RUBIO',245,0),(806,'BRAMON',245,0),(807,'LA PETROLEA',245,0),(808,'QUINIMARI',245,0),(809,'CM. LOBATERA',246,0),(810,'CONSTITUCION',246,0),(811,'LA CONCORDIA',247,0),(812,'PEDRO MARIA MORANTES',247,0),(813,'SN JUAN BAUTISTA',247,0),(814,'SAN SEBASTIAN',247,0),(815,'DR. FCO. ROMERO LOBO',247,0),(816,'CM. PREGONERO',248,0),(817,'CARDENAS',248,0),(818,'POTOSI',248,0),(819,'JUAN PABLO PEÑALOZA',248,0),(820,'CM. STA. ANA  DEL TACHIRA',249,0),(821,'CM. LA FRIA',250,0),(822,'BOCA DE GRITA',250,0),(823,'JOSE ANTONIO PAEZ',250,0),(824,'CM. PALMIRA',251,0),(825,'CM. MICHELENA',252,0),(826,'CM. ABEJALES',253,0),(827,'SAN JOAQUIN DE NAVAY',253,0),(828,'DORADAS',253,0),(829,'EMETERIO OCHOA',253,0),(830,'CM. COLONCITO',254,0),(831,'LA PALMITA',254,0),(832,'CM. UREÑA',255,0),(833,'NUEVA ARCADIA',255,0),(834,'CM. QUENIQUEA',256,0),(835,'SAN PABLO',256,0),(836,'ELEAZAR LOPEZ CONTRERA',256,0),(837,'CM. CORDERO',257,0),(838,'CM.SAN RAFAEL DEL PINAL',258,0),(839,'SANTO DOMINGO',258,0),(840,'ALBERTO ADRIANI',258,0),(841,'CM. CAPACHO VIEJO',259,0),(842,'CIPRIANO CASTRO',259,0),(843,'MANUEL FELIPE RUGELES',259,0),(844,'CM. LA TENDIDA',260,0),(845,'BOCONO',260,0),(846,'HERNANDEZ',260,0),(847,'CM. SEBORUCO',261,0),(848,'CM. LAS MESAS',262,0),(849,'CM. SAN JOSE DE BOLIVAR',263,0),(850,'CM. EL COBRE',264,0),(851,'CM. DELICIAS',265,0),(852,'CM. SAN SIMON',266,0),(853,'CM. SAN JOSECITO',267,0),(854,'CM. UMUQUENA',268,0),(855,'BETIJOQUE',269,0),(856,'JOSE G HERNANDEZ',269,0),(857,'LA PUEBLITA',269,0),(858,'EL CEDRO',269,0),(859,'BOCONO',270,0),(860,'EL CARMEN',270,0),(861,'MOSQUEY',270,0),(862,'AYACUCHO',270,0),(863,'BURBUSAY',270,0),(864,'GENERAL RIVAS',270,0),(865,'MONSEÑOR JAUREGUI',270,0),(866,'RAFAEL RANGEL',270,0),(867,'SAN JOSE',270,0),(868,'SAN MIGUEL',270,0),(869,'GUARAMACAL',270,0),(870,'LA VEGA DE GUARAMACAL',270,0),(871,'CARACHE',271,0),(872,'LA CONCEPCION',271,0),(873,'CUICAS',271,0),(874,'PANAMERICANA',271,0),(875,'SANTA CRUZ',271,0),(876,'ESCUQUE',272,0),(877,'SABANA LIBRE',272,0),(878,'LA UNION',272,0),(879,'SANTA RITA',272,0),(880,'CRISTOBAL MENDOZA',273,0),(881,'CHIQUINQUIRA',273,0),(882,'MATRIZ',273,0),(883,'MONSEÑOR CARRILLO',273,0),(884,'CRUZ CARRILLO',273,0),(885,'ANDRES LINARES',273,0),(886,'TRES ESQUINAS',273,0),(887,'LA QUEBRADA',274,0),(888,'JAJO',274,0),(889,'LA MESA',274,0),(890,'SANTIAGO',274,0),(891,'CABIMBU',274,0),(892,'TUÑAME',274,0),(893,'MERCEDES DIAZ',275,0),(894,'JUAN IGNACIO MONTILLA',275,0),(895,'LA BEATRIZ',275,0),(896,'MENDOZA',275,0),(897,'LA PUERTA',275,0),(898,'SAN LUIS',275,0),(899,'CHEJENDE',276,0),(900,'CARRILLO',276,0),(901,'CEGARRA',276,0),(902,'BOLIVIA',276,0),(903,'MANUEL SALVADOR ULLOA',276,0),(904,'SAN JOSE',276,0),(905,'ARNOLDO GABALDON',276,0),(906,'EL DIVIDIVE',277,0),(907,'AGUA CALIENTE',277,0),(908,'EL CENIZO',277,0),(909,'AGUA SANTA',277,0),(910,'VALERITA',277,0),(911,'MONTE CARMELO',278,0),(912,'BUENA VISTA',278,0),(913,'STA MARIA DEL HORCON',278,0),(914,'MOTATAN',279,0),(915,'EL BAÑO',279,0),(916,'JALISCO',279,0),(917,'PAMPAN',280,0),(918,'SANTA ANA',280,0),(919,'LA PAZ',280,0),(920,'FLOR DE PATRIA',280,0),(921,'CARVAJAL',281,0),(922,'ANTONIO N BRICEÑO',281,0),(923,'CAMPO ALEGRE',281,0),(924,'JOSE LEONARDO SUAREZ',281,0),(925,'SABANA DE MENDOZA',282,0),(926,'JUNIN',282,0),(927,'VALMORE RODRIGUEZ',282,0),(928,'EL PARAISO',282,0),(929,'SANTA ISABEL',283,0),(930,'ARAGUANEY',283,0),(931,'EL JAGUITO',283,0),(932,'LA ESPERANZA',283,0),(933,'SABANA GRANDE',284,0),(934,'CHEREGUE',284,0),(935,'GRANADOS',284,0),(936,'EL SOCORRO',285,0),(937,'LOS CAPRICHOS',285,0),(938,'ANTONIO JOSE DE SUCRE',285,0),(939,'CAMPO ELIAS',286,0),(940,'ARNOLDO GABALDON',286,0),(941,'SANTA APOLONIA',287,0),(942,'LA CEIBA',287,0),(943,'EL PROGRESO',287,0),(944,'TRES DE FEBRERO',287,0),(945,'PAMPANITO',288,0),(946,'PAMPANITO II',288,0),(947,'LA CONCEPCION',288,0),(948,'CM. AROA',289,0),(949,'CM. CHIVACOA',290,0),(950,'CAMPO ELIAS',290,0),(951,'CM. NIRGUA',291,0),(952,'SALOM',291,0),(953,'TEMERLA',291,0),(954,'CM. SAN FELIPE',292,0),(955,'ALBARICO',292,0),(956,'SAN JAVIER',292,0),(957,'CM. GUAMA',293,0),(958,'CM. URACHICHE',294,0),(959,'CM. YARITAGUA',295,0),(960,'SAN ANDRES',295,0),(961,'CM. SABANA DE PARRA',296,0),(962,'CM. BORAURE',297,0),(963,'CM. COCOROTE',298,0),(964,'CM. INDEPENDENCIA',299,0),(965,'CM. SAN PABLO',300,0),(966,'CM. YUMARE',301,0),(967,'CM. FARRIAR',302,0),(968,'EL GUAYABO',302,0),(969,'GENERAL URDANETA',303,0),(970,'LIBERTADOR',303,0),(971,'MANUEL GUANIPA MATOS',303,0),(972,'MARCELINO BRICEÑO',303,0),(973,'SAN TIMOTEO',303,0),(974,'PUEBLO NUEVO',303,0),(975,'PEDRO LUCAS URRIBARRI',304,0),(976,'SANTA RITA',304,0),(977,'JOSE CENOVIO URRIBARR',304,0),(978,'EL MENE',304,0),(979,'SANTA CRUZ DEL ZULIA',305,0),(980,'URRIBARRI',305,0),(981,'MORALITO',305,0),(982,'SAN CARLOS DEL ZULIA',305,0),(983,'SANTA BARBARA',305,0),(984,'LUIS DE VICENTE',306,0),(985,'RICAURTE',306,0),(986,'MONS.MARCOS SERGIO G',306,0),(987,'SAN RAFAEL',306,0),(988,'LAS PARCELAS',306,0),(989,'TAMARE',306,0),(990,'LA SIERRITA',306,0),(991,'BOLIVAR',307,0),(992,'COQUIVACOA',307,0),(993,'CRISTO DE ARANZA',307,0),(994,'CHIQUINQUIRA',307,0),(995,'SANTA LUCIA',307,0),(996,'OLEGARIO VILLALOBOS',307,0),(997,'JUANA DE AVILA',307,0),(998,'CARACCIOLO PARRA PEREZ',307,0),(999,'IDELFONZO VASQUEZ',307,0),(1000,'CACIQUE MARA',307,0),(1001,'CECILIO ACOSTA',307,0),(1002,'RAUL LEONI',307,0),(1003,'FRANCISCO EUGENIO B',307,0),(1004,'MANUEL DAGNINO',307,0),(1005,'LUIS HURTADO HIGUERA',307,0),(1006,'VENANCIO PULGAR',307,0),(1007,'ANTONIO BORJAS ROMERO',307,0),(1008,'SAN ISIDRO',307,0),(1009,'FARIA',308,0),(1010,'SAN ANTONIO',308,0),(1011,'ANA MARIA CAMPOS',308,0),(1012,'SAN JOSE',308,0),(1013,'ALTAGRACIA',308,0),(1014,'GOAJIRA',309,0),(1015,'ELIAS SANCHEZ RUBIO',309,0),(1016,'SINAMAICA',309,0),(1017,'ALTA GUAJIRA',309,0),(1018,'SAN JOSE DE PERIJA',310,0),(1019,'BARTOLOME DE LAS CASAS',310,0),(1020,'LIBERTAD',310,0),(1021,'RIO NEGRO',310,0),(1022,'GIBRALTAR',311,0),(1023,'HERAS',311,0),(1024,'M.ARTURO CELESTINO A',311,0),(1025,'ROMULO GALLEGOS',311,0),(1026,'BOBURES',311,0),(1027,'EL BATEY',311,0),(1028,'ANDRES BELLO (KM 48)',312,0),(1029,'POTRERITOS',312,0),(1030,'EL CARMELO',312,0),(1031,'CHIQUINQUIRA',312,0),(1032,'CONCEPCION',312,0),(1033,'ELEAZAR LOPEZ C',313,0),(1034,'ALONSO DE OJEDA',313,0),(1035,'VENEZUELA',313,0),(1036,'CAMPO LARA',313,0),(1037,'LIBERTAD',313,0),(1038,'UDON PEREZ',314,0),(1039,'ENCONTRADOS',314,0),(1040,'DONALDO GARCIA',315,0),(1041,'SIXTO ZAMBRANO',315,0),(1042,'EL ROSARIO',315,0),(1043,'AMBROSIO',316,0),(1044,'GERMAN RIOS LINARES',316,0),(1045,'JORGE HERNANDEZ',316,0),(1046,'LA ROSA',316,0),(1047,'PUNTA GORDA',316,0),(1048,'CARMEN HERRERA',316,0),(1049,'SAN BENITO',316,0),(1050,'ROMULO BETANCOURT',316,0),(1051,'ARISTIDES CALVANI',316,0),(1052,'RAUL CUENCA',317,0),(1053,'LA VICTORIA',317,0),(1054,'RAFAEL URDANETA',317,0),(1055,'JOSE RAMON YEPEZ',318,0),(1056,'LA CONCEPCION',318,0),(1057,'SAN JOSE',318,0),(1058,'MARIANO PARRA LEON',318,0),(1059,'MONAGAS',319,0),(1060,'ISLA DE TOAS',319,0),(1061,'MARCIAL HERNANDEZ',320,0),(1062,'FRANCISCO OCHOA',320,0),(1063,'SAN FRANCISCO',320,0),(1064,'EL BAJO',320,0),(1065,'DOMITILA FLORES',320,0),(1066,'LOS CORTIJOS',320,0),(1067,'BARI',321,0),(1068,'JESUS M SEMPRUN',321,0),(1069,'SIMON RODRIGUEZ',322,0),(1070,'CARLOS QUEVEDO',322,0),(1071,'FRANCISCO J PULGAR',322,0),(1072,'RAFAEL MARIA BARALT',323,0),(1073,'MANUEL MANRIQUE',323,0),(1074,'RAFAEL URDANETA',323,0),(1075,'FERNANDO GIRON TOVAR',324,0),(1076,'LUIS ALBERTO GOMEZ',324,0),(1077,'PARHUEÑA',324,0),(1078,'PLATANILLAL',324,0),(1079,'CM. SAN FERNANDO DE ATABA',325,0),(1080,'UCATA',325,0),(1081,'YAPACANA',325,0),(1082,'CANAME',325,0),(1083,'CM. MAROA',326,0),(1084,'VICTORINO',326,0),(1085,'COMUNIDAD',326,0),(1086,'CM. SAN CARLOS DE RIO NEG',327,0),(1087,'SOLANO',327,0),(1088,'COCUY',327,0),(1089,'CM. ISLA DE RATON',328,0),(1090,'SAMARIAPO',328,0),(1091,'SIPAPO',328,0),(1092,'MUNDUAPO',328,0),(1093,'GUAYAPO',328,0),(1094,'CM. SAN JUAN DE MANAPIARE',329,0),(1095,'ALTO VENTUARI',329,0),(1096,'MEDIO VENTUARI',329,0),(1097,'BAJO VENTUARI',329,0),(1098,'CM. LA ESMERALDA',330,0),(1099,'HUACHAMACARE',330,0),(1100,'MARAWAKA',330,0),(1101,'MAVACA',330,0),(1102,'SIERRA PARIMA',330,0),(1103,'SAN JOSE',331,0),(1104,'VIRGEN DEL VALLE',331,0),(1105,'SAN RAFAEL',331,0),(1106,'JOSE VIDAL MARCANO',331,0),(1107,'LEONARDO RUIZ PINEDA',331,0),(1108,'MONS. ARGIMIRO GARCIA',331,0),(1109,'MCL.ANTONIO J DE SUCRE',331,0),(1110,'JUAN MILLAN',331,0),(1111,'PEDERNALES',332,0),(1112,'LUIS B PRIETO FIGUERO',332,0),(1113,'CURIAPO',333,0),(1114,'SANTOS DE ABELGAS',333,0),(1115,'MANUEL RENAUD',333,0),(1116,'PADRE BARRAL',333,0),(1117,'ANICETO LUGO',333,0),(1118,'ALMIRANTE LUIS BRION',333,0),(1119,'IMATACA',334,0),(1120,'ROMULO GALLEGOS',334,0),(1121,'JUAN BAUTISTA ARISMEN',334,0),(1122,'MANUEL PIAR',334,0),(1123,'5 DE JULIO',334,0),(1124,'CARABALLEDA',335,0),(1125,'CARAYACA',335,0),(1126,'CARUAO',335,0),(1127,'CATIA LA MAR',335,0),(1128,'LA GUAIRA',335,0),(1129,'MACUTO',335,0),(1130,'MAIQUETIA',335,0),(1131,'NAIGUATA',335,0),(1132,'EL JUNKO',335,0),(1133,'PQ RAUL LEONI',335,0),(1134,'PQ CARLOS SOUBLETTE',335,0);
/*!40000 ALTER TABLE `parroquia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publicidad`
--

DROP TABLE IF EXISTS `publicidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publicidad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) DEFAULT NULL,
  `deleted` int(11) DEFAULT '0',
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `position` varchar(45) DEFAULT NULL,
  `item_id` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publicidad`
--

LOCK TABLES `publicidad` WRITE;
/*!40000 ALTER TABLE `publicidad` DISABLE KEYS */;
INSERT INTO `publicidad` VALUES (1,'guacamayastores-01.png',0,NULL,'2015-04-16','top',0),(2,'guacamayastores-02.png',0,NULL,'2015-04-16','left',0),(3,'guacamayastores-03.png',0,NULL,'2015-04-16','right',0),(4,'guacamayastores-08(2).png',0,NULL,'2015-04-16','first',0),(5,'guacamayastores-08(3).png',0,NULL,'2015-04-16','second',0);
/*!40000 ALTER TABLE `publicidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(45) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'Administrador',NULL,NULL),(2,'Usuario',NULL,NULL);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slides`
--

DROP TABLE IF EXISTS `slides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slides` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) DEFAULT NULL,
  `active` int(11) DEFAULT '0',
  `deleted` int(11) DEFAULT '0',
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `pos` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slides`
--

LOCK TABLES `slides` WRITE;
/*!40000 ALTER TABLE `slides` DISABLE KEYS */;
INSERT INTO `slides` VALUES (1,'ny1.jpg',1,0,'2015-04-25','2015-06-15',1),(2,'ny2.jpg',1,0,'2015-04-25','2015-06-15',1),(3,'ny3.jpg',1,0,'2015-04-25','2015-04-25',1),(4,'Sin título-2-02.png',0,1,'2015-04-25','2015-04-25',1),(5,'2.png',0,1,'2015-04-25','2015-05-03',1),(6,'4.gif',0,1,'2015-04-25','2015-05-03',1),(7,'pubpeq.png',0,1,'2015-04-25','2015-05-03',1),(8,'publicidad-03.png',0,1,'2015-04-25','2015-05-03',1),(9,'pubgrande.png',0,1,'2015-04-25','2015-05-03',1),(10,'3(1)(1).png',0,1,'2015-06-11','2015-06-15',2),(12,'1(1).png',0,1,'2015-06-11','2015-06-15',2),(13,'2(1)(1).png',0,1,'2015-06-11','2015-06-11',1),(14,'2(1).png',0,1,'2015-06-11','2015-06-11',1),(15,'1(1)(1).png',0,1,'2015-06-11','2015-06-11',1),(16,'2(1)(1)(1).png',0,1,'2015-06-11','2015-06-11',1),(17,'2(1)(1).png',0,1,'2015-06-11','2015-06-15',1),(18,'3.png',0,1,'2015-06-11','2015-06-15',1),(19,'1(1)(1).png',0,1,'2015-06-11','2015-06-15',2),(20,'2(1)(1)(1).png',1,1,'2015-06-11','2015-06-11',1);
/*!40000 ALTER TABLE `slides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcat`
--

DROP TABLE IF EXISTS `subcat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subcat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `sub_nomb` varchar(100) NOT NULL,
  `sub_desc` varchar(100) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  `deleted` int(11) DEFAULT '0',
  `img` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcat`
--

LOCK TABLES `subcat` WRITE;
/*!40000 ALTER TABLE `subcat` DISABLE KEYS */;
INSERT INTO `subcat` VALUES (1,1,'Anillo','Anillo','2015-04-25','2015-04-25',1,''),(2,3,'top','Top','2015-05-03','2015-05-03',1,NULL),(3,3,'full','full','2015-05-03','2015-05-03',0,'prontog.jpg'),(4,3,'full1','full','2015-05-03','2015-05-03',0,'prontog.jpg'),(5,3,'full2','full','2015-05-03','2015-05-03',0,'prontog.jpg'),(6,3,'full3','full','2015-05-03','2015-05-03',0,'prontog.jpg'),(7,3,'full4','full','2015-05-03','2015-05-03',0,'prontog.jpg'),(8,4,'lalalalal','lalalalal','2015-06-01','2015-06-01',0,'logo.png'),(9,8,'esta categoria','esta categoria','2015-06-01','2015-06-01',0,'maxresdefault.jpg'),(10,8,'bleru bleru','blaaaaar','2015-06-05','2015-06-05',0,'descarga.jpg');
/*!40000 ALTER TABLE `subcat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tallas`
--

DROP TABLE IF EXISTS `tallas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tallas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `talla_nomb` varchar(20) DEFAULT NULL,
  `talla_desc` varchar(20) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tallas`
--

LOCK TABLES `tallas` WRITE;
/*!40000 ALTER TABLE `tallas` DISABLE KEYS */;
INSERT INTO `tallas` VALUES (1,'S','tamaño pequeño','2015-03-08','2015-05-03',0),(2,'m','tamaño mediano','2015-03-08','2015-03-08',0),(3,'g','tamaño grandes','2015-03-08','2015-05-03',0),(4,'XL','extra grande','2015-05-03','2015-05-03',1);
/*!40000 ALTER TABLE `tallas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `dir` varchar(255) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `cedula` varchar(15) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT '2',
  `user_deleted` int(11) NOT NULL DEFAULT '0',
  `register_cod` varchar(150) NOT NULL,
  `register_cod_active` int(11) NOT NULL DEFAULT '0',
  `remember_token` varchar(255) NOT NULL,
  `dir2` varchar(255) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `department` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'admin','$2y$08$E6jwtZftFZMcpA8sOAQzyOdekYpNQp5WHvM.CpWdcxeaCtiEGtWBu',NULL,NULL,NULL,NULL,NULL,'2015-06-11',NULL,NULL,1,0,'',0,'CwrlJPJkCf7EYFushc5qq0bvAl1XJtMRN4SxhHVSRFt6O7QWYPpkNfMIwKG2',NULL,NULL,NULL),(2,'carlos','$2y$08$dykg9ByOMbKqBJuA349tqufDth08T1S9mA.1i2Ij8OzPaXV7tLyJO','   caguaxx','shenlong_12@hotmail.com','123123',NULL,'2015-03-12','2015-06-11','carlos','salazar',0,0,'9b26f36e3f37a5d1841d3599a226e087',0,'lUwW2yrIr5xEKjgJ6Wd2QWqbmRgSMdwP5DkepwXlupycbn8wcrrZS4m4rtjY',NULL,NULL,7),(3,'pepe','$2y$08$PuhuwxUHidbo4qVDatu5UuQVDGYU6.l8kr/rRqCZk2XYRzjaMHCXi',NULL,'pepe@pepe.com',NULL,NULL,'2015-03-12','2015-07-02','pepe','pepe',0,0,'31fc7f18e6dc5f5d7cb09a40d1fa7115',0,'W754R9johJkDrVA0GbjejJNT0itE8YkT3gma6uIHwXc5mb35RwdAJh84ighZ',NULL,NULL,NULL),(4,'carlosqw','$2y$08$ckqZ644SPK904MS1oiOiiO3.9Uq7ct12XCphVHWOLG4r27LJkkKGS',NULL,'carlosqw@guacamayastores.com.ve',NULL,NULL,'2015-04-04','2015-04-04',NULL,NULL,0,0,'',0,'',NULL,NULL,NULL),(5,'pepetonioadminw','$2y$08$sjohuwRyVZqfx9jnid7jAeUYHCGkLEyl0GiKsylpcA7hNWZ7efHI2',NULL,'pepetonioadminw@guacamayastores.com.ve',NULL,NULL,'2015-04-04','2015-04-04',NULL,NULL,1,0,'',0,'',NULL,NULL,NULL),(6,'jimenito','$2y$08$AnHgwBwnFv6aK.297At3Q.97nO6w0XkPkRgrd06EEJvj.La8I184S',NULL,'jimenito@gmail.com',NULL,NULL,'2015-04-13','2015-04-13','jimenito','peralta',0,0,'',0,'2bOZ6XRFKjmKwFiZGVTRAqTpIcFb3vDBFBVv0PFKuXVAA6fd1erLGEhsdlog',NULL,NULL,NULL),(7,'felipe','$2y$08$lxDfqvpSFx0I8SKkiiu/LOd1PbXVmQhUnThxD.BRwtR6XlKRvX1D2','je','shenlong_122@hotmail.com',';jfdf','20990979','2015-04-25','2015-04-25','felipe','sosa',3,0,'',0,'dLj7LeD3Tchtpc1tj9ZkA1mAjNa500TK6hA2bQIw6vRX5D2be1ZcJENkllHW',';jfd;ajf','jdfajf;',1),(8,'afaetewqtwqt','$2y$08$Rb6AtlamiBj54M5QjqFOJuQ7rFebP1v9hOLeiQSMvNE37HK1qMObe','adfadf','aadfdaf@adfdaf.com','adasdsad','asfaf','2015-06-01','2015-06-01','adfdaf','afadf',3,0,'',0,'','dafadf','afdadf',5),(9,'pepetonio@pepe.com','$2y$08$d4jJLd7RvuznUruJw3iZW.VvAryUmFe2Sr9wbTDJfaneE6qvwF7SO',' dfadfdfadf','pepetonio@pepe.com','1123123','209909791','2015-06-10','2015-06-19','carlos','salazar',3,0,'',0,'KqcSBfmiTzWWjxP53XxTbJ3Ajd2Q7dI9E3UzBuKKASFGj24ysoz8WVfQNdHk','aaaaaaaaaaaa','dafdfa',1),(10,'adminasdsad@saasf.com','$2y$08$OjyCINg5o4RRI5jM3kLPMeg5gizM1GqxPJN/R2ZrcFaXhXYTJ9HBe','afafadfadf','adminasdsad@saasf.com','234235','234234','2015-06-19','2015-06-19','carlos','adsfasfsa',3,0,'',0,'',NULL,'asfasfsaf',0),(11,'pepetoniorodriguez@pepe.com','$2y$08$Ioj93tYTkDLlFsCiV/zdnOtifKI3Hp5Sv6OUODzhs3.11mJs.T0P.','adfadfadf','pepetoniorodriguez@pepe.com',NULL,'20990979123','2015-07-02','2015-07-02','fafsafas','fafasfsafsaf',3,0,'',0,'',NULL,'fadfadf',3),(12,'pruebax@xxx.com','$2y$08$pgonLE5RxbXK8ET/oxmmQ.atrmInPX7/Ok4EALq5MLpblFzeTyXiG','afasfasfsafaf','pruebax@xxx.com',NULL,'123123123123','2015-07-02','2015-07-02','carlos','salazar',3,0,'',0,'',NULL,'afkaskfasf',0);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wish_list`
--

DROP TABLE IF EXISTS `wish_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wish_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `deleted` int(11) DEFAULT '0',
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wish_list`
--

LOCK TABLES `wish_list` WRITE;
/*!40000 ALTER TABLE `wish_list` DISABLE KEYS */;
INSERT INTO `wish_list` VALUES (1,2,1,0,'2015-06-02','2015-06-02');
/*!40000 ALTER TABLE `wish_list` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-07-02 16:04:23
