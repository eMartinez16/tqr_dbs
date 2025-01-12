CREATE DATABASE IF NOT EXISTS quick_auth;
USE quick_auth;
SET foreign_key_checks = 0;


DROP TABLE IF EXISTS `acl_accion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acl_accion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `valor` int NOT NULL,
  `fecha_creacion` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `fecha_actualizacion` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `fecha_borrado` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_accion`
--

LOCK TABLES `acl_accion` WRITE;
/*!40000 ALTER TABLE `acl_accion` DISABLE KEYS */;
INSERT INTO `acl_accion` VALUES (1,'Moderador',0,'2023-02-14 20:09:02.682325','2023-02-14 20:09:02.682325',NULL);
/*!40000 ALTER TABLE `acl_accion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_rol`
--

DROP TABLE IF EXISTS `acl_rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acl_rol` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha_creacion` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `fecha_actualizacion` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `fecha_borrado` datetime(6) DEFAULT NULL,
  `nombre` varchar(255) NOT NULL,
  `valor` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_rol`
--

LOCK TABLES `acl_rol` WRITE;
/*!40000 ALTER TABLE `acl_rol` DISABLE KEYS */;
INSERT INTO `acl_rol` VALUES (4,'2023-02-14 20:09:02.682325','2023-02-14 20:09:02.682325',NULL,'edicion',300),(5,'2023-02-14 20:09:02.682325','2023-02-14 20:09:02.682325',NULL,'ver',400),(6,'2023-02-14 20:09:02.682325','2023-02-14 20:09:02.682325',NULL,'carga',500),(7,'2024-04-09 18:00:21.497489','2024-04-09 18:00:21.497489',NULL,'administracion y stock',600);
/*!40000 ALTER TABLE `acl_rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_tipo_usuario`
--

DROP TABLE IF EXISTS `acl_tipo_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acl_tipo_usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha_creacion` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `fecha_actualizacion` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `fecha_borrado` datetime(6) DEFAULT NULL,
  `nombre` varchar(255) NOT NULL,
  `valor` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_tipo_usuario`
--

LOCK TABLES `acl_tipo_usuario` WRITE;
/*!40000 ALTER TABLE `acl_tipo_usuario` DISABLE KEYS */;
INSERT INTO `acl_tipo_usuario` VALUES (1,'2023-02-14 20:08:34.097090','2023-02-14 20:08:34.097090',NULL,'sa',0),(2,'2023-02-14 20:08:34.097090','2023-02-14 20:08:34.097090',NULL,'admin',100),(3,'2023-02-14 20:08:34.097090','2023-02-14 20:08:34.097090',NULL,'usuario',200);
/*!40000 ALTER TABLE `acl_tipo_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `super_admin` tinyint(1) NOT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_actualizacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_borrado` timestamp NULL DEFAULT NULL,
  `localidad` varchar(255) DEFAULT NULL,
  `cuit_cuil` varchar(255) DEFAULT NULL,
  `domicilio_fiscal` varchar(255) DEFAULT NULL,
  `domicilio_comercial` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Quick admin',1,1,'2024-04-24 15:20:23','2024-04-24 15:20:23',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'Rodrigo Aldaz',1,0,'2024-04-24 15:20:23','2024-06-12 21:08:12',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'Valentín Gaviña',1,0,'2024-04-24 15:20:23','2024-04-24 15:20:23',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empresa` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha_creacion` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `fecha_actualizacion` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `fecha_borrado` datetime(6) DEFAULT NULL,
  `nombre` varchar(255) NOT NULL,
  `id_admin` int DEFAULT NULL,
  `orden` int NOT NULL DEFAULT '0',
  `id_cliente` int DEFAULT NULL,
  `localidad` varchar(255) DEFAULT NULL,
  `cuit_cuil` varchar(255) DEFAULT NULL,
  `domicilio_fiscal` varchar(255) DEFAULT NULL,
  `domicilio_comercial` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `is_from_quick` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_21e310d0ac8149b15d44e8247e4` (`id_admin`),
  KEY `FK_7fddaf676dd11b7c77052c700cd` (`id_cliente`),
  CONSTRAINT `FK_21e310d0ac8149b15d44e8247e4` FOREIGN KEY (`id_admin`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` VALUES (1,'2022-11-28 19:37:51.144602','2024-05-16 17:40:01.639627','2023-12-13 11:14:23.000000','Abeja productora',4,1,2,NULL,NULL,NULL,NULL,NULL,NULL,0),(3,'2022-12-27 15:48:27.356223','2024-05-16 17:40:01.646173',NULL,'Corcho',4,1,2,NULL,NULL,NULL,NULL,NULL,NULL,0),(4,'2022-12-27 17:39:30.670676','2024-05-16 17:40:01.649480',NULL,'Lotus',4,2,2,NULL,NULL,NULL,NULL,NULL,NULL,0),(5,'2022-12-27 21:55:27.839269','2024-05-16 17:40:01.652077',NULL,'Taura',4,3,2,NULL,NULL,NULL,NULL,NULL,NULL,0),(6,'2022-12-27 21:56:03.496081','2024-05-16 17:40:01.656200',NULL,'Plaza Pichincha',4,4,2,NULL,NULL,NULL,NULL,NULL,NULL,0),(7,'2022-12-27 22:00:57.684357','2024-05-16 17:40:01.659397',NULL,'Sardo',4,5,2,NULL,NULL,NULL,NULL,NULL,NULL,0),(8,'2022-12-27 22:01:22.600152','2024-05-16 17:40:01.662661',NULL,'Abeja Srl',4,6,2,NULL,NULL,NULL,NULL,NULL,NULL,0),(9,'2022-12-27 22:01:33.546625','2024-05-16 17:40:01.666165',NULL,'Planta Alta',4,7,2,NULL,NULL,NULL,NULL,NULL,NULL,0),(10,'2022-12-27 22:01:43.101405','2024-05-16 17:40:01.669181',NULL,'Roses',4,8,2,NULL,NULL,NULL,NULL,NULL,NULL,0),(11,'2022-12-28 01:24:51.634788','2024-05-16 17:40:01.672232',NULL,'Plaza Los Morros',4,9,2,NULL,NULL,NULL,NULL,NULL,NULL,0),(14,'2023-01-22 22:11:52.943410','2024-05-16 17:40:01.675559','2023-12-13 11:14:52.000000','Agropecuario',4,10,2,NULL,NULL,NULL,NULL,NULL,NULL,0),(18,'2023-03-28 19:24:41.426099','2024-02-05 16:53:09.801392','2023-03-28 19:24:47.000000','asdasd',18,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(19,'2023-06-25 14:35:32.144753','2024-05-16 17:40:01.679776','2023-12-12 19:34:29.000000','Ossobuco',4,11,2,NULL,NULL,NULL,NULL,NULL,NULL,0),(20,'2023-11-10 13:30:58.386098','2024-02-06 15:34:57.000000',NULL,'Sobremesa Club',34,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(21,'2023-11-10 13:33:08.007477','2024-02-05 16:53:09.810141','2023-11-10 14:18:32.000000','asd',18,15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(22,'2023-12-06 14:25:48.026119','2024-05-16 17:40:01.683025',NULL,'Abeja',4,10,2,NULL,NULL,NULL,NULL,NULL,NULL,0),(23,'2023-12-21 18:00:35.406549','2024-02-15 13:22:58.000000',NULL,'Sa - it works',18,-1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(24,'2023-12-22 17:29:52.424700','2024-02-15 13:22:56.000000',NULL,'Empresa',18,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(25,'2023-12-23 11:50:02.614999','2024-05-16 17:40:01.687440',NULL,'Puerto Norte',4,11,2,NULL,NULL,NULL,NULL,NULL,NULL,0),(26,'2023-12-29 19:22:51.214742','2024-02-06 15:34:27.615898','2023-12-29 19:42:11.000000','Resto',37,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(146,'2024-09-11 19:18:00.802835','2024-10-18 19:49:52.602336',NULL,'new testing!!!!',NULL,18,2,NULL,NULL,NULL,NULL,NULL,NULL,1),(150,'2024-10-18 19:50:09.380934','2024-10-18 19:50:09.380934',NULL,'Lotus test',NULL,19,2,NULL,NULL,NULL,NULL,NULL,NULL,1),(157,'2024-12-20 16:26:41.276521','2024-12-20 16:26:41.276521',NULL,'tqr',NULL,20,2,NULL,NULL,NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresas_sistemas`
--

DROP TABLE IF EXISTS `empresas_sistemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empresas_sistemas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_empresa` int NOT NULL,
  `id_sistema` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_0964f253b80c00358b852383e44` (`id_empresa`),
  KEY `FK_20e932e66ef03783566254655d9` (`id_sistema`)
) ENGINE=InnoDB AUTO_INCREMENT=216 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresas_sistemas`
--

LOCK TABLES `empresas_sistemas` WRITE;
/*!40000 ALTER TABLE `empresas_sistemas` DISABLE KEYS */;
INSERT INTO `empresas_sistemas` VALUES (130,3,1),(132,25,1),(133,5,1),(134,7,2),(135,6,1),(170,4,1),(189,133,1),(190,134,1),(191,135,1),(192,136,1),(193,137,1),(194,138,1),(195,139,1),(197,141,1),(202,146,1),(203,147,1),(204,148,1),(205,148,2),(206,148,3),(207,149,1),(208,150,1),(209,151,1),(210,152,1),(211,153,1),(212,154,1),(213,155,1),(214,156,1),(215,157,1);
/*!40000 ALTER TABLE `empresas_sistemas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `intento_login`
--

DROP TABLE IF EXISTS `intento_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `intento_login` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha_creacion` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `fecha_actualizacion` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `fecha_borrado` datetime(6) DEFAULT NULL,
  `mail` varchar(255) NOT NULL,
  `estado` enum('INGRESO_EXITOSO','MAIL_NO_EXISTE','CONTRASEÑA_INCORRECTA') NOT NULL,
  `id_usuario` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_05c8fee1b21d832ea262bdfd254` (`id_usuario`),
  CONSTRAINT `FK_05c8fee1b21d832ea262bdfd254` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1274 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `intento_login`
--
--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `timestamp` bigint NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,1703707943846,'InitProyect1703707943846'),(4,1706885833182,'AddOrderToCompanies1706885833182'),(8,1712684879013,'AddAdministracionRol1712684879013'),(11,1713539792022,'AddColumnsToSystemsTable1713539792022'),(12,1713540431304,'CreateModulesTable1713540431304'),(15,1713541158801,'InsertSystemsInformation1713541158801'),(19,1713542025145,'InsertModulesInformation1713542025145'),(30,1713547128382,'CreateProfilesTable1713547128382'),(33,1713548725802,'InsertDefaultProfiles1713548725802'),(34,1713902442826,'CreateClientsTable1713902442826'),(35,1713903169862,'AddClientIdToUserTable1713903169862'),(36,1713903324359,'AddClientIdToCompaniesTable1713903324359'),(37,1713903792209,'CreateCompaniesSystemsTable1713903792209'),(38,1713903991745,'CreateUsersSystemsTable1713903991745'),(39,1713904139524,'CreateSytemsProfilesTable1713904139524'),(40,1713904294184,'CreateUsersSystemsProfiles1713904294184'),(43,1713968801703,'InsertProfilesSystems1713968801703'),(45,1713971700875,'InsertDefaultClients1713971700875'),(46,1714408381528,'UpdateCompaniesTable1714408381528'),(50,1714408381528,'AddColumnsToCompaniesTable1714408381528'),(51,1714423324143,'AddColumnsToUsersTable1714423324143'),(61,1714665874262,'CreateModulosAccionesTable1714665874262'),(62,1714666309652,'CreateModulosPerfilesAccionesTable1714666309652'),(63,1714666900972,'CreateModulosPerfilesTable1714666900972'),(64,1714673028792,'InsertModulosAcciones1714673028792'),(65,1714665874262,'ModulosAccionesTable1714665874262'),(67,1714678092978,'InsertModulosPerfilesAcciones1714678092978'),(76,1714678593384,'InsertModulosPerfiles1714678593384'),(81,1715175500508,'InsertSubmodules1715175500508'),(82,1715791533761,'AddColumnsToClientsTable1715791533761'),(84,1716305930520,'AddNeedModifyPasswordColumnIntoUsuarios1716305930520'),(86,1716559544032,'AddClientIdIntoProfilesTable1716559544032'),(88,1719940144798,'AddIsDevColumnInUsers1719940144798'),(90,1719940428604,'CreateDevUser1719940428604'),(91,1722540785974,'UpdateCompaniesColumns1722540785974'),(92,1722540797985,'UpdateClientsColumns1722540797985'),(93,1728934310859,'AddUnhashedPasswordValuesToUsers1728934310859'),(94,1729256908618,'AddIsQuickToCompaniesTable1729256908618'),(95,1733153293591,'AddAdminMultiEmpresasColumnOnUsersTable1733153293591'),(97,1733164251166,'AddReportActions1733164251166');
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modulos`
--

DROP TABLE IF EXISTS `modulos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modulos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `id_sistema` int NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  `url` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `parent_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fe0d4a802d25a902aea8ed8c5ac` (`id_sistema`),
  KEY `FK_d3460bfb4fd47d994b9806c18a4` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modulos`
--

LOCK TABLES `modulos` WRITE;
/*!40000 ALTER TABLE `modulos` DISABLE KEYS */;
INSERT INTO `modulos` VALUES (1,'Productos',2,0,'/productos','',NULL),(2,'Proveedores',2,0,'/proveedor','',NULL),(3,'Recetas',2,0,'/recetas','',NULL),(4,'Remitos',2,0,'/remitos','',NULL),(5,'Clientes',2,1,'/clientes','',NULL),(6,'Cotizaciones',2,1,'/cotizaciones','',NULL),(7,'Bromatologia',2,0,'/bromatologia','',NULL),(8,'Reportes',2,1,'/reportes','',NULL),(10,'Dashboards',1,1,'/','',NULL),(11,'Reportes',1,1,'/reportes','',NULL),(12,'Administración',1,1,'/administracion','',NULL),(13,'Cajas y bancos',1,1,'/cajas','',NULL),(41,'Categorias',2,1,'/productos/categorias','',1),(42,'Precios',2,1,'/productos/precios','',1),(43,'Categorias',2,1,'/recetas/categorias','',3),(44,'Categorias',2,1,'/cotizacion/categorias','',6),(45,'Productos',2,1,'/bromatologia/productos','',7),(46,'Remitos',2,1,'/bromatologia/remitos','',7),(47,'Inventario',2,1,'/reportes/inventario','',8),(48,'Punto minimo',2,1,'/reportes/punto-minimo','',8),(49,'Punto maximo',2,1,'/reportes/punto-maximo','',8),(55,'Empresas',1,1,'/empresas','',NULL),(56,'Estadisticas',1,1,'/estadisticas','',NULL),(57,'Clientes',3,0,'/clientes','',NULL),(58,'Usuarios',1,1,'/usuarios','',NULL),(59,'Cotizacion',1,1,'/cotizacion','',12),(60,'Categorias',1,1,'/categorias','',12),(61,'Inflacion',1,1,'/inflacion','',12),(63,'Clientes',1,1,'/clientes','',NULL),(64,'Proveedores',1,1,'/proveedores','',NULL),(65,'Cajas',1,1,'/cajas','',13),(66,'Movimientos',1,1,'/movimientos','',13),(67,'Comprobantes',1,1,'/comprobantes','',NULL),(68,'Stock',1,1,'/stock','',NULL),(69,'Administracion multiempresas',3,1,'/','',NULL),(70,'Cuentas',1,1,'/cuentas','',NULL),(71,'Cotizacion',1,1,'/cotizacion','',NULL),(72,'Inflacion',1,1,'/inflacion','',NULL),(73,'Productos',1,1,'/productos','',NULL),(74,'Transferencias entre cajas',1,1,'/transferencias-cajas','',NULL),(75,'Movimientos',1,1,'/movimientos','',NULL),(76,'Cajas',1,1,'/cajas','',NULL),(77,'Registro visitantes',1,1,'/registro-vistantes','',NULL);
/*!40000 ALTER TABLE `modulos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modulos_acciones`
--

DROP TABLE IF EXISTS `modulos_acciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modulos_acciones` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modulos_acciones`
--

LOCK TABLES `modulos_acciones` WRITE;
/*!40000 ALTER TABLE `modulos_acciones` DISABLE KEYS */;
INSERT INTO `modulos_acciones` VALUES (1,'listado'),(2,'crear'),(3,'modificar'),(4,'eliminar'),(13,'credenciales'),(24,'Cuentas por cobrar'),(25,'Cobros recibidos'),(26,'Perdidas y ganancias (cuentas agrupado)'),(27,'Cashflow'),(28,'Cajas'),(29,'Cajas detallado'),(30,'Cuentas patrimoniales agrupado'),(31,'Descuentos'),(32,'Cuentas por pagar'),(33,'Pagos realizados'),(35,'listado'),(36,'comprobantes'),(37,'comprobantes');
/*!40000 ALTER TABLE `modulos_acciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modulos_perfiles`
--

DROP TABLE IF EXISTS `modulos_perfiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modulos_perfiles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_sistemas_perfiles` int NOT NULL,
  `id_modulos_acciones` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_782f1cffe46644b61e5e4bdcb30` (`id_sistemas_perfiles`),
  KEY `FK_38afbe7dd34c2efc0d351dc4175` (`id_modulos_acciones`)
) ENGINE=InnoDB AUTO_INCREMENT=1456 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modulos_perfiles`
--

LOCK TABLES `modulos_perfiles` WRITE;
/*!40000 ALTER TABLE `modulos_perfiles` DISABLE KEYS */;
INSERT INTO `modulos_perfiles` VALUES (37,1,41),(38,1,42),(39,1,43),(40,1,44),(49,5,1),(50,5,2),(51,5,3),(52,5,4),(53,5,5),(54,5,6),(55,5,7),(56,5,8),(57,5,9),(58,5,10),(59,5,11),(60,5,12),(61,5,13),(62,5,14),(63,5,15),(64,5,16),(65,5,17),(66,5,18),(67,5,19),(68,5,20),(69,5,21),(70,5,22),(71,5,23),(72,5,24),(73,5,25),(74,5,26),(75,5,27),(76,5,28),(77,5,29),(78,5,30),(79,5,31),(80,5,32),(81,5,37),(82,5,38),(83,5,39),(84,5,40),(85,5,41),(86,5,42),(87,5,43),(88,5,44),(89,5,45),(90,5,46),(91,5,47),(92,5,48),(93,5,49),(94,5,50),(95,5,51),(96,5,52),(97,9,1),(98,9,2),(99,9,3),(100,9,4),(101,9,5),(102,9,6),(103,9,7),(104,9,8),(105,9,9),(106,9,10),(107,9,11),(108,9,12),(109,9,13),(110,9,14),(111,9,15),(112,9,16),(113,9,17),(114,9,18),(115,9,19),(116,9,20),(117,9,21),(118,9,22),(119,9,23),(120,9,24),(121,9,25),(122,9,26),(123,9,27),(124,9,28),(125,9,29),(126,9,30),(127,9,31),(128,9,32),(129,9,37),(130,9,38),(131,9,39),(132,9,40),(133,9,41),(134,9,42),(135,9,43),(136,9,44),(137,9,45),(138,9,46),(139,9,47),(140,9,48),(141,9,49),(142,9,50),(143,9,51),(144,9,52),(145,2,29),(146,2,30),(147,2,31),(148,2,32),(149,2,41),(150,2,42),(151,2,43),(152,2,44),(153,6,29),(154,6,30),(155,6,31),(156,6,32),(157,6,41),(158,6,42),(159,6,43),(160,6,44),(161,10,29),(162,10,30),(163,10,31),(164,10,32),(165,10,41),(166,10,42),(167,10,43),(168,10,44),(169,8,20),(170,8,19),(171,8,18),(172,8,17),(173,7,76),(174,7,75),(175,7,74),(176,7,73),(177,7,28),(178,7,27),(343,17,48),(346,17,45),(348,17,43),(349,17,42),(359,4,37),(360,4,45),(361,4,49),(362,19,37),(370,22,48),(371,22,47),(372,22,46),(373,22,45),(378,22,106),(379,22,105),(380,22,104),(381,22,103),(382,1,48),(383,1,47),(384,1,46),(385,1,45),(386,1,52),(387,1,51),(388,1,50),(389,1,49),(390,1,40),(391,1,39),(392,1,38),(393,1,37),(406,19,40),(407,19,39),(413,19,38),(427,19,117),(428,19,116),(429,19,115),(430,19,114),(924,18,174),(925,18,170),(926,18,166),(927,18,162),(928,18,158),(929,18,154),(930,18,150),(931,18,146),(932,18,138),(933,18,134),(934,18,122),(935,18,118),(936,18,97),(937,18,89),(938,18,85),(939,18,45),(940,18,41),(941,18,37),(942,18,33),(1054,18,187),(1055,18,186),(1056,18,185),(1057,18,184),(1058,18,183),(1059,18,182),(1060,18,181),(1061,18,180),(1062,18,179),(1063,18,178),(1064,18,177),(1065,18,176),(1066,18,164),(1067,18,163),(1068,18,161),(1069,18,157),(1070,18,156),(1071,18,155),(1072,18,159),(1073,18,175),(1074,18,173),(1075,18,172),(1076,18,171),(1077,18,160),(1078,18,153),(1079,18,152),(1080,18,151),(1081,18,149),(1082,18,148),(1083,18,147),(1084,18,141),(1085,18,168),(1086,18,167),(1087,18,169),(1088,18,139),(1089,18,140),(1090,18,136),(1091,18,137),(1092,18,135),(1093,18,124),(1094,18,125),(1095,18,165),(1096,18,123),(1097,18,101),(1098,18,119),(1099,18,99),(1100,18,100),(1101,18,98),(1102,18,91),(1103,18,92),(1104,18,120),(1105,18,121),(1106,18,86),(1107,18,87),(1108,18,47),(1109,18,46),(1110,18,48),(1111,18,43),(1112,18,44),(1113,18,88),(1114,18,90),(1115,18,34),(1116,18,35),(1117,18,42),(1118,18,36),(1348,19,177),(1349,19,176),(1350,19,175),(1351,19,174),(1352,19,173),(1353,19,172),(1354,19,171),(1355,19,170),(1356,19,169),(1357,19,168),(1358,19,167),(1359,19,166),(1360,19,165),(1361,19,164),(1362,19,163),(1363,19,162),(1364,19,161),(1365,19,160),(1366,19,159),(1367,19,158),(1368,19,157),(1369,19,156),(1370,19,155),(1371,19,154),(1372,19,153),(1373,19,152),(1374,19,151),(1375,19,150),(1376,19,149),(1377,19,148),(1378,19,147),(1379,19,146),(1380,19,141),(1381,19,140),(1382,19,139),(1383,19,138),(1384,19,137),(1385,19,136),(1386,19,135),(1387,19,134),(1388,19,125),(1389,19,124),(1390,19,123),(1391,19,122),(1392,19,121),(1393,19,120),(1394,19,119),(1395,19,118),(1396,19,100),(1397,19,99),(1398,19,98),(1399,19,97),(1400,19,92),(1401,19,91),(1402,19,90),(1403,19,89),(1404,19,88),(1405,19,87),(1406,19,86),(1407,19,85),(1408,19,48),(1409,19,47),(1410,19,46),(1411,19,45),(1412,19,44),(1413,19,43),(1414,19,42),(1415,19,41),(1416,19,189),(1417,19,36),(1418,19,35),(1419,19,34),(1420,19,33),(1421,19,133),(1422,19,132),(1423,19,131),(1424,19,130),(1425,19,129),(1426,19,128),(1427,19,127),(1428,19,126),(1429,19,113),(1430,19,112),(1431,19,111),(1432,19,110),(1437,19,105),(1438,19,104),(1439,19,103),(1440,19,102),(1441,19,191),(1442,19,190),(1443,19,182),(1444,19,181),(1445,19,185),(1446,19,183),(1447,19,190),(1448,19,191),(1449,19,184),(1450,19,187),(1451,19,186),(1452,19,179),(1453,19,178),(1454,19,101),(1455,19,180);
/*!40000 ALTER TABLE `modulos_perfiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modulos_perfiles_acciones`
--

DROP TABLE IF EXISTS `modulos_perfiles_acciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modulos_perfiles_acciones` (
  `id_modulo` int NOT NULL,
  `id_accion` int NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `FK_bb78a52026032fa2f0d5a947ef7` (`id_modulo`),
  KEY `FK_19ba481d9f792229f1a7ede803e` (`id_accion`)
) ENGINE=InnoDB AUTO_INCREMENT=192 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modulos_perfiles_acciones`
--

LOCK TABLES `modulos_perfiles_acciones` WRITE;
/*!40000 ALTER TABLE `modulos_perfiles_acciones` DISABLE KEYS */;
INSERT INTO `modulos_perfiles_acciones` VALUES (1,1,1),(1,2,2),(1,3,3),(1,4,4),(2,1,5),(2,2,6),(2,3,7),(2,4,8),(3,1,9),(3,2,10),(3,3,11),(3,4,12),(4,1,13),(4,2,14),(4,3,15),(4,4,16),(5,1,17),(5,2,18),(5,3,19),(5,4,20),(6,1,21),(6,2,22),(6,3,23),(6,4,24),(7,1,25),(7,2,26),(7,3,27),(7,4,28),(8,1,29),(8,2,30),(8,3,31),(8,4,32),(10,1,33),(10,2,34),(10,3,35),(10,4,36),(12,1,41),(12,2,42),(12,3,43),(12,4,44),(13,1,45),(13,2,46),(13,3,47),(13,4,48),(41,1,49),(41,2,50),(41,3,51),(41,4,52),(42,1,53),(42,2,54),(42,3,55),(42,4,56),(43,1,57),(43,2,58),(43,3,59),(43,4,60),(44,1,61),(44,2,62),(44,3,63),(44,4,64),(45,1,65),(45,2,66),(45,3,67),(45,4,68),(46,1,69),(46,2,70),(46,3,71),(46,4,72),(47,1,73),(47,2,74),(47,3,75),(47,4,76),(48,1,77),(48,2,78),(48,3,79),(48,4,80),(49,1,81),(49,2,82),(49,3,83),(49,4,84),(55,1,85),(55,2,86),(55,3,87),(55,4,88),(56,1,89),(56,2,90),(56,3,91),(56,4,92),(57,1,93),(57,2,94),(57,3,95),(57,4,96),(58,1,97),(58,2,98),(58,3,99),(58,4,100),(58,13,101),(59,1,102),(59,2,103),(59,3,104),(59,4,105),(60,1,106),(60,2,107),(60,3,108),(60,4,109),(61,1,110),(61,2,111),(61,3,112),(61,4,113),(62,1,114),(62,2,115),(62,3,116),(62,4,117),(63,1,118),(63,2,119),(63,3,120),(63,4,121),(64,1,122),(64,2,123),(64,3,124),(64,4,125),(65,1,126),(65,2,127),(65,3,128),(65,4,129),(66,1,130),(66,2,131),(66,3,132),(66,4,133),(67,1,134),(67,2,135),(67,3,136),(67,4,137),(68,1,138),(68,2,139),(68,3,140),(68,4,141),(69,1,142),(69,2,143),(69,3,144),(69,4,145),(70,1,146),(70,2,147),(70,3,148),(70,4,149),(71,1,150),(71,2,151),(71,3,152),(71,4,153),(72,1,154),(72,2,155),(72,3,156),(72,4,157),(73,1,158),(73,2,159),(73,3,160),(73,4,161),(74,1,162),(74,2,163),(74,3,164),(74,4,165),(75,1,166),(75,2,167),(75,3,168),(75,4,169),(76,1,170),(76,2,171),(76,3,172),(76,4,173),(77,1,174),(77,2,175),(77,3,176),(77,4,177),(11,24,178),(11,25,179),(11,26,180),(11,27,181),(11,28,182),(11,29,183),(11,30,184),(11,31,185),(11,32,186),(11,33,187),(11,34,188),(11,35,189),(63,36,190),(64,37,191);
/*!40000 ALTER TABLE `modulos_perfiles_acciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfiles`
--

DROP TABLE IF EXISTS `perfiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perfiles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_actualizacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_borrado` timestamp NULL DEFAULT NULL,
  `id_cliente` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_c6feaf2614fbe923cac4145526f` (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfiles`
--

LOCK TABLES `perfiles` WRITE;
/*!40000 ALTER TABLE `perfiles` DISABLE KEYS */;
INSERT INTO `perfiles` VALUES (5,'Admin','2024-04-23 20:18:17','2024-04-23 20:18:17',NULL,NULL),(6,'Reportes','2024-04-23 20:18:17','2024-04-23 20:18:17',NULL,NULL),(7,'Admin empresa','2024-04-23 20:18:17','2024-04-23 20:18:17',NULL,NULL),(8,'Usuario estandar','2024-04-23 20:18:17','2024-04-23 20:18:17',NULL,NULL),(44,'test nuevo perfil','2024-05-17 13:38:28','2024-05-17 13:38:28',NULL,2),(45,'Prueba','2024-05-22 16:26:06','2024-05-22 16:26:06',NULL,2),(46,'Con cliente id','2024-05-24 14:32:06','2024-05-24 14:32:06',NULL,2),(47,'test','2024-05-24 14:40:15','2024-05-24 14:40:15',NULL,2),(48,'another one','2024-05-24 14:41:03','2024-05-24 14:41:03',NULL,2),(49,'Solo ver','2024-05-24 14:43:16','2024-11-29 20:05:36',NULL,2);
/*!40000 ALTER TABLE `perfiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sistema`
--

DROP TABLE IF EXISTS `sistema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sistema` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha_creacion` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `fecha_actualizacion` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `fecha_borrado` datetime(6) DEFAULT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text,
  `logo` varchar(255) NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sistema`
--

LOCK TABLES `sistema` WRITE;
/*!40000 ALTER TABLE `sistema` DISABLE KEYS */;
INSERT INTO `sistema` VALUES (1,'2023-03-17 14:43:23.402425','2024-04-19 15:51:05.445802',NULL,'Finanzas','Aplicacion finanzas','logo-book',1,'/book'),(2,'2024-04-19 15:51:05.000000','2024-04-19 15:51:21.367193',NULL,'Resto','App resto','logo-resto',1,'/resto'),(3,'2024-04-19 15:51:05.000000','2024-04-19 15:51:21.369572',NULL,'Quick','App quick','logo-quick',1,'/');
/*!40000 ALTER TABLE `sistema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sistemas_perfiles`
--

DROP TABLE IF EXISTS `sistemas_perfiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sistemas_perfiles` (
  `id_perfil` int NOT NULL,
  `id_sistema` int NOT NULL DEFAULT '1',
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `FK_fe1beec10ceb369c65f448c171c` (`id_perfil`),
  KEY `fk_sistema_id` (`id_sistema`),
  CONSTRAINT `fk_sistema_id` FOREIGN KEY (`id_sistema`) REFERENCES `sistema` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sistemas_perfiles`
--

LOCK TABLES `sistemas_perfiles` WRITE;
/*!40000 ALTER TABLE `sistemas_perfiles` DISABLE KEYS */;
INSERT INTO `sistemas_perfiles` VALUES (5,2,1),(6,2,2),(7,2,3),(8,2,4),(5,2,5),(6,2,6),(7,2,7),(8,2,8),(5,2,9),(6,2,10),(7,2,11),(8,2,12),(44,1,13),(45,1,14),(46,1,15),(47,1,16),(48,1,17),(49,1,18),(5,1,19),(6,1,20),(7,1,21),(8,1,22);
/*!40000 ALTER TABLE `sistemas_perfiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha_creacion` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `fecha_actualizacion` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `fecha_borrado` datetime(6) DEFAULT NULL,
  `nombre_completo` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `id_admin` int DEFAULT NULL,
  `id_tipo_usuario` int DEFAULT NULL,
  `id_cliente` int DEFAULT NULL,
  `unhashed_password` varchar(255) NOT NULL,
  `needs_password_change` tinyint(1) NOT NULL DEFAULT '0',
  `is_developer` tinyint(1) NOT NULL DEFAULT '0',
  `is_admin_multi_company` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_1961b44873a11fcc9640c381834` (`id_tipo_usuario`),
  KEY `FK_73af0d88925516bb48f476042c8` (`id_cliente`),
  CONSTRAINT `FK_1961b44873a11fcc9640c381834` FOREIGN KEY (`id_tipo_usuario`) REFERENCES `acl_tipo_usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=246 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (4,'2022-11-29 00:00:00.000000','2024-12-02 15:29:39.952377',NULL,'rodrigo','rodrigo@tqr.com','$2a$10$spUwMXuzOHiC9NFoUMxm5.YOUi2jz6/NwqS88munRQrqSM1..5Mz2',NULL,2,2,'tumalditamadre123',0,0,1),(18,'2022-11-29 00:00:00.000000','2024-10-14 19:36:05.140560',NULL,'sa','sa@tqr.com','$2a$10$L1C0X7KZQ0xF23pQqmq75.TVP8h3AvFTUNoPRO91Rre/OxoL8eDom',NULL,1,1,'TQRsa18',0,0,0),(19,'2023-12-29 20:30:36.873368','2024-10-14 19:36:05.140560',NULL,'resto','resto@tqr.com','$2a$10$7cEkmwsSnXR71hrr2Ef1meFqd2HhMDOe08pXCNeJWwK57FiD4QVBu',NULL,2,NULL,'TQRresto19',0,0,0),(20,'2023-03-28 17:56:10.063036','2024-10-14 19:36:05.140560',NULL,'prueba1','prueba1@tqr.com','$2a$10$I9N968tGgKXxMOBNEz8.VuJWG/wAJA1a3d50RMh18tjWUcUL85F3q',19,3,NULL,'TQRprueba120',0,0,0),(21,'2023-03-28 18:15:42.222338','2024-10-28 19:06:19.564688',NULL,'Belen Massera','belenmassera@gmail.com','$2a$10$KVoB0q9b2JAT0isyQsnXHu./640t9HKJGUDUvoCbyhe01guuCNPAS',4,3,2,'TQRBelenMassera21',0,0,0),(22,'2023-03-28 18:23:44.252242','2024-10-28 19:06:19.575294',NULL,'Ramiro Aldaz','ramaaldaz@gmail.com','$2a$10$sxQ5zcNqOHDdy.MUxMI3t.Av9Rj1eyWAuKkd2FpK17bZhdfMkTD6G',4,3,2,'TQRRamiroAldaz22',0,0,0),(23,'2023-04-04 01:02:08.546752','2024-10-28 19:06:19.580870',NULL,'Jorgito Cura','jtcura@gmail.com','$2a$10$W9o96QKETF6boAw3j//nFuAKzqjTumhKcwV2Hc92JT9QQ8mHPS0lK',4,3,2,'TQRJorgitoCura23',0,0,0),(24,'2023-04-14 11:07:43.088363','2024-10-28 19:06:19.585060',NULL,'Jorge Cura','jorgeenriquecura@gmail.com','$2a$10$npj6jBMGRlBbeGVcnXJDzu./3vgG3FXbQAb4Xa66BRZxmCeN/cnFG',4,3,2,'TQRJorgeCura24',0,0,0),(25,'2023-04-18 12:39:46.957372','2024-10-14 19:36:05.140560',NULL,'pruebaver','pruebaver@gmail.com','$2a$10$bbVF9R3Iqd5zI.cRqXje0.k33hwIkG7z2PKzyGmKnLGwo0Wn8mMAO',19,3,NULL,'TQRpruebaver25',0,0,0),(26,'2023-04-18 12:40:01.589523','2024-10-14 19:36:05.140560',NULL,'Pruebaedit','pruebaedit@gmail.com','$2a$10$I8XZ/3aEZcp.fqMCdD1Hyu1QkI4LBhojKEQMhxDxNQL9a7vpHaDr.',19,3,NULL,'TQRPruebaedit26',0,0,0),(27,'2023-04-19 16:57:41.950606','2024-10-28 19:06:19.588701',NULL,'Federico Semino','federicosemino@me.com','$2a$10$mcnwACrbLQZx.ro4weHCj.S.FynhwGPC/H27PLjY2gykC1iQXIQra',4,3,2,'TQRFedericoSemino27',0,0,0),(28,'2023-04-19 20:46:52.563077','2024-10-28 19:06:19.594220',NULL,'Marco Ceroi','marcoceroi@hotmail.com','$2a$10$hOZOW6ayGBebHYyEbKxmP.9Z8RoLbY7jTRzOeGDZo7QR1N7lV9026',4,3,2,'TQRMarcoCeroi28',0,0,0),(29,'2023-05-09 12:59:37.574080','2024-10-14 19:36:05.140560',NULL,'carga','carga@tqr.com','$2a$10$Eo5r4n8J7YGF/fgu4/NapOaF418FTyhGAj0tT9Poc928k9mUTB.pK',19,3,NULL,'TQRcarga29',0,0,0),(30,'2023-05-11 13:49:48.775226','2024-10-28 19:06:19.600529',NULL,'Julián Tunez','juliantunezmaiden@gmail.com','$2a$10$luIJqxBII26xFKxvVYPzYepKMy1p7W5DhbHgGz7aPJKApxfHrJZEm',4,3,2,'TQRJuliánTunez30',0,0,0),(31,'2023-05-30 16:29:09.272054','2024-10-28 19:06:19.604315',NULL,'Pato Vidal','patorvidal@gmail.com','$2a$10$2Ky6FxF5RGeVXIx6dfNjQOBwKOaLF5eYdC/tgxgwvwBLuWQPba2pe',4,3,2,'TQRPatoVidal31',0,0,0),(32,'2023-06-02 01:26:17.701956','2024-10-28 19:06:19.611861',NULL,'Matías Cura','matiasrcura@gmail.com','$2a$10$P9XCoUBvzGLkoa2b0MwxTur/aXipMGIcJg1B0S6SZ92575eXfNCfe',4,3,2,'TQRMatíasCura32',0,0,0),(33,'2023-08-28 16:36:43.055895','2024-10-28 19:06:19.618163',NULL,'Nicolas Roses','nicolasroses199412@gmail.com','$2a$10$VLwZkC5aqk6hUc4T66JKZOW/3AVqkJDjzyfhpxW5eXA1Rr2OE3WkK',4,3,2,'TQRNicolasRoses33',0,0,0),(34,'2023-11-10 13:01:25.565546','2024-10-14 19:36:05.140560',NULL,'Sobremesa','smclub@gmail.com','$2a$10$FOSKbgVj5ZlnDaTofuk3beOIIbe5QemOX4/9Kgq5i3rUeHVs.NgVy',NULL,2,NULL,'TQRSobremesa34',0,0,0),(35,'2023-11-10 13:44:23.967479','2024-10-14 19:36:05.140560',NULL,'ms','marianosmclub@gmail.com','$2a$10$Mj7z2.MFk.PzQLCiG7tKhuP7FkjUdyx2GKflwuqZXLIjSXucPgkt.',34,3,NULL,'TQRms35',0,0,0),(36,'2023-12-01 21:58:22.289396','2024-10-28 19:06:19.623018',NULL,'Nicolás Lucero ','niconicolas2310@gmail.com','$2a$10$o3/rmf39Uv3/QlPATvGbKu6C73oUNjE347X.oXHxwqvRWZkFfFBeC',4,3,2,'TQRNicolásLucero 36',0,0,0),(37,'2023-12-29 19:21:30.612900','2024-10-14 19:36:05.140560',NULL,'Resto','resto@tqr.com','$2a$10$DkTCu.TJIadokN3a12OLQez4VKy75bgPO9/nBdExVyBZCqhal6pLW',NULL,2,NULL,'TQRResto37',0,0,0),(38,'2024-01-24 15:26:47.558903','2024-10-28 19:06:19.627247',NULL,'Rodrigo Pujol','rjpujol@gmail.com','$2a$10$t1ReZn7RgEJBX/NmkhYtBeEU6XkUqd.4Km4IMYJVO7poXW7NRAJsi',4,3,2,'TQRRodrigoPujol38',0,0,0),(39,'2024-02-06 12:57:50.851093','2024-10-14 19:36:05.140560',NULL,'vg','vg@books.la','$2a$10$q3W0qPsZBOPIbvikkd5HUOmVGwavJ2xByd/lGLenl43jOmqeECYDG',NULL,2,3,'TQRvg39',0,0,0),(40,'2024-03-05 18:23:31.528591','2024-10-28 19:06:19.631315',NULL,'Magali Macedro','magalimacedro@gmail.com','$2a$10$rpVY3xLsEqVe4j274Sah4eiSjA5yXktU2L2cpV0YO.ArArbXE9zp6',4,3,2,'TQRMagaliMacedro40',0,0,0),(41,'2024-03-15 17:02:01.510432','2024-10-28 19:06:19.634480',NULL,'Mario Cura','mariojcura@gmail.com','$2a$10$EtL015OMSQio0nTRFyFfVOb2JGgZr0UMsL5BnJaXIMdhLyxFKFltC',4,3,2,'TQRMarioCura41',0,0,0),(42,'2024-03-29 12:36:37.630652','2024-10-28 19:06:19.637787',NULL,'Facundo Lopez','lopezfacundo@gmail.com','$2a$10$Ru.zuCyxZSfM4Xc00FVuO.romCX79yybKK2jATuKDSrk0QGwujw7.',4,3,2,'TQRFacundoLopez42',0,0,0),(43,'2024-09-12 21:46:38.403205','2024-09-12 21:46:38.403205',NULL,'developer','developer@tqr.la','$2a$10$JFOf6MnSx6rSE8LC5o/.5OHFvRjsW/YP8hiSTjK4ay8uhLGDMAcTS',NULL,NULL,NULL,'DevPAS$123!TQR',0,1,0),(45,'2024-09-16 21:53:13.790484','2024-10-18 19:50:09.000000',NULL,'Belen','belen@tqr.la','$2a$10$qgFIXFiUZLR51Kmhj3BtYuZWZtOMNTwnfVMrKa0bVVxZYi9k9gpFO',NULL,NULL,NULL,'TQRBelen45',0,0,0),(46,'2024-09-19 21:56:43.265331','2024-09-19 21:57:13.000000',NULL,'tqr-admin','admin-tqr@tqr.la','$2a$10$4F0fJDY0iMw10h9mjwOHZuYDc9CSraCyHId4YtwFSQO/DIczY1jd2',NULL,NULL,4,'z4p4y1t0',0,0,0),(47,'2024-09-19 21:56:43.423141','2024-09-19 21:56:43.423141',NULL,'tqr-reportes','reportes-tqr@tqr.la','$2a$10$RhkbbUZr7BMdVcsNcjuSdeCqqlfOw/R2pH6i3a1EM0wIzdMijqhkq',NULL,NULL,4,'PAS$-tqrreportes-4',1,0,0),(48,'2024-09-19 21:56:43.582588','2024-09-19 21:56:43.582588',NULL,'tqr-admin-empresa','admin-empresa-tqr@tqr.la','$2a$10$wZimB4657KlxRgmz/XB6aeFCieMD23VLOzky7Sr1v9o602NH/LT.a',NULL,NULL,4,'PAS$-tqradmin-empresa-4',1,0,0),(49,'2024-09-19 21:56:43.743991','2024-09-19 21:56:43.743991',NULL,'tqr-usuario-estandar','usuario-estandar-tqr@tqr.la','$2a$10$UjAJIEdVnEcjW/zLfoBqM.dIh8qhO7xrD56y2bobUYs9FFLJsffTa',NULL,NULL,4,'PAS$-tqrusuario-estandar-4',1,0,0),(50,'2024-09-19 21:56:43.888473','2024-09-19 21:56:43.888473',NULL,'tqr-admin','admin-tqr@tqr.la','$2a$10$zBgTgLI8cBztA.7DNKSQ4.O4jjnpwg6Qunfu7rnfcSRKZcSXqRB7q',NULL,NULL,4,'PAS$-tqradmin-4',1,0,0),(51,'2024-09-19 21:56:44.042017','2024-09-19 21:56:44.042017',NULL,'tqr-reportes','reportes-tqr@tqr.la','$2a$10$PzF9uJCEov/bdE8.W3d5COWr5ipHMqVVR/336/Dp22mj6OOn5vVhq',NULL,NULL,4,'PAS$-tqrreportes-4',1,0,0),(52,'2024-09-19 21:56:44.190044','2024-09-19 21:56:44.190044',NULL,'tqr-admin-empresa','admin-empresa-tqr@tqr.la','$2a$10$7UsHU0RxdddrWpvM5bBt5OxiRbP2KwcTYAzLbtiD9hk1kYxwGVNka',NULL,NULL,4,'PAS$-tqradmin-empresa-4',1,0,0),(53,'2024-09-19 21:56:44.334078','2024-09-19 21:56:44.334078',NULL,'tqr-usuario-estandar','usuario-estandar-tqr@tqr.la','$2a$10$WUNXauXkONs2Qff6mUeQZO.pTQYO9HbN6GSinq8rS/ureU.UeDuqG',NULL,NULL,4,'PAS$-tqrusuario-estandar-4',1,0,0),(63,'2024-04-09 14:46:46.007342','2024-10-14 19:36:05.140560',NULL,'test1','test1@gmail.com','$2a$10$uJlnMmFq1mBlSCbADTcDnO8G4t403LlslcQw.U5OFd5s.dO166Ez.',18,3,NULL,'TQRtest163',0,0,0),(211,'2024-06-13 14:51:33.683196','2024-06-13 14:59:51.000000',NULL,'test-admin','admin-test@tqr.la','$2a$10$dE4OLJh0fq17912jo3L6Wul0p4DhebTE0VZuE63RWqkVWdxQkXkUO',NULL,NULL,59,'test',0,0,0),(212,'2024-06-13 14:51:33.788684','2024-06-13 14:51:33.788684',NULL,'test-reportes','reportes-test@tqr.la','$2a$10$0d3k3ZhVYpkGNUp6Tx5OUOfJGaufKmQiMzCX0Q5gVZYxJHS5s8WPC',NULL,NULL,59,'PAS$-testreportes-59',1,0,0),(213,'2024-06-13 14:51:33.888765','2024-06-13 14:51:33.888765',NULL,'test-admin-empresa','admin-empresa-test@tqr.la','$2a$10$/hrIon2OC7WYMxYcpEj/mehjnkiczdoatetYCTjnP.2/ONh0o0.9C',NULL,NULL,59,'PAS$-testadmin-empresa-59',1,0,0),(214,'2024-06-13 14:51:33.991423','2024-06-13 14:51:33.991423',NULL,'test-usuario-estandar','usuario-estandar-test@tqr.la','$2a$10$fCqOjO1gkrFOLy/lKnokietcXP5HzozS4tdF4N/A5LQ6ZDZ1aTMuG',NULL,NULL,59,'PAS$-testusuario-estandar-59',1,0,0),(220,'2024-07-02 17:30:30.183042','2024-07-02 17:30:30.183042',NULL,'developer','developer@tqr.la','$2a$10$ai9YZEMUoKVPNTlY0d/6Z.NxGBl6QU02pxYBGRdHONg1ZilpuRwBe',NULL,NULL,NULL,'DevPAS$123!TQR',0,1,0),(221,'2024-09-10 17:34:00.642951','2024-09-10 17:34:00.642951',NULL,'testttt-admin','admin-testttt@tqr.la','$2a$10$K7WLIoiLcgvujJp7KbiMnecaXur50B.cQNFLOdTTI4meXRLcFBFCG',NULL,NULL,61,'PAS$-testtadmin-61',1,0,0),(222,'2024-09-10 17:34:00.762658','2024-09-10 17:34:00.762658',NULL,'testttt-reportes','reportes-testttt@tqr.la','$2a$10$eNnND8QQADAGsN3xX9H6NepdaWfBNmVIH8PNMmDdzyiFfE8bqNqra',NULL,NULL,61,'PAS$-testtreportes-61',1,0,0),(223,'2024-09-10 17:34:00.852822','2024-09-10 17:34:00.852822',NULL,'testttt-admin-empresa','admin-empresa-testttt@tqr.la','$2a$10$ssZYdYWGc8W0LU9ZHoDQ3OkJs.BaLgUJv8CF7hLS0bJkchYrz9x2y',NULL,NULL,61,'PAS$-testtadmin-empresa-61',1,0,0),(224,'2024-09-10 17:34:00.941136','2024-09-10 17:34:00.941136',NULL,'testttt-usuario-estandar','usuario-estandar-testttt@tqr.la','$2a$10$IveHgjlmPq1PrSUxYmFx1OuGjIKoJ/9NzDGxgM1sIadz14sDkghiO',NULL,NULL,61,'PAS$-testtusuario-estandar-61',1,0,0),(225,'2024-09-10 18:11:28.564575','2024-09-10 18:12:17.000000',NULL,'nuevo-cliente-prueba-no??-admin','admin-nuevo-cliente-prueba-no??@tqr.la','$2a$10$V2heAY7fEc451ir6ih9Yw.ixWPxcWTdSV1hETlYUxWLpwXKIcV/Ny',NULL,NULL,62,'TQRTESTFORNOW',0,0,0),(226,'2024-09-10 18:11:28.652336','2024-09-10 18:11:28.652336',NULL,'nuevo-cliente-prueba-no??-reportes','reportes-nuevo-cliente-prueba-no??@tqr.la','$2a$10$TvyHrxVDxyWvF2NKMToQo.zo8TLnc9lD34qd7nQylBvRzIRqn3ly2',NULL,NULL,62,'PAS$-nuevoreportes-62',1,0,0),(227,'2024-09-10 18:11:28.738255','2024-09-10 18:11:28.738255',NULL,'nuevo-cliente-prueba-no??-admin-empresa','admin-empresa-nuevo-cliente-prueba-no??@tqr.la','$2a$10$tBErTcZreRVPMkiir/Vs9OZXIB/jTyusvyWlQOsWjt.tIAljEUdCG',NULL,NULL,62,'PAS$-nuevoadmin-empresa-62',1,0,0),(228,'2024-09-10 18:11:28.827356','2024-09-10 18:11:28.827356',NULL,'nuevo-cliente-prueba-no??-usuario-estandar','usuario-estandar-nuevo-cliente-prueba-no??@tqr.la','$2a$10$5./ycD87H1qaRNNLCFpoCeLYlBr8bbCJ1krNjwZtbA3D.3dxfIAHG',NULL,NULL,62,'PAS$-nuevousuario-estandar-62',1,0,0),(229,'2024-09-10 18:13:24.347534','2024-09-10 18:13:35.000000',NULL,'prueba-admin','admin-prueba@tqr.la','$2a$10$zzQTwUeo7APMYj2GBvMgxeNRsgcSyMXSYdXKXegyqJ/I9YRoAyFSC',NULL,NULL,63,'TQRTESTFORNOW',0,0,0),(230,'2024-09-10 18:13:24.436106','2024-09-10 18:13:24.436106',NULL,'prueba-reportes','reportes-prueba@tqr.la','$2a$10$REEHbaORgr/5FVTGx79XGO2ayZlcCWDkTz9EV12rNEazCLwB4tu02',NULL,NULL,63,'PAS$-pruebreportes-63',1,0,0),(231,'2024-09-10 18:13:24.524923','2024-09-10 18:13:24.524923',NULL,'prueba-admin-empresa','admin-empresa-prueba@tqr.la','$2a$10$rzw4q27qY9pMo.8X7mXEruASnYJuSpqIdMaeP2v.JilwfUMlPhaoe',NULL,NULL,63,'PAS$-pruebadmin-empresa-63',1,0,0),(232,'2024-09-10 18:13:24.611123','2024-09-10 18:13:24.611123',NULL,'prueba-usuario-estandar','usuario-estandar-prueba@tqr.la','$2a$10$5IK/kMQIjfr6w7mYFhDiYudwEiR5GXw6j9fOoo0ifiK3XbezG1jU.',NULL,NULL,63,'PAS$-pruebusuario-estandar-63',1,0,0),(233,'2024-09-10 19:26:28.194888','2024-09-10 21:44:51.000000',NULL,'testtesttesst-admin','admin-testtesttesst@tqr.la','$2a$10$x9GXMTP6vw.h2v6JPMSF2uDhesVq0n2cGeeLHX7NrBxkrQ6x.3RWK',NULL,NULL,64,'TQRsa18244',0,0,0),(234,'2024-09-10 19:26:28.294417','2024-09-10 19:26:28.294417',NULL,'testtesttesst-reportes','reportes-testtesttesst@tqr.la','$2a$10$rgGvB6DbWTN3WVZIV6gh/.XMnxNaYbHV/jiO8y0tOWopceevhgYmO',NULL,NULL,64,'PAS$-testtreportes-64',1,0,0),(235,'2024-09-10 19:26:28.385720','2024-09-10 19:26:28.385720',NULL,'testtesttesst-admin-empresa','admin-empresa-testtesttesst@tqr.la','$2a$10$VNTNrC2/0S2sFhaxelBCqOgekPHv5liIqOBrWR8I5Adw2pWdx.sB2',NULL,NULL,64,'PAS$-testtadmin-empresa-64',1,0,0),(236,'2024-09-10 19:26:28.472860','2024-09-10 19:26:28.472860',NULL,'testtesttesst-usuario-estandar','usuario-estandar-testtesttesst@tqr.la','$2a$10$5YD0d7UyrxmXCkr4OtgRmO/6XWprX5F.3eXqz74r8uJZJG6Da1P2G',NULL,NULL,64,'PAS$-testtusuario-estandar-64',1,0,0),(237,'2024-09-11 12:01:40.595798','2024-09-11 12:02:03.000000',NULL,'new-testing-client-admin','admin-new-testing-client@tqr.la','$2a$10$byrDAwfRSXlrNcRXI2Bac.mfM.1HPqQSAqo0WSMDEhHdb46G.edfi',NULL,NULL,65,'TQRsa18244',0,0,0),(238,'2024-09-11 12:01:40.701816','2024-09-11 12:01:40.701816',NULL,'new-testing-client-reportes','reportes-new-testing-client@tqr.la','$2a$10$.1p/L4EhKfpDZkBySwJiBOgrApLMn8W3pnYw4url/jSxv5yuskkBW',NULL,NULL,65,'PAS$-new-treportes-65',1,0,0),(239,'2024-09-11 12:01:40.788725','2024-09-11 12:01:40.788725',NULL,'new-testing-client-admin-empresa','admin-empresa-new-testing-client@tqr.la','$2a$10$2es4eVZds8MrXuBMaO/JieeC9lDEIPzUHwLv47/Cppfum6Ru2ZJIi',NULL,NULL,65,'PAS$-new-tadmin-empresa-65',1,0,0),(240,'2024-09-11 12:01:40.884049','2024-09-11 12:01:40.884049',NULL,'new-testing-client-usuario-estandar','usuario-estandar-new-testing-client@tqr.la','$2a$10$vFAWmhMvhhA64vwiH8JZzuRcm0/BU1oWSqj4UyBCfyxTI9PfjvN5q',NULL,NULL,65,'PAS$-new-tusuario-estandar-65',1,0,0),(241,'2024-09-16 18:23:56.333241','2024-10-15 13:35:00.000000',NULL,'new-client-test-admin','admin-new-client-test@tqr.la','$2a$10$fhzdGjiX/exU7qkJ3fJoI.z3nj1qTgE3WMD8lVHZkV8HnzKXEDhBS',NULL,NULL,NULL,'DevPAS$123!TQR',0,0,0),(242,'2024-09-16 18:23:56.447919','2024-10-15 13:35:00.000000',NULL,'new-client-test-reportes','reportes-new-client-test@tqr.la','$2a$10$2bUoQ1Y/USBI7XTQYbwB1u4mU7rXcReyUOBKYta2p0nZMNtNCcPuu',NULL,NULL,NULL,'PAS$-new-creportes-66',1,0,0),(243,'2024-09-16 18:23:56.554691','2024-10-15 13:35:00.000000',NULL,'new-client-test-admin-empresa','admin-empresa-new-client-test@tqr.la','$2a$10$/igSl4xHYCLt9LE5R2pjb.mME7vl9sDYxzSnsf/fcgTNAna6byoIG',NULL,NULL,NULL,'PAS$-new-cadmin-empresa-66',1,0,0),(244,'2024-09-16 18:23:56.644090','2024-10-15 13:35:00.000000',NULL,'new-client-test-usuario-estandar','usuario-estandar-new-client-test@tqr.la','$2a$10$OCcfMHpdaGCLRp1lDYO1AugKdqP/WT96QakfSbIQEhCDobOnEyOdS',NULL,NULL,NULL,'DevPAS$123!TQR',0,0,0),(245,'2024-11-06 17:32:58.525791','2024-11-29 20:07:43.000000',NULL,'prueba nuevo user','testuser@gmail.com','$2a$10$PuUpNomtWSB2Pu2K3aq7F.09VMe7BrPYj4kwzJuI51ZfxkXRpqwG2',NULL,NULL,2,'testtest12345',0,0,0);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_empresa_accion`
--

DROP TABLE IF EXISTS `usuario_empresa_accion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario_empresa_accion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha_creacion` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `fecha_actualizacion` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `fecha_borrado` datetime(6) DEFAULT NULL,
  `id_usuario` int DEFAULT NULL,
  `id_empresa` int DEFAULT NULL,
  `id_accion` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_f9e24356d053a24eb986d3e6218` (`id_usuario`),
  KEY `FK_9bedb4e780e76b1c052e588eb19` (`id_empresa`),
  KEY `FK_be6fb2c4c778eee73d2d1208b1b` (`id_accion`),
  CONSTRAINT `FK_9bedb4e780e76b1c052e588eb19` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id`),
  CONSTRAINT `FK_be6fb2c4c778eee73d2d1208b1b` FOREIGN KEY (`id_accion`) REFERENCES `acl_accion` (`id`),
  CONSTRAINT `FK_f9e24356d053a24eb986d3e6218` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_empresa_accion`
--

LOCK TABLES `usuario_empresa_accion` WRITE;
/*!40000 ALTER TABLE `usuario_empresa_accion` DISABLE KEYS */;
INSERT INTO `usuario_empresa_accion` VALUES (2,'2023-05-30 14:08:28.419277','2023-05-30 14:08:28.419277',NULL,21,3,1),(3,'2023-05-30 14:08:39.364360','2023-05-30 14:08:39.364360',NULL,21,6,1),(4,'2023-05-30 14:08:54.325462','2023-05-30 14:08:54.325462',NULL,21,7,1),(5,'2023-05-30 14:09:02.511734','2023-05-30 14:09:02.511734',NULL,21,8,1),(6,'2023-05-30 14:09:12.333455','2023-05-30 14:09:12.333455',NULL,21,9,1),(7,'2023-05-30 14:09:20.215646','2023-05-30 14:09:20.215646',NULL,21,10,1),(8,'2023-05-30 14:09:31.176320','2023-05-30 14:09:31.176320',NULL,21,11,1),(9,'2024-04-09 14:47:11.270754','2024-04-09 14:47:11.270754',NULL,63,23,1);
/*!40000 ALTER TABLE `usuario_empresa_accion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_empresa_sistema_rol`
--

DROP TABLE IF EXISTS `usuario_empresa_sistema_rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario_empresa_sistema_rol` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha_creacion` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `fecha_actualizacion` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `fecha_borrado` datetime(6) DEFAULT NULL,
  `id_usuario` int DEFAULT NULL,
  `id_empresa` int NOT NULL,
  `id_rol` int NOT NULL,
  `id_sistema` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_eb440c2ca3af577a3083e8f8063` (`id_usuario`),
  KEY `FK_c6e0c6cb99fae1098c09650e1b5` (`id_empresa`),
  KEY `FK_07b7cd608650ead0eda08ddb648` (`id_rol`),
  KEY `FK_c702d1ddb1c6cc30079609df8cc` (`id_sistema`),
  CONSTRAINT `FK_07b7cd608650ead0eda08ddb648` FOREIGN KEY (`id_rol`) REFERENCES `acl_rol` (`id`),
  CONSTRAINT `FK_c6e0c6cb99fae1098c09650e1b5` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id`),
  CONSTRAINT `FK_c702d1ddb1c6cc30079609df8cc` FOREIGN KEY (`id_sistema`) REFERENCES `sistema` (`id`),
  CONSTRAINT `FK_eb440c2ca3af577a3083e8f8063` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_empresa_sistema_rol`
--

LOCK TABLES `usuario_empresa_sistema_rol` WRITE;
/*!40000 ALTER TABLE `usuario_empresa_sistema_rol` DISABLE KEYS */;
INSERT INTO `usuario_empresa_sistema_rol` VALUES (4,'2023-03-28 18:16:42.016327','2023-03-28 18:16:42.016327',NULL,21,3,4,1),(5,'2023-03-28 18:17:25.990863','2023-03-28 18:17:25.990863','2023-03-28 18:28:16.000000',21,1,4,1),(6,'2023-03-28 18:17:50.828486','2023-03-28 18:17:50.828486',NULL,21,6,4,1),(7,'2023-03-28 18:18:03.734501','2023-03-28 18:18:03.734501',NULL,21,7,4,1),(8,'2023-03-28 18:18:24.206900','2023-03-28 18:18:24.206900',NULL,21,9,4,1),(9,'2023-03-28 18:18:52.275601','2023-03-28 18:18:52.275601',NULL,21,10,4,1),(10,'2023-03-28 18:19:21.464143','2023-03-28 18:19:21.464143',NULL,21,11,4,1),(11,'2023-03-28 18:24:45.351841','2023-03-28 18:24:45.351841','2023-12-13 11:14:22.000000',22,1,5,1),(12,'2023-03-28 18:24:58.154886','2023-03-28 18:24:58.154886',NULL,22,3,5,1),(13,'2023-03-28 18:25:07.785433','2023-03-28 18:25:07.785433',NULL,22,4,5,1),(14,'2023-03-28 18:25:18.132443','2023-03-28 18:25:18.132443',NULL,22,5,5,1),(15,'2023-03-28 18:25:28.475094','2023-03-28 18:25:28.475094',NULL,22,6,5,1),(16,'2023-03-28 18:25:39.645970','2023-03-28 18:25:39.645970',NULL,22,7,5,1),(17,'2023-03-28 18:25:49.770992','2023-03-28 18:25:49.770992',NULL,22,8,5,1),(18,'2023-03-28 18:26:26.353598','2023-03-28 18:26:26.353598',NULL,22,9,5,1),(19,'2023-03-28 18:27:08.094935','2023-03-28 18:27:08.094935',NULL,22,10,5,1),(20,'2023-03-28 18:27:31.766849','2023-03-28 18:27:31.766849',NULL,22,11,5,1),(21,'2023-03-28 18:28:26.958984','2023-03-28 18:28:26.958984',NULL,21,8,4,1),(22,'2023-04-04 01:02:26.380603','2023-04-04 01:02:26.380603',NULL,23,3,5,1),(23,'2023-04-04 01:02:49.914636','2023-04-04 01:02:49.914636',NULL,23,9,5,1),(24,'2023-04-14 11:08:01.822499','2023-04-14 11:08:01.822499',NULL,24,4,5,1),(25,'2023-04-14 11:08:15.955614','2023-04-14 11:08:15.955614',NULL,24,5,5,1),(26,'2023-04-14 11:08:34.978847','2023-04-14 11:08:34.978847',NULL,24,3,5,1),(27,'2023-04-14 11:10:10.333349','2023-04-14 11:10:10.333349',NULL,24,9,5,1),(30,'2023-04-19 17:00:15.208055','2023-04-19 17:00:15.208055',NULL,27,6,5,1),(31,'2023-04-19 17:00:35.936871','2023-04-19 17:00:35.936871',NULL,27,9,5,1),(32,'2023-04-19 17:01:34.789346','2023-04-19 17:01:34.789346',NULL,27,11,5,1),(33,'2023-04-19 20:47:32.226428','2023-04-19 20:47:32.226428',NULL,28,3,5,1),(34,'2023-04-19 20:47:46.515202','2023-04-19 20:47:46.515202',NULL,28,6,5,1),(35,'2023-04-19 20:48:22.440232','2023-04-19 20:48:22.440232',NULL,28,7,5,1),(36,'2023-04-19 20:48:42.239311','2023-04-19 20:48:42.239311',NULL,28,9,5,1),(38,'2023-05-11 13:50:22.108381','2023-05-11 13:50:22.108381',NULL,30,6,4,1),(39,'2023-05-11 13:59:18.625305','2023-05-11 13:59:18.625305',NULL,30,3,4,1),(40,'2023-05-11 13:59:38.803114','2023-05-11 13:59:38.803114',NULL,30,7,4,1),(41,'2023-05-11 14:01:14.660843','2023-05-11 14:01:14.660843',NULL,30,9,4,1),(42,'2023-05-11 14:01:53.044032','2023-05-11 14:01:53.044032',NULL,30,10,4,1),(43,'2023-05-11 14:02:14.750720','2023-05-11 14:02:14.750720',NULL,30,11,4,1),(44,'2023-05-30 16:29:43.483482','2023-05-30 16:29:43.483482',NULL,31,4,5,1),(45,'2023-06-02 01:27:13.115629','2023-06-02 01:27:13.115629',NULL,32,4,5,1),(46,'2023-06-02 01:27:29.589707','2023-06-02 01:27:29.589707',NULL,32,3,5,1),(47,'2023-08-28 16:37:28.928645','2023-08-28 16:37:28.928645',NULL,33,10,5,1),(48,'2023-09-22 23:00:42.604585','2023-09-22 23:00:42.604585',NULL,21,4,4,1),(49,'2023-09-22 23:01:12.032710','2023-09-22 23:01:12.032710',NULL,21,5,4,1),(50,'2023-11-10 13:45:04.004789','2023-11-10 13:45:04.004789',NULL,35,20,4,1),(51,'2023-11-10 13:45:15.352545','2023-11-10 13:45:15.352545',NULL,35,20,5,1),(52,'2023-11-10 13:45:24.569194','2023-11-10 13:45:24.569194',NULL,35,20,6,1),(53,'2023-12-01 21:59:24.563207','2023-12-01 21:59:24.563207',NULL,36,6,4,1),(54,'2023-12-01 21:59:42.834485','2023-12-01 21:59:42.834485',NULL,36,7,4,1),(55,'2023-12-01 21:59:58.756700','2023-12-01 21:59:58.756700',NULL,36,9,4,1),(56,'2023-12-01 22:00:18.431854','2023-12-01 22:00:18.431854',NULL,36,10,4,1),(57,'2023-12-01 22:00:35.180148','2023-12-01 22:00:35.180148',NULL,36,3,4,1),(58,'2024-04-09 14:47:03.768619','2024-04-09 14:47:03.768619',NULL,63,23,5,1),(59,'2024-04-09 15:02:59.718568','2024-04-09 15:02:59.718568',NULL,21,6,6,1),(60,'2024-04-09 15:18:44.103397','2024-04-09 15:18:44.103397',NULL,18,23,5,1),(63,'2024-04-09 17:51:21.541068','2024-04-09 17:52:56.000000','2024-04-09 17:52:56.000000',18,3,6,1),(64,'2024-04-09 17:53:04.638570','2024-04-09 18:00:35.000000',NULL,18,3,7,1);
/*!40000 ALTER TABLE `usuario_empresa_sistema_rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios_empresas_sistemas`
--

DROP TABLE IF EXISTS `usuarios_empresas_sistemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios_empresas_sistemas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int NOT NULL,
  `id_empresas_sistemas` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_369b9dbb259461a928e8a4bbbcd` (`id_usuario`),
  KEY `FK_66ced33e92800261db0ec9f2d59` (`id_empresas_sistemas`)
) ENGINE=InnoDB AUTO_INCREMENT=440 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios_empresas_sistemas`
--

LOCK TABLES `usuarios_empresas_sistemas` WRITE;
/*!40000 ALTER TABLE `usuarios_empresas_sistemas` DISABLE KEYS */;
INSERT INTO `usuarios_empresas_sistemas` VALUES (319,18,131),(320,4,130),(372,211,148),(373,212,148),(374,213,148),(375,214,148),(376,211,149),(377,212,149),(378,213,149),(379,214,149),(380,211,150),(381,212,150),(382,213,150),(383,214,150),(395,4,130),(397,221,190),(398,222,190),(399,223,190),(400,224,190),(401,225,192),(402,226,192),(403,227,192),(404,228,192),(405,229,193),(406,230,193),(407,231,193),(408,232,193),(409,233,194),(410,234,194),(411,235,194),(412,236,194),(414,237,197),(415,238,197),(416,239,197),(417,240,197),(422,4,202),(423,4,130),(424,241,203),(425,242,203),(426,243,203),(427,244,203),(428,244,203),(429,244,204),(431,4,133),(432,4,208),(433,4,209),(434,4,210),(435,4,211),(436,245,202),(437,4,202),(438,4,208),(439,4,215);
/*!40000 ALTER TABLE `usuarios_empresas_sistemas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios_sistemas_perfiles`
--

DROP TABLE IF EXISTS `usuarios_sistemas_perfiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios_sistemas_perfiles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int NOT NULL,
  `id_sistemas_perfiles` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_188565b7727ad5bf16b8244c2c8` (`id_usuario`),
  KEY `FK_39e4cd401bdba765191ef80a726` (`id_sistemas_perfiles`)
) ENGINE=InnoDB AUTO_INCREMENT=280 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios_sistemas_perfiles`
--

LOCK TABLES `usuarios_sistemas_perfiles` WRITE;
/*!40000 ALTER TABLE `usuarios_sistemas_perfiles` DISABLE KEYS */;
INSERT INTO `usuarios_sistemas_perfiles` VALUES (194,18,5),(195,18,1),(235,211,1),(236,211,5),(237,211,9),(238,212,2),(239,212,6),(240,212,10),(241,213,3),(242,213,7),(243,213,11),(244,214,4),(245,214,8),(246,214,12),(252,4,1),(253,4,19),(254,221,19),(255,222,20),(256,223,21),(257,224,22),(258,225,19),(259,226,20),(260,227,21),(261,228,22),(262,229,19),(263,230,20),(264,231,21),(265,232,22),(266,233,19),(267,234,20),(268,235,21),(269,236,22),(270,237,19),(271,238,20),(272,239,21),(273,240,22),(274,241,19),(275,242,20),(276,243,21),(277,244,22),(279,245,18);
/*!40000 ALTER TABLE `usuarios_sistemas_perfiles` ENABLE KEYS */;
UNLOCK TABLES;

SET foreign_key_checks = 1;
