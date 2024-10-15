-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: livrable2
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `adresse`
--

DROP TABLE IF EXISTS `adresse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adresse` (
  `Id_adresse` int DEFAULT NULL,
  `Nom_Region` text,
  `Nom_Ville` text,
  `Nom_Ville_[0]` text,
  `Id_Region` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adresse`
--

LOCK TABLES `adresse` WRITE;
/*!40000 ALTER TABLE `adresse` DISABLE KEYS */;
INSERT INTO `adresse` VALUES (4000,'Nouvelle Aquitaine','Bordeaux','222 Avenue du Vin',5000),(4001,'Nouvelle Aquitaine','Bordeaux','250 Chemin des Orfèvres',5000),(4002,'Nouvelle Aquitaine','Bordeaux','18 Boulevard des Rêves',5000),(4003,'Nouvelle Aquitaine','Bordeaux','12 Rue des Cerisiers',5000),(4004,'Nouvelle Aquitaine','Bordeaux','56 Chemin du Vieux Moulin',5000),(4005,'Nouvelle Aquitaine','Bordeaux','7 Rue de la Liberté',5000),(4006,'Nouvelle Aquitaine','Bordeaux','7 Allée de la Forêt',5000),(4007,'Occitanie','Bordeaux','8 Ruelle des Pommiers',5000),(4008,'Pays de la Loire','Bordeaux','37 Passage des Lilas',5000),(4009,'Ile de France','Bordeaux','3 Avenue des Pierres',5000),(4010,'Pays de la Loire','Nantes','333 Quai de la Rivière',5003),(4011,'Pays de la Loire','Nantes','29 Avenue des Peupliers',5003),(4012,'Pays de la Loire','Nantes','33 Boulevard de la Mer',5003),(4013,'Pays de la Loire','Nantes','48 Ruelle des Lavandes',5003),(4014,'Pays de la Loire','Nantes','102 Rue des Écrivains',5003),(4015,'Pays de la Loire','Nantes','11 Chemin des Anciens',5003),(4016,'Nouvelle Aquitaine','Nantes','6 Cours des Pivoines',5003),(4017,'Occitanie','Nantes','21 Ruelle du Soleil',5003),(4018,'Pays de la Loire','Nantes','101 Allée du Test',5003),(4019,'Occitanie','Toulouse','444 Boulevard du Champagne',5001),(4020,'Occitanie','Toulouse','22 Avenue de la Renaissance',5001),(4021,'Occitanie','Toulouse','3 Rue du Verger',5001),(4022,'Occitanie','Toulouse','55 Boulevard des Explorateurs',5001),(4023,'Occitanie','Toulouse','6 Chemin des Poètes',5001),(4024,'Occitanie','Toulouse','77 Rue de l\'Avenir',5001),(4025,'Ile de France','Toulouse','456 Avenue de l\'Eclipse',5001),(4026,'Occitanie','Toulouse','123 Rue de l\'Exemple',5001),(4027,'Ile de France','Paris','111 Rue Capitale',5002),(4028,'Ile de France','Paris','88 Avenue de l\'Horizon',5002),(4029,'Ile de France','Paris','9 Rue des Pionniers',5002),(4030,'Ile de France','Paris','31 Boulevard des Arts',5002),(4031,'Ile de France','Paris','45 Rue des Voyageurs',5002),(4032,'Ile de France','Paris','38 Avenue des Pêcheurs',5002),(4033,'Ile de France','Paris','7 Allée du Parc',5002),(4034,'Nouvelle Aquitaine','Paris','4 Passage du Vignoble',5002),(4035,'Nouvelle Aquitaine','Paris','5 Ruelle des Sapins',5002),(4036,'Ile de France','Paris','2 Chemin du Cerf',5002),(4037,'Pays de la Loire','Paris','28 Rue des Lilas',5002),(4038,'Occitanie','Paris','65 Avenue Rouge',5002);
/*!40000 ALTER TABLE `adresse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agence`
--

DROP TABLE IF EXISTS `agence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agence` (
  `Id_Agence` int NOT NULL,
  `Nom_Agence` text,
  `Id_Adresse` int DEFAULT NULL,
  PRIMARY KEY (`Id_Agence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agence`
--

LOCK TABLES `agence` WRITE;
/*!40000 ALTER TABLE `agence` DISABLE KEYS */;
INSERT INTO `agence` VALUES (3000,'Bordeaux',4000),(3001,'Nantes',4010),(3002,'Toulouse',4019),(3003,'Paris',4027);
/*!40000 ALTER TABLE `agence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agent`
--

DROP TABLE IF EXISTS `agent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agent` (
  `Id_Agent` int NOT NULL,
  `Nom` text,
  `Prenom` text,
  `Date_Naissance` text,
  PRIMARY KEY (`Id_Agent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agent`
--

LOCK TABLES `agent` WRITE;
/*!40000 ALTER TABLE `agent` DISABLE KEYS */;
INSERT INTO `agent` VALUES (2000,'SMITH','John','1985-10-09'),(2001,'MILLER ','Paul','1990-06-18'),(2002,'DUPONT','Pierre','1987-08-07'),(2003,'DUBOIS','Jean','1984-04-26'),(2004,'HENDERDON','Edward','1982-01-12'),(2005,'HAMILTON','Thomas','1990-05-16'),(2006,'MILLER ','Elizabeth','1989-02-23'),(2007,'GUILLOT','Alice','1992-11-17'),(2008,'GAUTIER','Vincent','1995-09-13'),(2009,'BERGER','Emile','1986-03-10'),(2010,'LAMBERT','Marie','1983-06-14'),(2011,'LEFEVRE','George','1991-10-04'),(2012,'EASTMAN','Linda','1994-12-03'),(2013,'DURAND','Louis','1988-05-08'),(2014,'DUVAL','François','1993-07-01'),(2015,'ADAMS','Lucie','1996-12-19'),(2016,'GUICHARD','Sonia','1985-10-25'),(2017,'DUPUY','Antoine','1984-03-30'),(2018,'AVERY','Estelle','1981-01-17'),(2019,'CONNOR','Henry','1991-06-11');
/*!40000 ALTER TABLE `agent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capteur`
--

DROP TABLE IF EXISTS `capteur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `capteur` (
  `Id_Capteur` int NOT NULL,
  `Secteur_Activite` text,
  `Nom_Gaz` text,
  `Type_Gaz` text,
  `Id_Adresse` int NOT NULL,
  PRIMARY KEY (`Id_Capteur`,`Id_Adresse`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capteur`
--

LOCK TABLES `capteur` WRITE;
/*!40000 ALTER TABLE `capteur` DISABLE KEYS */;
INSERT INTO `capteur` VALUES (1,'Textile','bio CO2','GES',4006),(2,'Transport','non bio CO2','GES',4006),(3,'Construction','PFC','GES',4007),(4,'Metallurgie','HFC','GRA',4007),(5,'Chimie','SF6','GES',4008),(6,'Commerce','NH3','GRA',4009),(7,'Informatic','bio CO2','GRA',4016),(8,'Caoutchouc','bio CO2','GES',4017),(9,'Plastique','bio CO2','GRA',4018),(10,'Electricite','non bio CO2','GES',4016),(11,'Distribution','non bio CO2','GES',4017),(12,'Commerce','non bio CO2','GES',4018),(13,'Agroalimentation','PFC','GRA',4016),(14,'Automobile','PFC','GES',4017),(15,'Construction','PFC','GES',4018),(16,'Packaging','HFC','GES',4016),(17,'Machinerie','HFC','GES',4017),(18,'Equipement','HFC','GRA',4018),(19,'Metallurgie','SF6','GES',4016),(20,'Textile','SF6','GES',4017),(21,'Chimie','SF6','GRA',4018),(22,'Papier','NH3','GES',4016),(23,'Imprimerie','NH3','GES',4017),(24,'Bois','NH3','GES',4018),(25,'Textile','bio CO2','GES',4025),(26,'Logistic','bio CO2','GES',4026),(27,'Electricite','non bio CO2','GES',4025),(28,'Transport','non bio CO2','GRA',4026),(29,'Construction','PFC','GES',4025),(30,'Caoutchouc','PFC','GES',4026),(31,'Packaging','HFC','GRA',4025),(32,'Machinerie','HFC','GES',4026),(33,'Chimie','SF6','GES',4025),(34,'Automobile','SF6','GRA',4026),(35,'Distribution','NH3','GES',4025),(36,'Metallurgie','NH3','GES',4026),(37,'Agroalimentation','CH4','GES',4025),(38,'Agroalimentation','CH4','GES',4026),(39,'Plastique','bio CO2','GES',4033),(40,'Textile','bio CO2','GES',4034),(41,'Agroalimentation','non bio CO2','GRA',4035),(42,'Combustion','N2O','GES',4036),(43,'Metallurgie','PFC','GES',4034),(44,'Construction','PFC','GES',4037),(45,'Packaging','HFC','GES',4033),(46,'Equipement','HFC','GES',4035),(47,'Chimie','SF6','GRA',4033),(48,'Distribution','SF6','GES',4038),(49,'Caoutchouc','NH3','GES',4037),(50,'Bois','NH3','GES',4034);
/*!40000 ALTER TABLE `capteur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `composer`
--

DROP TABLE IF EXISTS `composer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `composer` (
  `Id_Agence` int NOT NULL,
  `Id_Agent` int NOT NULL,
  PRIMARY KEY (`Id_Agence`,`Id_Agent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `composer`
--

LOCK TABLES `composer` WRITE;
/*!40000 ALTER TABLE `composer` DISABLE KEYS */;
INSERT INTO `composer` VALUES (3000,2000),(3000,2001),(3000,2002),(3000,2003),(3000,2004),(3001,2005),(3001,2006),(3001,2007),(3001,2008),(3001,2009),(3002,2010),(3002,2011),(3002,2012),(3002,2013),(3002,2014),(3002,2015),(3002,2018),(3003,2016),(3003,2017),(3003,2019);
/*!40000 ALTER TABLE `composer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detenir`
--

DROP TABLE IF EXISTS `detenir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detenir` (
  `Id_Adresse` int NOT NULL,
  `Id_Agent` int NOT NULL,
  PRIMARY KEY (`Id_Adresse`,`Id_Agent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detenir`
--

LOCK TABLES `detenir` WRITE;
/*!40000 ALTER TABLE `detenir` DISABLE KEYS */;
INSERT INTO `detenir` VALUES (4001,2000),(4002,2001),(4003,2002),(4004,2003),(4005,2004),(4011,2005),(4012,2006),(4013,2007),(4014,2008),(4015,2009),(4020,2010),(4021,2011),(4022,2012),(4023,2013),(4024,2014),(4028,2015),(4029,2016),(4030,2017),(4031,2018),(4032,2019);
/*!40000 ALTER TABLE `detenir` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fonction`
--

DROP TABLE IF EXISTS `fonction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fonction` (
  `Id_Fonction` int NOT NULL,
  `Nom_Fonction` text,
  PRIMARY KEY (`Id_Fonction`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fonction`
--

LOCK TABLES `fonction` WRITE;
/*!40000 ALTER TABLE `fonction` DISABLE KEYS */;
INSERT INTO `fonction` VALUES (6000,'Agency Chef'),(6001,'Administrative Agent'),(6002,'Technical Agent');
/*!40000 ALTER TABLE `fonction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gerer`
--

DROP TABLE IF EXISTS `gerer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gerer` (
  `Id_Agent` int DEFAULT NULL,
  `Id_Capteur` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gerer`
--

LOCK TABLES `gerer` WRITE;
/*!40000 ALTER TABLE `gerer` DISABLE KEYS */;
INSERT INTO `gerer` VALUES (2001,1),(2001,2),(2001,3),(2003,4),(2003,5),(2003,6),(2006,7),(2006,8),(2006,9),(2006,10),(2006,11),(2006,12),(2006,13),(2006,14),(2006,15),(2008,16),(2008,17),(2008,18),(2008,19),(2008,20),(2008,21),(2008,22),(2008,23),(2008,24),(2011,25),(2011,26),(2011,27),(2011,28),(2011,29),(2011,30),(2011,31),(2013,32),(2013,33),(2013,34),(2013,35),(2013,36),(2013,37),(2013,38),(2016,39),(2016,40),(2016,41),(2016,42),(2016,43),(2016,44),(2018,45),(2018,46),(2018,47),(2018,48),(2018,49),(2018,50);
/*!40000 ALTER TABLE `gerer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inclure`
--

DROP TABLE IF EXISTS `inclure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inclure` (
  `Id_Releve` int NOT NULL,
  `Id_Rapport` int NOT NULL,
  PRIMARY KEY (`Id_Releve`,`Id_Rapport`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inclure`
--

LOCK TABLES `inclure` WRITE;
/*!40000 ALTER TABLE `inclure` DISABLE KEYS */;
INSERT INTO `inclure` VALUES (1001,7012),(1002,7002),(1003,7013),(1024,7010),(1043,7011),(1049,7004),(1056,7005),(1060,7009),(1062,7014),(1068,7006),(1073,7001),(1097,7007),(1108,7003),(1138,7008),(1150,7015);
/*!40000 ALTER TABLE `inclure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `nbagencebyregion`
--

DROP TABLE IF EXISTS `nbagencebyregion`;
/*!50001 DROP VIEW IF EXISTS `nbagencebyregion`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `nbagencebyregion` AS SELECT 
 1 AS `NBAGENCE`,
 1 AS `Nom_Region`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `posseder`
--

DROP TABLE IF EXISTS `posseder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posseder` (
  `Id_Fonction` int DEFAULT NULL,
  `Id_Agent` int DEFAULT NULL,
  `Date_Embauche` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posseder`
--

LOCK TABLES `posseder` WRITE;
/*!40000 ALTER TABLE `posseder` DISABLE KEYS */;
INSERT INTO `posseder` VALUES (6000,2000,'2019-01-01'),(6002,2001,'2020-01-01'),(6001,2002,'2021-01-01'),(6002,2003,'2019-01-01'),(6001,2004,'2017-01-01'),(6000,2005,'2023-01-01'),(6002,2006,'2022-01-01'),(6001,2007,'2020-01-01'),(6002,2008,'2023-01-01'),(6002,2009,'2019-01-01'),(6001,2010,'2017-01-01'),(6002,2011,'2015-01-01'),(6002,2012,'2020-01-01'),(6001,2013,'2018-01-01'),(6002,2014,'2019-01-01'),(6001,2015,'2024-01-01'),(6002,2016,'2021-01-01'),(6002,2017,'2014-01-01'),(6001,2018,'2016-01-01'),(6001,2019,'2017-01-01');
/*!40000 ALTER TABLE `posseder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rapport`
--

DROP TABLE IF EXISTS `rapport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rapport` (
  `Id_Rapport` int NOT NULL,
  `Titre` text,
  `Date_Parution` text,
  PRIMARY KEY (`Id_Rapport`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rapport`
--

LOCK TABLES `rapport` WRITE;
/*!40000 ALTER TABLE `rapport` DISABLE KEYS */;
INSERT INTO `rapport` VALUES (7001,'Rapport_Bordeaux_HFC_2018','2018-08-06'),(7002,'Synthese_Toulouse_CH4_2016','2016-12-15'),(7003,'SF6 Bordeaux 2018','2018-04-05'),(7004,'Bilan 2020 Nantes CO2 bio','2020-12-31'),(7005,'Evolution NH3 2018-2021 Bordeaux','2021-02-10'),(7006,'Progression PFC Paris 2017-2023','2022-08-15'),(7007,'CO2 non bio Toulouse 2021','2021-11-27'),(7008,'Rapport PFC 2022 à Nantes','2022-12-29'),(7009,'Paris SF6 2019 Bilan','2019-06-26'),(7010,'Etude CO2 Bio 2023 Nantes','2023-09-28'),(7011,'NO2 Paris Analyse','2016-02-15'),(7012,'Bordeaux CO2 non bio 2016-2017','2017-02-06'),(7013,'Analyse Toulouse NH3 2016','2016-12-07'),(7014,'Diagnostique HFC 2016 Paris','2016-08-20'),(7015,'Comparaison SF6 entre 2016 et 2023 Nantes','2023-05-16');
/*!40000 ALTER TABLE `rapport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `realiser`
--

DROP TABLE IF EXISTS `realiser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `realiser` (
  `Id_Rapport` int NOT NULL,
  `Id_Agent` int NOT NULL,
  `Date_Modification` text,
  `Etat_Rapport` text,
  PRIMARY KEY (`Id_Rapport`,`Id_Agent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `realiser`
--

LOCK TABLES `realiser` WRITE;
/*!40000 ALTER TABLE `realiser` DISABLE KEYS */;
INSERT INTO `realiser` VALUES (7001,2003,'14/02/2018','First Draft'),(7002,2013,'05/12/2016','Revised Draft'),(7003,2005,'03/02/2018','In Progress'),(7004,2008,'06/10/2020','Revised Draft'),(7005,2005,'15/03/2019','First Draft'),(7006,2018,'12/09/2017','In Progress'),(7007,2015,'16/03/2021','Revised Draft'),(7008,2010,'04/11/2022','In Progress'),(7010,2008,'07/06/2023','Revised Draft'),(7012,2003,'04/07/2016','In Progress'),(7013,2013,'18/06/2016','In Progress'),(7014,2018,'14/01/2016','First Draft'),(7015,2010,' 2016-09-07','Revised Draft');
/*!40000 ALTER TABLE `realiser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recevoir`
--

DROP TABLE IF EXISTS `recevoir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recevoir` (
  `Id_Agence` int NOT NULL,
  `Id_Rapport` int NOT NULL,
  PRIMARY KEY (`Id_Agence`,`Id_Rapport`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recevoir`
--

LOCK TABLES `recevoir` WRITE;
/*!40000 ALTER TABLE `recevoir` DISABLE KEYS */;
INSERT INTO `recevoir` VALUES (3000,7001),(3000,7003),(3000,7005),(3001,7004),(3001,7008),(3001,7010),(3001,7015),(3002,7002),(3002,7007),(3002,7013),(3003,7006),(3003,7009),(3003,7011),(3003,7012),(3003,7014);
/*!40000 ALTER TABLE `recevoir` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `region` (
  `Id_Region` int NOT NULL,
  `Nom_Region` text,
  PRIMARY KEY (`Id_Region`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` VALUES (5000,'Occitanie'),(5001,'Nouvelle Aquitaine'),(5002,'Ile de France'),(5003,'Pays de la Loire');
/*!40000 ALTER TABLE `region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `releve`
--

DROP TABLE IF EXISTS `releve`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `releve` (
  `Id_Releve` int NOT NULL,
  `Date` text,
  `Nom_Gaz_Releve` text,
  `Type_Gaz_Releve` text,
  `Quantite_Gaz` text,
  `Id_Capteur` int NOT NULL,
  PRIMARY KEY (`Id_Releve`,`Id_Capteur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `releve`
--

LOCK TABLES `releve` WRITE;
/*!40000 ALTER TABLE `releve` DISABLE KEYS */;
INSERT INTO `releve` VALUES (1000,'2016-03-01','bio CO2','GES','485',1),(1001,'2016-03-01','non bio CO2','GES','560',2),(1002,'2016-06-01','CH4','GES','1,32',38),(1003,'2016-06-01','NH3','GES','1,26',36),(1004,'2016-06-01','PFC','GES','0,0000895',30),(1005,'2016-04-01','bio CO2','GES','472',1),(1006,'2016-04-01','non bio CO2','GES','600',2),(1007,'2016-05-01','bio CO2','GES','470',1),(1008,'2016-05-01','non bio CO2','GES','595',2),(1009,'2016-06-01','HFC','GES','0,000206',32),(1010,'2016-06-01','SF6','GRA','0,000009',34),(1011,'2016-06-01','bio CO2','GES','458',26),(1012,'2016-06-01','bio CO2','GES','435',1),(1013,'2016-06-01','non bio CO2','GES','582',2),(1014,'2016-07-01','bio CO2','GES','442',1),(1015,'2016-07-01','non bio CO2','GES','520',2),(1016,'2016-08-01','bio CO2','GES','453',1),(1017,'2016-08-01','non bio CO2','GES','502',2),(1018,'2016-09-01','bio CO2','GES','457',1),(1019,'2016-09-01','non bio CO2','GES','531',2),(1020,'2016-10-01','bio CO2','GES','467',1),(1021,'2016-10-01','non bio CO2','GES','562',2),(1022,'2016-11-01','bio CO2','GES','472',1),(1023,'2016-11-01','non bio CO2','GES','580',2),(1024,'2016-12-01','bio CO2','GES','481',1),(1025,'2016-12-01','non bio CO2','GES','545',2),(1026,'2016-12-05','CH4','GES','1,41',38),(1027,'2016-12-05','NH3','GES','0,04',36),(1028,'2016-12-05','PFC','GES','0,0000956',30),(1029,'2016-12-05','HFC','GES','0,00025',32),(1030,'2016-12-05','bio CO2','GES','432',26),(1031,'2017-01-01','bio CO2','GES','462',1),(1032,'2017-01-01','non bio CO2','GES','587',2),(1033,'2017-02-01','CH4','GES','1,65',142),(1034,'2017-02-01','NH3','GES','0,05',24),(1035,'2017-02-01','PFC','GES','0,0001',15),(1036,'2017-02-01','bio CO2','GRA','451',9),(1037,'2017-02-01','bio CO2','GES','441',1),(1038,'2017-02-01','non bio CO2','GES','620',2),(1039,'2017-03-01','CH4','GES','1,71',142),(1040,'2017-03-01','NH3','GES','0,045',24),(1041,'2017-04-01','PFC','GES','0,0000832',15),(1042,'2017-04-01','bio CO2','GRA','478',9),(1043,'2020-02-01','N2O','GES','3,3',42),(1044,'2023-06-04','bio CO2','GRA','413',9),(1045,'2016-02-08','PFC','GES','583',14),(1046,'2020-11-18','SF6','GRA','521',47),(1047,'2018-06-02','NH3','GES','408',24),(1048,'2019-12-29','bio CO2','GRA','426',7),(1049,'2020-01-27','bio CO2','GES','615',7),(1050,'2019-09-30','non bio CO2','GRA','781',120),(1051,'2018-11-24','SF6','GRA','0,000004',47),(1052,'2017-07-26','HFC','GRA','703',18),(1053,'2016-06-08','SF6','GRA','657',139),(1054,'2018-02-23','NH3','GES','714',24),(1055,'2023-05-01','PFC','GES','0,000008',184),(1056,'2020-01-24','NH3','GRA','666',6),(1057,'2016-12-20','bio CO2','GES','729',25),(1058,'2022-12-29','non bio CO2','GES','431',132),(1059,'2016-07-22','HFC','GRA','605',4),(1060,'2019-05-29','SF6','GRA','455',47),(1061,'2020-03-07','non bio CO2','GES','627',68),(1062,'2016-08-18','HFC','GES','0,000001',46),(1063,'2020-11-27','NH3','GES','433',23),(1064,'2021-05-09','PFC','GES','719',3),(1065,'2021-11-02','NH3','GES','680',49),(1066,'2016-06-15','bio CO2','GES','595',8),(1067,'2017-04-16','bio CO2','GES','671',8),(1068,'2017-04-08','PFC','GES','658',43),(1069,'2022-11-25','SF6','GES','450',33),(1070,'2020-10-14','non bio CO2','GES','458',11),(1071,'2018-08-01','PFC','GES','733',3),(1072,'2016-09-21','non bio CO2','GRA','682',10),(1073,'2018-02-10','HFC','GRA','510',4),(1074,'2017-01-03','SF6','GES','516',48),(1075,'2020-09-29','bio CO2','GES','632',7),(1076,'2022-07-03','SF6','GES','773',5),(1077,'2019-07-17','NH3','GES','0,000004',152),(1078,'2021-02-26','bio CO2','GES','591',122),(1079,'2021-01-26','non bio CO2','GES','751',11),(1080,'2022-09-22','bio CO2','GRA','434',76),(1081,'2021-04-05','NH3','GES','0,000001',50),(1082,'2017-12-02','bio CO2','GRA','781',76),(1083,'2022-08-06','PFC','GES','466',44),(1084,'2020-06-11','non bio CO2','GES','700',11),(1085,'2019-03-27','NH3','GES','687',36),(1086,'2019-10-31','PFC','GRA','462',13),(1087,'2023-09-23','HFC','GRA','740',4),(1088,'2019-10-07','SF6','GES','616',5),(1089,'2018-07-12','PFC','GES','769',30),(1090,'2023-04-26','HFC','GES','0,000003',59),(1091,'2021-01-02','NH3','GES','453',148),(1092,'2019-08-25','NH3','GRA','508',6),(1093,'2018-08-06','NH3','GES','646',22),(1094,'2020-11-01','non bio CO2','GRA','455',187),(1095,'2021-04-13','NH3','GES','684',22),(1096,'2016-07-06','SF6','GRA','790',147),(1097,'2021-03-09','non bio CO2','GES','515',28),(1098,'2022-04-18','NH3','GES','687',35),(1099,'2016-11-04','non bio CO2','GES','718',178),(1100,'2022-06-27','SF6','GES','729',161),(1101,'2017-10-07','SF6','GES','711',155),(1102,'2021-04-27','PFC','GES','755',44),(1103,'2017-10-17','non bio CO2','GES','492',178),(1104,'2018-04-02','bio CO2','GRA','790',9),(1105,'2021-08-13','HFC','GES','573',45),(1106,'2016-09-09','NH3','GES','492',36),(1107,'2017-05-02','bio CO2','GES','689',8),(1108,'2018-01-15','SF6','GES','435',5),(1109,'2017-06-24','HFC','GES','724',17),(1110,'2020-09-10','bio CO2','GRA','446',9),(1111,'2016-08-21','HFC','GRA','510',4),(1112,'2017-05-01','PFC','GES','632',15),(1113,'2016-01-09','HFC','GES','589',46),(1114,'2019-06-23','SF6','GES','566',48),(1115,'2019-10-31','SF6','GES','690',155),(1116,'2021-11-11','PFC','GRA','426',13),(1117,'2021-01-18','NH3','GES','786',141),(1118,'2019-12-30','non bio CO2','GES','745',135),(1119,'2018-06-23','NH3','GES','0,000084',50),(1120,'2016-04-11','SF6','GRA','710',147),(1121,'2017-12-20','NH3','GES','539',50),(1122,'2018-06-14','HFC','GRA','662',31),(1123,'2022-01-05','HFC','GRA','620',57),(1124,'2018-05-28','SF6','GRA','747',147),(1125,'2021-12-24','SF6','GES','649',84),(1126,'2023-04-24','NH3','GES','557',35),(1127,'2019-11-11','NH3','GES','0,000016',5),(1128,'2016-08-09','HFC','GES','403',17),(1129,'2021-11-05','non bio CO2','GRA','508',41),(1130,'2017-12-26','PFC','GES','791',122),(1131,'2023-11-10','non bio CO2','GRA','567',28),(1132,'2018-04-01','SF6','GES','654',5),(1133,'2022-09-13','NH3','GES','489',141),(1134,'2022-09-24','non bio CO2','GES','672',135),(1135,'2021-04-25','NH3','GES','656',50),(1136,'2021-01-06','bio CO2','GES','742',25),(1137,'2021-08-16','HFC','GRA','436',18),(1138,'2022-11-02','PFC','GRA','779',13),(1139,'2023-12-10','NH3','GES','0.000456',50),(1140,'2017-09-06','PFC','GES','560',44),(1141,'2019-08-13','NH3','GES','693',148),(1142,'2016-12-22','non bio CO2','GES','727',27),(1143,'2020-08-18','PFC','GES','458',29),(1144,'2017-11-29','PFC','GRA','566',13),(1145,'2021-07-05','non bio CO2','GES','716',68),(1146,'2017-04-07','NH3','GES','753',133),(1147,'2023-09-23','bio CO2','GRA','445',9),(1148,'2018-04-05','non bio CO2','GRA','454',10),(1149,'2023-01-12','SF6','GES','701',155),(1150,'2017-03-17','SF6','GRA','440',21),(1151,'2016-08-09','HFC','GRA','558',4),(1152,'2016-07-04','bio CO2','GES','513',81),(1153,'2017-05-30','NH3','GES','486',22),(1154,'2022-09-28','bio CO2','GRA','0,000006',187),(1155,'2018-08-13','SF6','GES','499',19),(1156,'2021-01-22','NH3','GES','578',148),(1157,'2022-05-15','bio CO2','GES','730',106),(1158,'2023-01-04','PFC','GRA','520',188),(1159,'2020-11-03','non bio CO2','GES','531',11),(1160,'2023-11-02','NH3','GES','708',24),(1161,'2018-06-15','PFC','GES','788',30),(1162,'2019-09-26','non bio CO2','GES','490',132),(1163,'2017-01-21','bio CO2','GES','721',26),(1164,'2019-12-27','PFC','GRA','786',13),(1165,'2021-11-09','HFC','GRA','696',18),(1166,'2018-08-02','HFC','GRA','689',4),(1167,'2021-12-13','SF6','GRA','719',34),(1168,'2019-06-04','PFC','GES','721',3),(1169,'2018-04-25','NH3','GES','625',49),(1170,'2020-04-03','PFC','GES','0,000004',15),(1171,'2020-08-04','bio CO2','GES','540',25),(1172,'2020-03-14','HFC','GRA','580',157),(1173,'2019-09-22','PFC','GES','558',15),(1174,'2016-09-06','SF6','GES','419',20),(1175,'2021-02-01','NH3','GRA','0,000008',6),(1176,'2016-05-03','HFC','GES','0,000009',17),(1177,'2023-07-26','PFC','GES','714',14),(1178,'2019-09-04','PFC','GES','596',111),(1179,'2022-04-01','NH3','GES','683',22),(1180,'2018-09-28','SF6','GRA','778',34),(1181,'2021-02-18','bio CO2','GRA','630',9),(1182,'2018-02-16','SF6','GRA','692',47),(1183,'2016-03-21','bio CO2','GES','564',49),(1184,'2016-10-10','non bio CO2','GES','656',27),(1185,'2017-12-12','PFC','GES','431',111),(1186,'2021-09-25','PFC','GES','575',44),(1187,'2023-02-10','HFC','GRA','443',18),(1188,'2023-04-27','non bio CO2','GRA','488',120),(1189,'2020-11-22','PFC','GES','0,000007',167),(1190,'2020-12-29','bio CO2','GES','668',7),(1191,'2016-03-05','NH3','GES','481',71),(1192,'2022-07-04','bio CO2','GES','544',40),(1193,'2021-09-19','PFC','GES','796',29),(1194,'2022-12-27','PFC','GES','706',14),(1195,'2018-04-17','bio CO2','GES','0,000006',26),(1196,'2020-11-25','NH3','GES','568',35),(1197,'2016-05-04','non bio CO2','GES','0,000007',28),(1198,'2022-06-28','SF6','GES','770',19),(1199,'2022-06-07','HFC','GES','708',32),(1200,'2017-06-28','bio CO2','GES','570',40),(1201,'2020-01-01','bio CO2','GES','0,000007',1),(1202,'2020-05-31','HFC','GRA','642',18),(1203,'2021-07-17','bio CO2','GRA','757',76),(1204,'2019-10-05','HFC','GRA','466',4),(1205,'2023-10-17','HFC','GES','443',45),(1206,'2018-05-14','HFC','GRA','592',18),(1207,'2017-07-17','NH3','GES','568',49),(1208,'2020-12-23','non bio CO2','GRA','743',187),(1209,'2019-09-16','non bio CO2','GES','778',114),(1210,'2021-05-26','SF6','GES','669',62),(1211,'2022-12-04','NH3','GES','0,000007',152),(1212,'2020-03-07','SF6','GRA','409',120),(1213,'2016-10-10','PFC','GES','492',30),(1214,'2019-12-31','non bio CO2','GES','574',93),(1215,'2018-12-17','non bio CO2','GRA','648',120),(1216,'2019-06-22','non bio CO2','GRA','470',120),(1217,'2018-11-01','bio CO2','GES','551',39),(1218,'2018-09-24','SF6','GES','451',155),(1219,'2021-09-13','NH3','GES','676',35),(1220,'2016-11-20','SF6','GRA','669',139),(1221,'2023-04-18','PFC','GES','0,000003',43),(1222,'2017-05-14','non bio CO2','GES','467',135),(1223,'2018-10-21','NH3','GRA','478',6),(1224,'2019-07-02','SF6','GES','754',161),(1225,'2021-11-25','non bio CO2','GES','484',28),(1226,'2020-03-19','non bio CO2','GES','422',114),(1227,'2018-06-14','NH3','GES','746',49),(1228,'2021-08-20','PFC','GRA','627',188),(1229,'2019-05-29','HFC','GRA','785',183),(1230,'2022-12-02','NH3','GES','629',49),(1231,'2022-06-20','HFC','GRA','522',183),(1232,'2020-09-05','PFC','GES','640',16),(1233,'2016-04-24','bio CO2','GES','499',39),(1234,'2019-11-14','NH3','GES','692',141),(1235,'2016-09-30','HFC','GES','636',16),(1236,'2018-09-04','PFC','GES','798',29),(1237,'2018-02-23','SF6','GRA','670',139),(1238,'2018-10-01','non bio CO2','GRA','482',101),(1239,'2016-12-26','bio CO2','GES','709',40),(1240,'2022-07-28','NH3','GES','528',141),(1241,'2019-06-09','HFC','GRA','0,000005',31),(1242,'2023-05-11','SF6','GES','452',20),(1243,'2020-05-17','HFC','GES','664',46);
/*!40000 ALTER TABLE `releve` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `nbagencebyregion`
--

/*!50001 DROP VIEW IF EXISTS `nbagencebyregion`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `nbagencebyregion` AS select count(0) AS `NBAGENCE`,`adresse`.`Nom_Region` AS `Nom_Region` from (`agence` join `adresse` on((`agence`.`Id_Adresse` = `adresse`.`Id_adresse`))) group by `adresse`.`Nom_Region` */;
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

-- Dump completed on 2024-05-13 13:38:09
