-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dyv-an
-- ------------------------------------------------------
-- Server version	5.5.32

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
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `dir` varchar(500) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `deleted` int(11) DEFAULT '0',
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `user_dir` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direcciones`
--

LOCK TABLES `direcciones` WRITE;
/*!40000 ALTER TABLE `direcciones` DISABLE KEYS */;
INSERT INTO `direcciones` VALUES (0,9,'esta es la direccion nueva','pepito@pape.com',0,'2015-06-11','2015-06-11',NULL),(1,2,'caguafadf daf daf daf daf adf adf ','shenlong_12@hotmail.com',0,'2015-05-12','2015-06-09',1);
/*!40000 ALTER TABLE `direcciones` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura_item`
--

LOCK TABLES `factura_item` WRITE;
/*!40000 ALTER TABLE `factura_item` DISABLE KEYS */;
INSERT INTO `factura_item` VALUES (1,3,1,20,'2015-05-12','2015-05-12',1,1,1000),(2,4,1,1,'2015-05-15','2015-05-15',1,1,1000),(3,5,1,1,'2015-06-01','2015-06-01',1,1,1000),(4,6,1,2,'2015-06-11','2015-06-11',1,1,1000),(5,7,1,4,'2015-06-11','2015-06-11',1,1,1000);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturas`
--

LOCK TABLES `facturas` WRITE;
/*!40000 ALTER TABLE `facturas` DISABLE KEYS */;
INSERT INTO `facturas` VALUES (1,2,0,NULL,'1','2015-05-12 23:35:08','2015-05-12 23:35:08',NULL,NULL,NULL,NULL,0),(2,2,0,NULL,'1','2015-05-12 23:35:53','2015-05-12 23:35:53',NULL,NULL,NULL,NULL,0),(3,2,0,NULL,'1','2015-05-12 23:36:25','2015-05-12 23:36:25',NULL,NULL,NULL,NULL,0),(4,2,0,NULL,'1','2015-05-15 23:27:02','2015-05-15 23:27:02',NULL,NULL,NULL,NULL,0),(5,2,1,2147483647,'1','2015-06-01 22:08:09','2015-06-12 19:43:42',NULL,'12/11/2015',2,NULL,0),(6,9,0,NULL,'0','2015-06-11 02:45:07','2015-06-11 02:45:07',NULL,NULL,NULL,NULL,0),(7,9,1,2147483647,'0','2015-06-11 22:54:32','2015-06-12 19:43:19',NULL,'03-06-2015',2,'asafsf',0);
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (1,1,'1/banda-01.png','2015-05-03','2015-06-12',0),(2,1,'1/maxresdefault1.jpg','2015-06-01','2015-06-12',0),(3,3,'2/sol1.jpg','2015-06-12','2015-06-12',0),(4,3,'2/banco-economico.gif','2015-06-12','2015-06-12',0),(5,3,'2/bancocredito.gif','2015-06-12','2015-06-12',0),(6,5,'3/bancoCredito.png','2015-06-12','2015-06-12',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,'00012','Articulo seg','<p>xxxxxxxxxxxxxxxx</p>\r\n',0,'2015-05-03','2015-06-12',0,3,3,1000,NULL,NULL),(2,'1111','peperoni','<p>adfdafadfdfdafdafdaf</p>\r\n',0,'2015-06-12','2015-06-12',0,3,NULL,12000,NULL,NULL),(3,'0002z1','articulo 5555','<p>afdafdafadf</p>\r\n',0,'2015-06-12','2015-06-12',0,4,NULL,500,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `miscelanias`
--

LOCK TABLES `miscelanias` WRITE;
/*!40000 ALTER TABLE `miscelanias` DISABLE KEYS */;
INSERT INTO `miscelanias` VALUES (1,1,'1','1','2015-06-12','2015-05-03',0,'93'),(2,1,'1','1','2015-06-01','2015-06-01',0,'5'),(3,0,NULL,NULL,'2015-06-12','2015-06-12',0,NULL),(4,2,'1','1','2015-06-12','2015-06-12',0,'100'),(5,3,NULL,NULL,'2015-06-12','2015-06-12',0,NULL);
/*!40000 ALTER TABLE `miscelanias` ENABLE KEYS */;
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
INSERT INTO `slides` VALUES (1,'ny1.jpg',1,0,'2015-04-25','2015-06-11',1),(2,'ny2.jpg',1,0,'2015-04-25','2015-04-25',1),(3,'ny3.jpg',1,0,'2015-04-25','2015-04-25',1),(4,'Sin título-2-02.png',0,1,'2015-04-25','2015-04-25',1),(5,'2.png',0,1,'2015-04-25','2015-05-03',1),(6,'4.gif',0,1,'2015-04-25','2015-05-03',1),(7,'pubpeq.png',0,1,'2015-04-25','2015-05-03',1),(8,'publicidad-03.png',0,1,'2015-04-25','2015-05-03',1),(9,'pubgrande.png',0,1,'2015-04-25','2015-05-03',1),(10,'3(1)(1).png',1,0,'2015-06-11','2015-06-11',2),(12,'1(1).png',1,0,'2015-06-11','2015-06-11',2),(13,'2(1)(1).png',0,1,'2015-06-11','2015-06-11',1),(14,'2(1).png',0,1,'2015-06-11','2015-06-11',1),(15,'1(1)(1).png',0,1,'2015-06-11','2015-06-11',1),(16,'2(1)(1)(1).png',0,1,'2015-06-11','2015-06-11',1),(17,'2(1)(1).png',0,1,'2015-06-11','2015-06-11',1),(18,'3.png',0,1,'2015-06-11','2015-06-11',1),(19,'1(1)(1).png',0,0,'2015-06-11','2015-06-11',2),(20,'2(1)(1)(1).png',1,1,'2015-06-11','2015-06-11',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'admin','$2y$08$E6jwtZftFZMcpA8sOAQzyOdekYpNQp5WHvM.CpWdcxeaCtiEGtWBu',NULL,NULL,NULL,NULL,NULL,'2015-06-11',NULL,NULL,1,0,'',0,'RFz2UEI1rUy2rqjMo6YzZqOLTLEywZhYqhTcWvQ8PzOvLbARebixrAOgbLSd',NULL,NULL,NULL),(2,'carlos','$2y$08$dykg9ByOMbKqBJuA349tqufDth08T1S9mA.1i2Ij8OzPaXV7tLyJO','   caguaxx','shenlong_12@hotmail.com','123123',NULL,'2015-03-12','2015-06-11','carlos','salazar',0,0,'9b26f36e3f37a5d1841d3599a226e087',0,'lUwW2yrIr5xEKjgJ6Wd2QWqbmRgSMdwP5DkepwXlupycbn8wcrrZS4m4rtjY',NULL,NULL,7),(3,'pepe','$2y$08$8ZykLDy/Xx2K5lweVstBK.3izd2oFxpyNzLxKnznGxGLZ2TeK3a6S',NULL,'pepe@pepe.com',NULL,NULL,'2015-03-12','2015-03-12','pepe','pepe',0,0,'31fc7f18e6dc5f5d7cb09a40d1fa7115',0,'W754R9johJkDrVA0GbjejJNT0itE8YkT3gma6uIHwXc5mb35RwdAJh84ighZ',NULL,NULL,NULL),(4,'carlosqw','$2y$08$ckqZ644SPK904MS1oiOiiO3.9Uq7ct12XCphVHWOLG4r27LJkkKGS',NULL,'carlosqw@guacamayastores.com.ve',NULL,NULL,'2015-04-04','2015-04-04',NULL,NULL,0,0,'',0,'',NULL,NULL,NULL),(5,'pepetonioadminw','$2y$08$sjohuwRyVZqfx9jnid7jAeUYHCGkLEyl0GiKsylpcA7hNWZ7efHI2',NULL,'pepetonioadminw@guacamayastores.com.ve',NULL,NULL,'2015-04-04','2015-04-04',NULL,NULL,1,0,'',0,'',NULL,NULL,NULL),(6,'jimenito','$2y$08$AnHgwBwnFv6aK.297At3Q.97nO6w0XkPkRgrd06EEJvj.La8I184S',NULL,'jimenito@gmail.com',NULL,NULL,'2015-04-13','2015-04-13','jimenito','peralta',0,0,'',0,'2bOZ6XRFKjmKwFiZGVTRAqTpIcFb3vDBFBVv0PFKuXVAA6fd1erLGEhsdlog',NULL,NULL,NULL),(7,'felipe','$2y$08$lxDfqvpSFx0I8SKkiiu/LOd1PbXVmQhUnThxD.BRwtR6XlKRvX1D2','je','shenlong_122@hotmail.com',';jfdf','20990979','2015-04-25','2015-04-25','felipe','sosa',3,0,'',0,'dLj7LeD3Tchtpc1tj9ZkA1mAjNa500TK6hA2bQIw6vRX5D2be1ZcJENkllHW',';jfd;ajf','jdfajf;',1),(8,'afaetewqtwqt','$2y$08$Rb6AtlamiBj54M5QjqFOJuQ7rFebP1v9hOLeiQSMvNE37HK1qMObe','adfadf','aadfdaf@adfdaf.com','adasdsad','asfaf','2015-06-01','2015-06-01','adfdaf','afadf',3,0,'',0,'','dafadf','afdadf',5),(9,'pepetonio@pepe.com','$2y$08$h7T3VFFI01jz491hmvBm4.aq3gJ82aEhwrZ5wY7OJ3CBO5p2y7Mi2',' dfadfdfadf','pepetonio@pepe.com','1123123','209909791','2015-06-10','2015-06-11','carlos','salazar',3,0,'',0,'khXUEeCCEtAyxXqJ8y8v2EXR9uCuFjPK4EQuxrKoV0zJ0vhDXnpYmGc61TIu','aaaaaaaaaaaa','dafdfa',1);
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

-- Dump completed on 2015-06-15  6:26:26
