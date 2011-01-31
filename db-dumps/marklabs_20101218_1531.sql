-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.41-3ubuntu12.7


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema marklabs
--

CREATE DATABASE IF NOT EXISTS marklabs;
USE marklabs;

--
-- Definition of table `marklabs`.`averageMarginOffered`
--

DROP TABLE IF EXISTS `marklabs`.`averageMarginOffered`;
CREATE TABLE  `marklabs`.`averageMarginOffered` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `supermarket_amo` float(10,4) NOT NULL,
  `generalStore_amo` float(10,4) NOT NULL,
  `kiranaStore_amo` float(10,4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`averageMarginOffered`
--

/*!40000 ALTER TABLE `averageMarginOffered` DISABLE KEYS */;
LOCK TABLES `averageMarginOffered` WRITE;
INSERT INTO `marklabs`.`averageMarginOffered` VALUES  (1,100.0000,200.0000,300.0000);
UNLOCK TABLES;
/*!40000 ALTER TABLE `averageMarginOffered` ENABLE KEYS */;


--
-- Definition of table `marklabs`.`brandadv_metadata`
--

DROP TABLE IF EXISTS `marklabs`.`brandadv_metadata`;
CREATE TABLE  `marklabs`.`brandadv_metadata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandName` varchar(255) NOT NULL,
  `adv_media_budget` int(11) NOT NULL,
  `adv_research_budget` int(11) NOT NULL,
  `Seg_Blueblood_pr` int(11) NOT NULL,
  `Seg_raffles_pr` int(11) NOT NULL,
  `Seg_wannabees_pr` int(11) NOT NULL,
  `Seg_strugglers_pr` int(11) NOT NULL,
  `Seg_deprived_pr` int(11) NOT NULL,
  `Med_print_pr` int(11) NOT NULL,
  `Med_television_pr` int(11) NOT NULL,
  `med_radio_pr` int(11) NOT NULL,
  `med_internet_pr` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1115 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`brandadv_metadata`
--

/*!40000 ALTER TABLE `brandadv_metadata` DISABLE KEYS */;
LOCK TABLES `brandadv_metadata` WRITE;
INSERT INTO `marklabs`.`brandadv_metadata` VALUES  (1111,'AYAN',1200,100,20,20,20,20,20,20,30,20,30),
 (1112,'BYTE',1200,100,20,20,20,20,20,20,30,20,30),
 (1113,'ARIM',2000,150,30,40,10,10,10,30,40,10,20),
 (1114,'BROM',2000,150,30,40,10,10,10,30,40,10,20);
UNLOCK TABLES;
/*!40000 ALTER TABLE `brandadv_metadata` ENABLE KEYS */;


--
-- Definition of table `marklabs`.`brandadvertisement`
--

DROP TABLE IF EXISTS `marklabs`.`brandadvertisement`;
CREATE TABLE  `marklabs`.`brandadvertisement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) DEFAULT NULL,
  `adv_media_budget` int(11) NOT NULL,
  `adv_research_budget` int(11) NOT NULL,
  `Seg_Blueblood_pr` int(11) NOT NULL,
  `Seg_raffles_pr` int(11) NOT NULL,
  `Seg_wannabees_pr` int(11) NOT NULL,
  `Seg_strugglers_pr` int(11) NOT NULL,
  `Seg_deprived_pr` int(11) NOT NULL,
  `Med_print_pr` int(11) NOT NULL,
  `Med_television_pr` int(11) NOT NULL,
  `med_radio_pr` int(11) NOT NULL,
  `med_internet_pr` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `brandId_fk` (`brandId`)
) ENGINE=MyISAM AUTO_INCREMENT=4120 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`brandadvertisement`
--

/*!40000 ALTER TABLE `brandadvertisement` DISABLE KEYS */;
LOCK TABLES `brandadvertisement` WRITE;
INSERT INTO `marklabs`.`brandadvertisement` VALUES  (4000,2000,1500000,150000,20,20,20,20,20,25,25,25,25),
 (4001,2001,1000000,100000,20,20,20,20,20,25,25,25,25),
 (4002,2002,1500000,150000,20,20,20,20,20,25,25,25,25),
 (4003,2003,1000000,100000,20,20,20,20,20,25,25,25,25),
 (4004,2004,1500000,150000,20,20,20,20,20,25,25,25,25),
 (4005,2005,1000000,100000,20,20,20,20,20,25,25,25,25),
 (4006,2006,1500000,150000,20,20,20,20,20,25,25,25,25),
 (4007,2007,1000000,100000,20,20,20,20,20,25,25,25,25),
 (4008,2008,1500000,150000,20,20,20,20,20,25,25,25,25),
 (4009,2009,1000000,100000,20,20,20,20,20,25,25,25,25),
 (4010,2010,1500000,150000,20,20,20,20,20,25,25,25,25),
 (4011,2011,1000000,100000,20,20,20,20,20,25,25,25,25),
 (4100,2100,6780,30000,90,90,90,9,67,7,8,80,8),
 (4101,2101,1000000,100000,20,20,20,20,20,25,25,25,25),
 (4102,2102,1500000,150000,20,20,20,20,20,25,25,25,25),
 (4103,2103,1000000,100000,20,20,20,20,20,25,25,25,25),
 (4104,2104,1500000,150000,20,20,20,20,20,25,25,25,25),
 (4105,2105,1000000,100000,20,20,20,20,20,25,25,25,25),
 (4106,2106,1500000,150000,20,20,20,20,20,25,25,25,25),
 (4107,2107,1000000,100000,20,20,20,20,20,25,25,25,25),
 (4108,2108,1500000,150000,20,20,20,20,20,25,25,25,25),
 (4109,2109,1000000,100000,20,20,20,20,20,25,25,25,25),
 (4110,2110,1500000,150000,20,20,20,20,20,25,25,25,25),
 (4111,2111,1000000,100000,20,20,20,20,20,25,25,25,25),
 (4112,2116,0,0,0,0,0,0,0,0,0,0,0),
 (4113,2117,0,0,0,0,0,0,0,0,0,0,0),
 (4114,2118,0,0,0,0,0,0,0,0,0,0,0),
 (4115,2119,0,0,0,0,0,0,0,0,0,0,0),
 (4116,2120,0,0,0,0,0,0,0,0,0,0,0),
 (4117,2121,0,0,0,0,0,0,0,0,0,0,0),
 (4118,2122,0,0,0,0,0,0,0,0,0,0,0),
 (4119,2123,0,0,0,0,0,0,0,0,0,0,0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `brandadvertisement` ENABLE KEYS */;


--
-- Definition of table `marklabs`.`brandawareness_metadata`
--

DROP TABLE IF EXISTS `marklabs`.`brandawareness_metadata`;
CREATE TABLE  `marklabs`.`brandawareness_metadata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandName` varchar(500) NOT NULL,
  `total_ba` float(10,4) DEFAULT '0.0000',
  `bluebloods_ba` float(10,4) DEFAULT '0.0000',
  `raffles_ba` float(10,4) DEFAULT '0.0000',
  `wannabes_ba` float(10,4) DEFAULT '0.0000',
  `strugglers_ba` float(10,4) DEFAULT '0.0000',
  `deprived_ba` float(10,4) DEFAULT '0.0000',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`brandawareness_metadata`
--

/*!40000 ALTER TABLE `brandawareness_metadata` DISABLE KEYS */;
LOCK TABLES `brandawareness_metadata` WRITE;
INSERT INTO `marklabs`.`brandawareness_metadata` VALUES  (1,'AYAN',0.4520,0.4520,0.4520,0.4520,0.4520,0.4520),
 (2,'BYTE',0.4520,0.4520,0.4520,0.4520,0.4520,0.4520),
 (3,'ARIM',0.4790,0.5130,0.6024,0.4270,0.4270,0.4270),
 (4,'BROM',0.4790,0.5130,0.6024,0.4270,0.4270,0.4270);
UNLOCK TABLES;
/*!40000 ALTER TABLE `brandawareness_metadata` ENABLE KEYS */;


--
-- Definition of table `marklabs`.`brands`
--

DROP TABLE IF EXISTS `marklabs`.`brands`;
CREATE TABLE  `marklabs`.`brands` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BRANDNAME` varchar(255) NOT NULL,
  `DELETEFLAG` char(1) NOT NULL,
  `RESEARCHPROJECTID` int(11) NOT NULL,
  `status` varchar(40) NOT NULL DEFAULT 'New',
  `period` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID` (`ID`),
  UNIQUE KEY `ID_2` (`ID`),
  KEY `RESEARCHPROJ_FK` (`RESEARCHPROJECTID`),
  CONSTRAINT `RESEARCHPROJ_FK` FOREIGN KEY (`RESEARCHPROJECTID`) REFERENCES `researchproject` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2124 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`brands`
--

/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
LOCK TABLES `brands` WRITE;
INSERT INTO `marklabs`.`brands` VALUES  (2000,'AYAN','N',1000,'Maintained',0),
 (2001,'AMAN','N',1001,'Maintained',0),
 (2002,'BYAN','N',1002,'Maintained',0),
 (2003,'BOWN','N',1003,'Maintained',0),
 (2004,'COWN','N',1004,'Maintained',0),
 (2005,'CYAN','N',1005,'Maintained',0),
 (2006,'DINK','N',1006,'Maintained',0),
 (2007,'DOPE','N',1007,'Maintained',0),
 (2008,'ENOT','N',1008,'Maintained',0),
 (2009,'EPAD','N',1009,'Maintained',0),
 (2010,'FIED','N',1010,'Maintained',0),
 (2011,'FASO','N',1011,'Maintained',0),
 (2100,'AYAN','N',1100,'Maintained',1),
 (2102,'BYAN','N',1102,'Maintained',1),
 (2103,'BOWN','N',1103,'Maintained',1),
 (2104,'COWN','N',1104,'Maintained',1),
 (2105,'CYAN','N',1105,'Maintained',1),
 (2106,'DINK','N',1106,'Maintained',1),
 (2107,'DOPE','N',1107,'Maintained',1),
 (2108,'ENOT','N',1108,'Maintained',1),
 (2109,'EPAD','N',1109,'Maintained',1),
 (2110,'FIED','N',1110,'Maintained',1),
 (2111,'FASO','N',1111,'Maintained',1);
UNLOCK TABLES;
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;


--
-- Definition of table `marklabs`.`brands_metadata`
--

DROP TABLE IF EXISTS `marklabs`.`brands_metadata`;
CREATE TABLE  `marklabs`.`brands_metadata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandName` varchar(255) NOT NULL,
  `researchProjectName` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `brandNameMD_unq` (`brandName`),
  KEY `researchProjNameMD_fk` (`researchProjectName`),
  CONSTRAINT `researchProjNameMD_fk` FOREIGN KEY (`researchProjectName`) REFERENCES `researchproject_metadata` (`projectName`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`brands_metadata`
--

/*!40000 ALTER TABLE `brands_metadata` DISABLE KEYS */;
LOCK TABLES `brands_metadata` WRITE;
INSERT INTO `marklabs`.`brands_metadata` VALUES  (1,'AYAN','ARYAN'),
 (2,'ARIM','ARMAN'),
 (3,'BYTE','BRYAN'),
 (4,'BROM','BRMAN');
UNLOCK TABLES;
/*!40000 ALTER TABLE `brands_metadata` ENABLE KEYS */;


--
-- Definition of table `marklabs`.`brandspecs`
--

DROP TABLE IF EXISTS `marklabs`.`brandspecs`;
CREATE TABLE  `marklabs`.`brandspecs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `productionLevel` int(11) NOT NULL,
  `inventorySold` int(11) NOT NULL DEFAULT '0',
  `currentInventory` int(11) NOT NULL DEFAULT '0',
  `retailPrice` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `brandAdv_SpecsFK` (`brandId`)
) ENGINE=MyISAM AUTO_INCREMENT=3122 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`brandspecs`
--

/*!40000 ALTER TABLE `brandspecs` DISABLE KEYS */;
LOCK TABLES `brandspecs` WRITE;
INSERT INTO `marklabs`.`brandspecs` VALUES  (3000,2000,80000,0,0,340),
 (3001,2001,50000,0,0,430),
 (3002,2002,80000,0,0,340),
 (3003,2003,50000,0,0,430),
 (3004,2004,80000,0,0,340),
 (3005,2005,50000,0,0,430),
 (3006,2006,80000,0,0,340),
 (3007,2007,50000,0,0,430),
 (3008,2008,80000,0,0,340),
 (3009,2009,50000,0,0,430),
 (3010,2010,80000,0,0,340),
 (3011,2011,50000,0,0,430),
 (3100,2100,40000,0,5417,340),
 (3101,2101,60000,0,3339,897),
 (3102,2102,80000,0,5417,340),
 (3103,2103,50000,0,3339,430),
 (3104,2104,80000,0,5417,340),
 (3105,2105,50000,0,3339,430),
 (3106,2106,80000,0,5417,340),
 (3107,2107,50000,0,3339,430),
 (3108,2108,80000,0,5417,340),
 (3109,2109,50000,0,3339,430),
 (3110,2110,80000,0,5417,340),
 (3111,2111,50000,0,3339,430),
 (3112,2114,0,0,0,0),
 (3113,2115,0,0,0,0),
 (3114,2116,0,0,0,0),
 (3121,2123,0,0,0,0),
 (3120,2122,0,0,0,0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `brandspecs` ENABLE KEYS */;


--
-- Definition of table `marklabs`.`brandspecsmetadata`
--

DROP TABLE IF EXISTS `marklabs`.`brandspecsmetadata`;
CREATE TABLE  `marklabs`.`brandspecsmetadata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandName` varchar(100) NOT NULL,
  `productionLevel` int(11) NOT NULL,
  `inventorySold` int(11) NOT NULL DEFAULT '0',
  `currentInventory` int(11) NOT NULL DEFAULT '0',
  `retailPrice` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2004 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`brandspecsmetadata`
--

/*!40000 ALTER TABLE `brandspecsmetadata` DISABLE KEYS */;
LOCK TABLES `brandspecsmetadata` WRITE;
INSERT INTO `marklabs`.`brandspecsmetadata` VALUES  (2000,'AYAN',80000,0,0,250),
 (2001,'ARIM',50000,0,0,400),
 (2002,'BYTE',80000,0,0,250),
 (2003,'BROM',50000,0,0,400);
UNLOCK TABLES;
/*!40000 ALTER TABLE `brandspecsmetadata` ENABLE KEYS */;


--
-- Definition of table `marklabs`.`channel_constants`
--

DROP TABLE IF EXISTS `marklabs`.`channel_constants`;
CREATE TABLE  `marklabs`.`channel_constants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `constName` varchar(1000) NOT NULL,
  `period` int(11) NOT NULL,
  `supermarket` float(10,4) NOT NULL,
  `generalStore` float(10,4) NOT NULL,
  `kiranaStore` float(10,4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`channel_constants`
--

/*!40000 ALTER TABLE `channel_constants` DISABLE KEYS */;
LOCK TABLES `channel_constants` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `channel_constants` ENABLE KEYS */;


--
-- Definition of table `marklabs`.`channelallocation`
--

DROP TABLE IF EXISTS `marklabs`.`channelallocation`;
CREATE TABLE  `marklabs`.`channelallocation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `supermarketAllocation` float(10,4) NOT NULL,
  `generalStoreAllocation` float(10,4) NOT NULL,
  `kiranaStoreAllocation` float(10,4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `channelAllocat_fk` (`brandId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`channelallocation`
--

/*!40000 ALTER TABLE `channelallocation` DISABLE KEYS */;
LOCK TABLES `channelallocation` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `channelallocation` ENABLE KEYS */;


--
-- Definition of table `marklabs`.`channelavailability`
--

DROP TABLE IF EXISTS `marklabs`.`channelavailability`;
CREATE TABLE  `marklabs`.`channelavailability` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `supermarketAvail` float(10,4) NOT NULL,
  `generalStoreAvail` float(10,4) NOT NULL,
  `kiranaStoreAvail` float(10,4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `channelAvail_fk` (`brandId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`channelavailability`
--

/*!40000 ALTER TABLE `channelavailability` DISABLE KEYS */;
LOCK TABLES `channelavailability` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `channelavailability` ENABLE KEYS */;


--
-- Definition of table `marklabs`.`channelmarketshare`
--

DROP TABLE IF EXISTS `marklabs`.`channelmarketshare`;
CREATE TABLE  `marklabs`.`channelmarketshare` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `supermarket_cms` float(10,4) NOT NULL,
  `generalStore_cms` float(10,4) NOT NULL,
  `kiranaStore_cms` float(10,4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `channelMarketSharebrandId_fk` (`brandId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`channelmarketshare`
--

/*!40000 ALTER TABLE `channelmarketshare` DISABLE KEYS */;
LOCK TABLES `channelmarketshare` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `channelmarketshare` ENABLE KEYS */;


--
-- Definition of table `marklabs`.`distributioncoverage`
--

DROP TABLE IF EXISTS `marklabs`.`distributioncoverage`;
CREATE TABLE  `marklabs`.`distributioncoverage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `supermarket_dc` float(10,4) NOT NULL,
  `generalStore_dc` float(10,4) NOT NULL,
  `kiranaStore_dc` float(10,4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `distributionCbrandId_fk` (`brandId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`distributioncoverage`
--

/*!40000 ALTER TABLE `distributioncoverage` DISABLE KEYS */;
LOCK TABLES `distributioncoverage` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `distributioncoverage` ENABLE KEYS */;


--
-- Definition of table `marklabs`.`fmdsvalues`
--

DROP TABLE IF EXISTS `marklabs`.`fmdsvalues`;
CREATE TABLE  `marklabs`.`fmdsvalues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `economicValue` float(10,4) NOT NULL,
  `qualityValue` float(10,4) NOT NULL,
  `appealValue` float(10,4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FMDSValues_fk` (`brandId`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`fmdsvalues`
--

/*!40000 ALTER TABLE `fmdsvalues` DISABLE KEYS */;
LOCK TABLES `fmdsvalues` WRITE;
INSERT INTO `marklabs`.`fmdsvalues` VALUES  (37,18,12.8755,5.7576,4.3434),
 (38,19,8.5837,11.9192,10.0000),
 (39,20,12.8755,5.7576,4.3434),
 (40,21,8.5837,11.9192,10.0000);
UNLOCK TABLES;
/*!40000 ALTER TABLE `fmdsvalues` ENABLE KEYS */;


--
-- Definition of table `marklabs`.`fsemanticvalues`
--

DROP TABLE IF EXISTS `marklabs`.`fsemanticvalues`;
CREATE TABLE  `marklabs`.`fsemanticvalues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `designValue` float(10,4) NOT NULL,
  `fragranceValue` float(10,4) NOT NULL,
  `persistenceValue` float(10,4) NOT NULL,
  `packagingValue` float(10,4) NOT NULL,
  `safetyValue` float(10,4) NOT NULL,
  `price` float(10,4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FSemanticValues_fk` (`brandId`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`fsemanticvalues`
--

/*!40000 ALTER TABLE `fsemanticvalues` DISABLE KEYS */;
LOCK TABLES `fsemanticvalues` WRITE;
INSERT INTO `marklabs`.`fsemanticvalues` VALUES  (41,18,2.4545,2.7576,3.2424,1.8485,1.8485,3.1373),
 (42,19,4.2727,4.5758,5.3030,3.3636,3.3636,4.4249),
 (43,20,2.4545,2.7576,3.2424,1.8485,1.8485,3.1373),
 (44,21,4.2727,4.5758,5.3030,3.3636,3.3636,4.4249);
UNLOCK TABLES;
/*!40000 ALTER TABLE `fsemanticvalues` ENABLE KEYS */;


--
-- Definition of table `marklabs`.`global_constants`
--

DROP TABLE IF EXISTS `marklabs`.`global_constants`;
CREATE TABLE  `marklabs`.`global_constants` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(1000) DEFAULT NULL,
  `VALUE` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`global_constants`
--

/*!40000 ALTER TABLE `global_constants` DISABLE KEYS */;
LOCK TABLES `global_constants` WRITE;
INSERT INTO `marklabs`.`global_constants` VALUES  (1,'CURRENT_PERIOD','1'),
 (2,'MINIMUM_PERIOD','0'),
 (3,'MAXIMUM_PERIOD','12'),
 (4,'INFLATION','2'),
 (5,'BLUE_BLOODS','BlueBloods'),
 (6,'RAFFLES','Raffles'),
 (7,'WANNABES','Wannabes'),
 (8,'STRUGGLERS','Strugglers'),
 (9,'DEPRIVED','Deprived');
UNLOCK TABLES;
/*!40000 ALTER TABLE `global_constants` ENABLE KEYS */;


--
-- Definition of table `marklabs`.`iadv_brandawareness`
--

DROP TABLE IF EXISTS `marklabs`.`iadv_brandawareness`;
CREATE TABLE  `marklabs`.`iadv_brandawareness` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `total_ba` float(10,4) DEFAULT '0.0000',
  `bluebloods_ba` float(10,4) DEFAULT '0.0000',
  `raffles_ba` float(10,4) DEFAULT '0.0000',
  `wannabes_ba` float(10,4) DEFAULT '0.0000',
  `strugglers_ba` float(10,4) DEFAULT '0.0000',
  `deprived_ba` float(10,4) DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  KEY `ba_fk` (`brandId`)
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`iadv_brandawareness`
--

/*!40000 ALTER TABLE `iadv_brandawareness` DISABLE KEYS */;
LOCK TABLES `iadv_brandawareness` WRITE;
INSERT INTO `marklabs`.`iadv_brandawareness` VALUES  (64,18,0.4520,0.4520,0.4520,0.4520,0.4520,0.4520),
 (65,19,0.4790,0.5130,0.6024,0.4270,0.4270,0.4270),
 (66,20,0.4520,0.4520,0.4520,0.4520,0.4520,0.4520),
 (67,21,0.4790,0.5130,0.6024,0.4270,0.4270,0.4270);
UNLOCK TABLES;
/*!40000 ALTER TABLE `iadv_brandawareness` ENABLE KEYS */;


--
-- Definition of table `marklabs`.`iadv_effectievsegexpense`
--

DROP TABLE IF EXISTS `marklabs`.`iadv_effectievsegexpense`;
CREATE TABLE  `marklabs`.`iadv_effectievsegexpense` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `totalEffAdvExpense` int(11) NOT NULL,
  `BlueBloods_EffSegExp` int(11) NOT NULL,
  `Raffles_EffSegExp` int(11) NOT NULL,
  `Wannabes_EffSegExp` int(11) NOT NULL,
  `Strugglers_EffSegExp` int(11) NOT NULL,
  `Deprived_EffSegExp` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `EffSegExp_fk` (`brandId`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`iadv_effectievsegexpense`
--

/*!40000 ALTER TABLE `iadv_effectievsegexpense` DISABLE KEYS */;
LOCK TABLES `iadv_effectievsegexpense` WRITE;
INSERT INTO `marklabs`.`iadv_effectievsegexpense` VALUES  (69,20,1015,203,203,203,203,203),
 (70,21,1678,436,537,235,235,235),
 (67,18,1015,203,203,203,203,203),
 (68,19,1678,436,537,235,235,235);
UNLOCK TABLES;
/*!40000 ALTER TABLE `iadv_effectievsegexpense` ENABLE KEYS */;


--
-- Definition of table `marklabs`.`iadv_segmentexpense`
--

DROP TABLE IF EXISTS `marklabs`.`iadv_segmentexpense`;
CREATE TABLE  `marklabs`.`iadv_segmentexpense` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `totalAdvExpense` int(11) NOT NULL,
  `BlueBloods_SegExp` int(11) NOT NULL,
  `Raffles_SegExp` int(11) NOT NULL,
  `Wannabes_SegExp` int(11) NOT NULL,
  `Strugglers_SegExp` int(11) NOT NULL,
  `Deprived_SegExp` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `SegExp_fk` (`brandId`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`iadv_segmentexpense`
--

/*!40000 ALTER TABLE `iadv_segmentexpense` DISABLE KEYS */;
LOCK TABLES `iadv_segmentexpense` WRITE;
INSERT INTO `marklabs`.`iadv_segmentexpense` VALUES  (72,20,1300,260,260,260,260,260),
 (73,21,2150,559,688,301,301,301),
 (70,18,1300,260,260,260,260,260),
 (71,19,2150,559,688,301,301,301);
UNLOCK TABLES;
/*!40000 ALTER TABLE `iadv_segmentexpense` ENABLE KEYS */;


--
-- Definition of table `marklabs`.`imdsvalues`
--

DROP TABLE IF EXISTS `marklabs`.`imdsvalues`;
CREATE TABLE  `marklabs`.`imdsvalues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `economicValue` float(10,4) NOT NULL,
  `qualityValue` float(10,4) NOT NULL,
  `appealValue` float(10,4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IMDSValues_fk` (`brandId`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`imdsvalues`
--

/*!40000 ALTER TABLE `imdsvalues` DISABLE KEYS */;
LOCK TABLES `imdsvalues` WRITE;
INSERT INTO `marklabs`.`imdsvalues` VALUES  (38,18,12.8755,5.7576,4.3434),
 (39,19,8.5837,11.9192,10.0000),
 (40,20,12.8755,5.7576,4.3434),
 (41,21,8.5837,11.9192,10.0000);
UNLOCK TABLES;
/*!40000 ALTER TABLE `imdsvalues` ENABLE KEYS */;


--
-- Definition of table `marklabs`.`isemanticvalues`
--

DROP TABLE IF EXISTS `marklabs`.`isemanticvalues`;
CREATE TABLE  `marklabs`.`isemanticvalues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `designValue` float(10,4) NOT NULL,
  `fragranceValue` float(10,4) NOT NULL,
  `persistenceValue` float(10,4) NOT NULL,
  `packagingValue` float(10,4) NOT NULL,
  `safetyValue` float(10,4) NOT NULL,
  `price` float(10,4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ISemanticValues_fk` (`brandId`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`isemanticvalues`
--

/*!40000 ALTER TABLE `isemanticvalues` DISABLE KEYS */;
LOCK TABLES `isemanticvalues` WRITE;
INSERT INTO `marklabs`.`isemanticvalues` VALUES  (41,18,2.4545,2.7576,3.2424,1.8485,1.8485,3.1373),
 (42,19,4.2727,4.5758,5.3030,3.3636,3.3636,4.4249),
 (43,20,2.4545,2.7576,3.2424,1.8485,1.8485,3.1373),
 (44,21,4.2727,4.5758,5.3030,3.3636,3.3636,4.4249);
UNLOCK TABLES;
/*!40000 ALTER TABLE `isemanticvalues` ENABLE KEYS */;


--
-- Definition of table `marklabs`.`marginoffered`
--

DROP TABLE IF EXISTS `marklabs`.`marginoffered`;
CREATE TABLE  `marklabs`.`marginoffered` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `supermarket_mo` float(10,4) NOT NULL,
  `generalStore_mo` float(10,4) NOT NULL,
  `kiranaStore_mo` float(10,4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `marginOffbrandId_fk` (`brandId`)
) ENGINE=MyISAM AUTO_INCREMENT=7120 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`marginoffered`
--

/*!40000 ALTER TABLE `marginoffered` DISABLE KEYS */;
LOCK TABLES `marginoffered` WRITE;
INSERT INTO `marklabs`.`marginoffered` VALUES  (7000,2000,20.0000,15.0000,10.0000),
 (7001,2001,20.0000,15.0000,10.0000),
 (7002,2002,20.0000,15.0000,10.0000),
 (7005,2005,20.0000,15.0000,10.0000),
 (7006,2006,20.0000,15.0000,10.0000),
 (7007,2007,20.0000,15.0000,10.0000),
 (7008,2008,20.0000,15.0000,10.0000),
 (7009,2009,20.0000,15.0000,10.0000),
 (7010,2010,20.0000,15.0000,10.0000),
 (7011,2011,20.0000,15.0000,10.0000),
 (7101,2101,4.0000,78.0000,15.0000),
 (7100,2100,20.0000,15.0000,10.0000),
 (7103,2103,20.0000,15.0000,10.0000),
 (7102,2102,20.0000,15.0000,10.0000),
 (7104,2104,20.0000,15.0000,10.0000),
 (7105,2105,20.0000,15.0000,10.0000),
 (7106,2106,20.0000,15.0000,10.0000),
 (7107,2107,20.0000,15.0000,10.0000),
 (7108,2108,20.0000,15.0000,10.0000),
 (7109,2109,20.0000,15.0000,10.0000),
 (7111,2111,20.0000,15.0000,10.0000),
 (7110,2110,20.0000,15.0000,10.0000),
 (7112,2116,0.0000,0.0000,0.0000),
 (7113,2117,0.0000,0.0000,0.0000),
 (7114,2118,0.0000,0.0000,0.0000),
 (7115,2119,0.0000,0.0000,0.0000),
 (7116,2120,0.0000,0.0000,0.0000),
 (7117,2121,0.0000,0.0000,0.0000),
 (7118,2122,0.0000,0.0000,0.0000),
 (7119,2123,0.0000,0.0000,0.0000);
UNLOCK TABLES;
/*!40000 ALTER TABLE `marginoffered` ENABLE KEYS */;


--
-- Definition of table `marklabs`.`marginoffered_metadata`
--

DROP TABLE IF EXISTS `marklabs`.`marginoffered_metadata`;
CREATE TABLE  `marklabs`.`marginoffered_metadata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandName` int(11) NOT NULL,
  `supermarket_mo` float(10,4) NOT NULL,
  `generalStore_mo` float(10,4) NOT NULL,
  `kiranaStore_mo` float(10,4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`marginoffered_metadata`
--

/*!40000 ALTER TABLE `marginoffered_metadata` DISABLE KEYS */;
LOCK TABLES `marginoffered_metadata` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `marginoffered_metadata` ENABLE KEYS */;


--
-- Definition of table `marklabs`.`mds_segment_idealvaluemap`
--

DROP TABLE IF EXISTS `marklabs`.`mds_segment_idealvaluemap`;
CREATE TABLE  `marklabs`.`mds_segment_idealvaluemap` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `segment` varchar(200) NOT NULL,
  `period` int(11) NOT NULL,
  `economyValue` float(10,4) NOT NULL,
  `qualityValue` float(10,4) NOT NULL,
  `appealValue` float(10,4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`mds_segment_idealvaluemap`
--

/*!40000 ALTER TABLE `mds_segment_idealvaluemap` DISABLE KEYS */;
LOCK TABLES `mds_segment_idealvaluemap` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `mds_segment_idealvaluemap` ENABLE KEYS */;


--
-- Definition of table `marklabs`.`mds_segment_relativeimp`
--

DROP TABLE IF EXISTS `marklabs`.`mds_segment_relativeimp`;
CREATE TABLE  `marklabs`.`mds_segment_relativeimp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `segment` varchar(200) NOT NULL,
  `period` int(11) NOT NULL,
  `economyValue` float(10,4) NOT NULL,
  `qualityValue` float(10,4) NOT NULL,
  `appealValue` float(10,4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`mds_segment_relativeimp`
--

/*!40000 ALTER TABLE `mds_segment_relativeimp` DISABLE KEYS */;
LOCK TABLES `mds_segment_relativeimp` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `mds_segment_relativeimp` ENABLE KEYS */;


--
-- Definition of table `marklabs`.`perceptualobj`
--

DROP TABLE IF EXISTS `marklabs`.`perceptualobj`;
CREATE TABLE  `marklabs`.`perceptualobj` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `scale` varchar(100) NOT NULL,
  `Dimension` varchar(100) NOT NULL,
  `objective` float(10,4) NOT NULL,
  `brandId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `perceptualObj_fk` (`brandId`)
) ENGINE=MyISAM AUTO_INCREMENT=5112 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`perceptualobj`
--

/*!40000 ALTER TABLE `perceptualobj` DISABLE KEYS */;
LOCK TABLES `perceptualobj` WRITE;
INSERT INTO `marklabs`.`perceptualobj` VALUES  (5000,'-','-',0.0000,2000),
 (5001,'-','-',0.0000,2001),
 (5002,'-','-',0.0000,2002),
 (5003,'-','-',0.0000,2003),
 (5004,'-','-',0.0000,2004),
 (5005,'-','-',0.0000,2005),
 (5006,'-','-',0.0000,2006),
 (5007,'-','-',0.0000,2007),
 (5008,'-','-',0.0000,2008),
 (5009,'-','-',0.0000,2009),
 (5010,'-','-',0.0000,2010),
 (5011,'-','-',0.0000,2011),
 (5101,'-','-',0.0000,2101),
 (5100,'-','-',0.0000,2100),
 (5103,'-','-',0.0000,2103),
 (5102,'-','-',0.0000,2102),
 (5104,'-','-',0.0000,2104),
 (5105,'-','-',0.0000,2105),
 (5106,'-','-',0.0000,2106),
 (5107,'-','-',0.0000,2107),
 (5108,'-','-',0.0000,2108),
 (5109,'-','-',0.0000,2109),
 (5111,'-','-',0.0000,2111),
 (5110,'-','-',0.0000,2110);
UNLOCK TABLES;
/*!40000 ALTER TABLE `perceptualobj` ENABLE KEYS */;


--
-- Definition of table `marklabs`.`period_constants`
--

DROP TABLE IF EXISTS `marklabs`.`period_constants`;
CREATE TABLE  `marklabs`.`period_constants` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PERIOD` int(11) DEFAULT NULL,
  `NAME` varchar(1000) DEFAULT NULL,
  `VALUE` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`period_constants`
--

/*!40000 ALTER TABLE `period_constants` DISABLE KEYS */;
LOCK TABLES `period_constants` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `period_constants` ENABLE KEYS */;


--
-- Definition of table `marklabs`.`purchaseintention_brand`
--

DROP TABLE IF EXISTS `marklabs`.`purchaseintention_brand`;
CREATE TABLE  `marklabs`.`purchaseintention_brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `blueBloods_PI` float(10,4) NOT NULL,
  `raffles_PI` float(10,4) NOT NULL,
  `wannabes_PI` float(10,4) NOT NULL,
  `strugglers_PI` float(10,4) NOT NULL,
  `deprived_PI` float(10,4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pi_fk` (`brandId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`purchaseintention_brand`
--

/*!40000 ALTER TABLE `purchaseintention_brand` DISABLE KEYS */;
LOCK TABLES `purchaseintention_brand` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `purchaseintention_brand` ENABLE KEYS */;


--
-- Definition of table `marklabs`.`purchaseintention_channel`
--

DROP TABLE IF EXISTS `marklabs`.`purchaseintention_channel`;
CREATE TABLE  `marklabs`.`purchaseintention_channel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `superMarkets_pi` float(10,4) NOT NULL,
  `generalStores_pi` float(10,4) NOT NULL,
  `kiranaStores_pi` float(10,4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `channelpi_fk` (`brandId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`purchaseintention_channel`
--

/*!40000 ALTER TABLE `purchaseintention_channel` DISABLE KEYS */;
LOCK TABLES `purchaseintention_channel` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `purchaseintention_channel` ENABLE KEYS */;


--
-- Definition of table `marklabs`.`rep_brand_awareness`
--

DROP TABLE IF EXISTS `marklabs`.`rep_brand_awareness`;
CREATE TABLE  `marklabs`.`rep_brand_awareness` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `period` int(11) DEFAULT NULL,
  `team` varchar(100) DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `blueblood` float DEFAULT NULL,
  `raffles` float DEFAULT NULL,
  `wannabes` float DEFAULT NULL,
  `strugglers` float DEFAULT NULL,
  `deprived` float DEFAULT NULL,
  `total` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`rep_brand_awareness`
--

/*!40000 ALTER TABLE `rep_brand_awareness` DISABLE KEYS */;
LOCK TABLES `rep_brand_awareness` WRITE;
INSERT INTO `marklabs`.`rep_brand_awareness` VALUES  (1,0,'Alpha','AMAN',0.3089,0.3095,0.3101,0.3095,0.3089,0.3095),
 (2,0,'Alpha','AYAN',0.32,0.3214,0.3228,0.3214,0.32,0.3213),
 (3,0,'Bravo','BOWN',0.3089,0.3095,0.3101,0.3095,0.3089,0.3095),
 (4,0,'Bravo','BYAN',0.32,0.3214,0.3228,0.3214,0.32,0.3213),
 (5,0,'Charlie','COWN',0.32,0.3214,0.3228,0.3214,0.32,0.3213),
 (6,0,'Charlie','CYAN',0.3089,0.3095,0.3101,0.3095,0.3089,0.3095),
 (7,0,'Delta','DINK',0.32,0.3214,0.3228,0.3214,0.32,0.3213),
 (8,0,'Delta','DOPE',0.3089,0.3095,0.3101,0.3095,0.3089,0.3095),
 (9,0,'Echo','ENOT',0.32,0.3214,0.3228,0.3214,0.32,0.3213),
 (10,0,'Echo','EPAD',0.3089,0.3095,0.3101,0.3095,0.3089,0.3095),
 (11,0,'Foxtrot','FASO',0.3089,0.3095,0.3101,0.3095,0.3089,0.3095),
 (12,0,'Foxtrot','FIED',0.32,0.3214,0.3228,0.3214,0.32,0.3213);
UNLOCK TABLES;
/*!40000 ALTER TABLE `rep_brand_awareness` ENABLE KEYS */;


--
-- Definition of table `marklabs`.`rep_brand_characteristics`
--

DROP TABLE IF EXISTS `marklabs`.`rep_brand_characteristics`;
CREATE TABLE  `marklabs`.`rep_brand_characteristics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `period` int(11) DEFAULT NULL,
  `team` varchar(100) DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `design` int(11) DEFAULT NULL,
  `fragrance` int(11) DEFAULT NULL,
  `persistence` int(11) DEFAULT NULL,
  `packaging` int(11) DEFAULT NULL,
  `safety` int(11) DEFAULT NULL,
  `basecost` float DEFAULT NULL,
  `retailprice` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`rep_brand_characteristics`
--

/*!40000 ALTER TABLE `rep_brand_characteristics` DISABLE KEYS */;
LOCK TABLES `rep_brand_characteristics` WRITE;
INSERT INTO `marklabs`.`rep_brand_characteristics` VALUES  (1,0,'Alpha','AMAN','Maintained',15,48,83,31,81,240,430),
 (2,0,'Alpha','AYAN','Maintained',78,82,29,78,21,195,340),
 (3,0,'Bravo','BOWN','Maintained',15,48,83,31,81,240,430),
 (4,0,'Bravo','BYAN','Maintained',78,82,29,78,21,195,340),
 (5,0,'Charlie','COWN','Maintained',78,82,29,78,21,195,340),
 (6,0,'Charlie','CYAN','Maintained',15,48,83,31,81,240,430),
 (7,0,'Delta','DINK','Maintained',78,82,29,78,21,195,340),
 (8,0,'Delta','DOPE','Maintained',15,48,83,31,81,240,430),
 (9,0,'Echo','ENOT','Maintained',78,82,29,78,21,195,340),
 (10,0,'Echo','EPAD','Maintained',15,48,83,31,81,240,430),
 (11,0,'Foxtrot','FASO','Maintained',15,48,83,31,81,240,430),
 (12,0,'Foxtrot','FIED','Maintained',78,82,29,78,21,195,340);
UNLOCK TABLES;
/*!40000 ALTER TABLE `rep_brand_characteristics` ENABLE KEYS */;


--
-- Definition of table `marklabs`.`rep_brand_pi`
--

DROP TABLE IF EXISTS `marklabs`.`rep_brand_pi`;
CREATE TABLE  `marklabs`.`rep_brand_pi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `period` int(11) DEFAULT NULL,
  `team` varchar(100) DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `blueblood` float DEFAULT NULL,
  `raffles` float DEFAULT NULL,
  `wannabes` float DEFAULT NULL,
  `strugglers` float DEFAULT NULL,
  `deprived` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`rep_brand_pi`
--

/*!40000 ALTER TABLE `rep_brand_pi` DISABLE KEYS */;
LOCK TABLES `rep_brand_pi` WRITE;
INSERT INTO `marklabs`.`rep_brand_pi` VALUES  (1,0,'Alpha','AMAN',0.122,0.0603,0.0231,0.0629,0.0481),
 (2,0,'Alpha','AYAN',0.0446,0.1064,0.1436,0.1038,0.1185),
 (3,0,'Bravo','BOWN',0.122,0.0603,0.0231,0.0629,0.0481),
 (4,0,'Bravo','BYAN',0.0446,0.1064,0.1436,0.1038,0.1185),
 (5,0,'Charlie','COWN',0.0446,0.1064,0.1436,0.1038,0.1185),
 (6,0,'Charlie','CYAN',0.122,0.0603,0.0231,0.0629,0.0481),
 (7,0,'Delta','DINK',0.0446,0.1064,0.1436,0.1038,0.1185),
 (8,0,'Delta','DOPE',0.122,0.0603,0.0231,0.0629,0.0481),
 (9,0,'Echo','ENOT',0.0446,0.1064,0.1436,0.1038,0.1185),
 (10,0,'Echo','EPAD',0.122,0.0603,0.0231,0.0629,0.0481),
 (11,0,'Foxtrot','FASO',0.122,0.0603,0.0231,0.0629,0.0481),
 (12,0,'Foxtrot','FIED',0.0446,0.1064,0.1436,0.1038,0.1185);
UNLOCK TABLES;
/*!40000 ALTER TABLE `rep_brand_pi` ENABLE KEYS */;


--
-- Definition of table `marklabs`.`rep_buying_behaviour`
--

DROP TABLE IF EXISTS `marklabs`.`rep_buying_behaviour`;
CREATE TABLE  `marklabs`.`rep_buying_behaviour` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `period` int(11) DEFAULT NULL,
  `segment` varchar(100) DEFAULT NULL,
  `supermarket` float DEFAULT NULL,
  `general` float DEFAULT NULL,
  `kirana` float DEFAULT NULL,
  `total` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`rep_buying_behaviour`
--

/*!40000 ALTER TABLE `rep_buying_behaviour` DISABLE KEYS */;
LOCK TABLES `rep_buying_behaviour` WRITE;
INSERT INTO `marklabs`.`rep_buying_behaviour` VALUES  (1,0,'Blue Bloods',0.6755,0.2762,0.0483,1),
 (2,0,'Raffles',0.5504,0.3764,0.0732,1),
 (3,0,'Wannabees',0.2584,0.5734,0.1682,1),
 (4,0,'Strugglers',0.1503,0.4421,0.4076,1),
 (5,0,'Deprived',0.0365,0.3349,0.6286,1),
 (6,0,'Total',0.281816,0.430135,0.288049,1);
UNLOCK TABLES;
/*!40000 ALTER TABLE `rep_buying_behaviour` ENABLE KEYS */;


--
-- Definition of table `marklabs`.`rep_competitive_adv`
--

DROP TABLE IF EXISTS `marklabs`.`rep_competitive_adv`;
CREATE TABLE  `marklabs`.`rep_competitive_adv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `period` int(11) DEFAULT NULL,
  `team` varchar(100) DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `blueblood` float DEFAULT NULL,
  `raffles` float DEFAULT NULL,
  `wannabes` float DEFAULT NULL,
  `strugglers` float DEFAULT NULL,
  `deprived` float DEFAULT NULL,
  `total` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`rep_competitive_adv`
--

/*!40000 ALTER TABLE `rep_competitive_adv` DISABLE KEYS */;
LOCK TABLES `rep_competitive_adv` WRITE;
INSERT INTO `marklabs`.`rep_competitive_adv` VALUES  (1,0,'Alpha','AMAN',220000,220000,220000,220000,220000,1.1e+06),
 (2,0,'Alpha','AYAN',330000,330000,330000,330000,330000,1.65e+06),
 (3,0,'Bravo','BOWN',220000,220000,220000,220000,220000,1.1e+06),
 (4,0,'Bravo','BYAN',330000,330000,330000,330000,330000,1.65e+06),
 (5,0,'Charlie','COWN',330000,330000,330000,330000,330000,1.65e+06),
 (6,0,'Charlie','CYAN',220000,220000,220000,220000,220000,1.1e+06),
 (7,0,'Delta','DINK',330000,330000,330000,330000,330000,1.65e+06),
 (8,0,'Delta','DOPE',220000,220000,220000,220000,220000,1.1e+06),
 (9,0,'Echo','ENOT',330000,330000,330000,330000,330000,1.65e+06),
 (10,0,'Echo','EPAD',220000,220000,220000,220000,220000,1.1e+06),
 (11,0,'Foxtrot','FASO',220000,220000,220000,220000,220000,1.1e+06),
 (12,0,'Foxtrot','FIED',330000,330000,330000,330000,330000,1.65e+06);
UNLOCK TABLES;
/*!40000 ALTER TABLE `rep_competitive_adv` ENABLE KEYS */;


--
-- Definition of table `marklabs`.`rep_competitive_margin`
--

DROP TABLE IF EXISTS `marklabs`.`rep_competitive_margin`;
CREATE TABLE  `marklabs`.`rep_competitive_margin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `period` int(11) DEFAULT NULL,
  `team` varchar(100) DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `supermarket` float DEFAULT NULL,
  `general` float DEFAULT NULL,
  `kirana` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`rep_competitive_margin`
--

/*!40000 ALTER TABLE `rep_competitive_margin` DISABLE KEYS */;
LOCK TABLES `rep_competitive_margin` WRITE;
INSERT INTO `marklabs`.`rep_competitive_margin` VALUES  (1,0,'Alpha','AMAN',0.2,0.15,0.1),
 (2,0,'Alpha','AYAN',0.2,0.15,0.1),
 (3,0,'Bravo','BOWN',0.2,0.15,0.1),
 (4,0,'Bravo','BYAN',0.2,0.15,0.1),
 (5,0,'Charlie','COWN',0.2,0.15,0.1),
 (6,0,'Charlie','CYAN',0.2,0.15,0.1),
 (7,0,'Delta','DINK',0.2,0.15,0.1),
 (8,0,'Delta','DOPE',0.2,0.15,0.1),
 (9,0,'Echo','ENOT',0.2,0.15,0.1),
 (10,0,'Echo','EPAD',0.2,0.15,0.1),
 (11,0,'Foxtrot','FASO',0.2,0.15,0.1),
 (12,0,'Foxtrot','FIED',0.2,0.15,0.1);
UNLOCK TABLES;
/*!40000 ALTER TABLE `rep_competitive_margin` ENABLE KEYS */;


--
-- Definition of table `marklabs`.`rep_competitive_sales_force`
--

DROP TABLE IF EXISTS `marklabs`.`rep_competitive_sales_force`;
CREATE TABLE  `marklabs`.`rep_competitive_sales_force` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `period` int(11) DEFAULT NULL,
  `team` varchar(100) DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `supermarket` float DEFAULT NULL,
  `general` float DEFAULT NULL,
  `kirana` float DEFAULT NULL,
  `total` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`rep_competitive_sales_force`
--

/*!40000 ALTER TABLE `rep_competitive_sales_force` DISABLE KEYS */;
LOCK TABLES `rep_competitive_sales_force` WRITE;
INSERT INTO `marklabs`.`rep_competitive_sales_force` VALUES  (1,0,'Alpha','AMAN',25,25,25,75),
 (2,0,'Alpha','AYAN',25,25,25,75),
 (3,0,'Bravo','BOWN',25,25,25,75),
 (4,0,'Bravo','BYAN',25,25,25,75),
 (5,0,'Charlie','COWN',25,25,25,75),
 (6,0,'Charlie','CYAN',25,25,25,75),
 (7,0,'Delta','DINK',25,25,25,75),
 (8,0,'Delta','DOPE',25,25,25,75),
 (9,0,'Echo','ENOT',25,25,25,75),
 (10,0,'Echo','EPAD',25,25,25,75),
 (11,0,'Foxtrot','FASO',25,25,25,75),
 (12,0,'Foxtrot','FIED',25,25,25,75);
UNLOCK TABLES;
/*!40000 ALTER TABLE `rep_competitive_sales_force` ENABLE KEYS */;


--
-- Definition of table `marklabs`.`rep_distribution_cov`
--

DROP TABLE IF EXISTS `marklabs`.`rep_distribution_cov`;
CREATE TABLE  `marklabs`.`rep_distribution_cov` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `period` int(11) DEFAULT NULL,
  `team` varchar(100) DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `supermarket` float DEFAULT NULL,
  `general` float DEFAULT NULL,
  `kirana` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`rep_distribution_cov`
--

/*!40000 ALTER TABLE `rep_distribution_cov` DISABLE KEYS */;
LOCK TABLES `rep_distribution_cov` WRITE;
INSERT INTO `marklabs`.`rep_distribution_cov` VALUES  (1,0,'Alpha','AMAN',0.448603,0.31883,0.376427),
 (2,0,'Alpha','AYAN',0.451192,0.340176,0.392592),
 (3,0,'Bravo','BOWN',0.448603,0.31883,0.376427),
 (4,0,'Bravo','BYAN',0.451192,0.340176,0.392592),
 (5,0,'Charlie','COWN',0.451192,0.340176,0.392592),
 (6,0,'Charlie','CYAN',0.448603,0.31883,0.376427),
 (7,0,'Delta','DINK',0.451192,0.340176,0.392592),
 (8,0,'Delta','DOPE',0.448603,0.31883,0.376427),
 (9,0,'Echo','ENOT',0.451192,0.340176,0.392592),
 (10,0,'Echo','EPAD',0.448603,0.31883,0.376427),
 (11,0,'Foxtrot','FASO',0.448603,0.31883,0.376427),
 (12,0,'Foxtrot','FIED',0.451192,0.340176,0.392592);
UNLOCK TABLES;
/*!40000 ALTER TABLE `rep_distribution_cov` ENABLE KEYS */;


--
-- Definition of table `marklabs`.`rep_distribution_cov_mkt_share`
--

DROP TABLE IF EXISTS `marklabs`.`rep_distribution_cov_mkt_share`;
CREATE TABLE  `marklabs`.`rep_distribution_cov_mkt_share` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `period` int(11) DEFAULT NULL,
  `team` varchar(100) DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `supermarket` float DEFAULT NULL,
  `general` float DEFAULT NULL,
  `kirana` float DEFAULT NULL,
  `total` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`rep_distribution_cov_mkt_share`
--

/*!40000 ALTER TABLE `rep_distribution_cov_mkt_share` DISABLE KEYS */;
LOCK TABLES `rep_distribution_cov_mkt_share` WRITE;
INSERT INTO `marklabs`.`rep_distribution_cov_mkt_share` VALUES  (1,0,'Alpha','AMAN',0.0648006,0.0640987,0.0635453,0.064142),
 (2,0,'Alpha','AYAN',0.101866,0.102568,0.103121,0.102525),
 (3,0,'Bravo','BOWN',0.0648006,0.0640987,0.0635453,0.064142),
 (4,0,'Bravo','BYAN',0.101866,0.102568,0.103121,0.102525),
 (5,0,'Charlie','COWN',0.101866,0.102568,0.103121,0.102525),
 (6,0,'Charlie','CYAN',0.0648006,0.0640987,0.0635453,0.064142),
 (7,0,'Delta','DINK',0.101866,0.102568,0.103121,0.102525),
 (8,0,'Delta','DOPE',0.0648006,0.0640987,0.0635453,0.064142),
 (9,0,'Echo','ENOT',0.101866,0.102568,0.103121,0.102525),
 (10,0,'Echo','EPAD',0.0648006,0.0640987,0.0635453,0.064142),
 (11,0,'Foxtrot','FASO',0.0648006,0.0640987,0.0635453,0.064142),
 (12,0,'Foxtrot','FIED',0.101866,0.102568,0.103121,0.102525),
 (13,0,'Total','',1,1,1,1),
 (14,0,'Total Sales(units)','',231186,259974,236304,727464),
 (15,0,'Total Sales(%Total)','',0.317797,0.35737,0.324833,1);
UNLOCK TABLES;
/*!40000 ALTER TABLE `rep_distribution_cov_mkt_share` ENABLE KEYS */;


--
-- Definition of table `marklabs`.`rep_market_share`
--

DROP TABLE IF EXISTS `marklabs`.`rep_market_share`;
CREATE TABLE  `marklabs`.`rep_market_share` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `period` int(11) DEFAULT NULL,
  `team` varchar(100) DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `blueblood` float DEFAULT NULL,
  `raffles` float DEFAULT NULL,
  `wannabes` float DEFAULT NULL,
  `strugglers` float DEFAULT NULL,
  `deprived` float DEFAULT NULL,
  `total` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`rep_market_share`
--

/*!40000 ALTER TABLE `rep_market_share` DISABLE KEYS */;
LOCK TABLES `rep_market_share` WRITE;
INSERT INTO `marklabs`.`rep_market_share` VALUES  (1,0,'Alpha','AMAN',0.123201,0.064327,0.0281186,0.0733171,0.0589295,0.064142),
 (2,0,'Alpha','AYAN',0.0434658,0.10234,0.138548,0.0933496,0.107737,0.102525),
 (3,0,'Bravo','BOWN',0.123201,0.064327,0.0281186,0.0733171,0.0589295,0.064142),
 (4,0,'Bravo','BYAN',0.0434658,0.10234,0.138548,0.0933496,0.107737,0.102525),
 (5,0,'Charlie','COWN',0.0434658,0.10234,0.138548,0.0933496,0.107737,0.102525),
 (6,0,'Charlie','CYAN',0.123201,0.064327,0.0281186,0.0733171,0.0589295,0.064142),
 (7,0,'Delta','DINK',0.0434658,0.10234,0.138548,0.0933496,0.107737,0.102525),
 (8,0,'Delta','DOPE',0.123201,0.064327,0.0281186,0.0733171,0.0589295,0.064142),
 (9,0,'Echo','ENOT',0.0434658,0.10234,0.138548,0.0933496,0.107737,0.102525),
 (10,0,'Echo','EPAD',0.123201,0.064327,0.0281186,0.0733171,0.0589295,0.064142),
 (11,0,'Foxtrot','FASO',0.123201,0.064327,0.0281186,0.0733171,0.0589295,0.064142),
 (12,0,'Foxtrot','FIED',0.0434658,0.10234,0.138548,0.0933496,0.107737,0.102525),
 (13,0,'Total','',1,1,1,1,1,1),
 (14,0,'Total Sales(units)','',85296,120456,172416,232026,117270,727464),
 (15,0,'Total Sales(%Total)','',0.117251,0.165583,0.23701,0.318952,0.161204,1);
UNLOCK TABLES;
/*!40000 ALTER TABLE `rep_market_share` ENABLE KEYS */;


--
-- Definition of table `marklabs`.`rep_project_characteristics`
--

DROP TABLE IF EXISTS `marklabs`.`rep_project_characteristics`;
CREATE TABLE  `marklabs`.`rep_project_characteristics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `period` int(11) DEFAULT NULL,
  `team` varchar(100) DEFAULT NULL,
  `resaearchproject` varchar(100) DEFAULT NULL,
  `design` int(11) DEFAULT NULL,
  `fragrance` int(11) DEFAULT NULL,
  `persistence` int(11) DEFAULT NULL,
  `packaging` int(11) DEFAULT NULL,
  `safety` int(11) DEFAULT NULL,
  `reqbasecost` int(11) DEFAULT NULL,
  `minbasecost` int(11) DEFAULT NULL,
  `budgetallocated` float DEFAULT NULL,
  `periodavailable` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`rep_project_characteristics`
--

/*!40000 ALTER TABLE `rep_project_characteristics` DISABLE KEYS */;
LOCK TABLES `rep_project_characteristics` WRITE;
INSERT INTO `marklabs`.`rep_project_characteristics` VALUES  (1,0,'Alpha','ARYAN',78,82,29,78,21,195,173,1.21343e+06,0),
 (2,0,'Alpha','ARMAN',15,48,83,31,81,240,199,869619,0),
 (3,0,'Bravo','BRYAN',78,82,29,78,21,195,173,1.21343e+06,0),
 (4,0,'Bravo','BROWN',15,48,83,31,81,240,199,869619,0),
 (5,0,'Charlie','CROWN',78,82,29,78,21,195,173,1.21343e+06,0),
 (6,0,'Charlie','CRYAN',15,48,83,31,81,240,199,869619,0),
 (7,0,'Delta','DROPE',15,48,83,31,81,240,199,869619,0),
 (8,0,'Delta','DRINK',78,82,29,78,21,195,173,1.21343e+06,0),
 (9,0,'Echo','ERNOT',78,82,29,78,21,195,173,1.21343e+06,0),
 (10,0,'Echo','ERPAD',15,48,83,31,81,240,199,869619,0),
 (11,0,'Foxtrot','FRIED',78,82,29,78,21,195,173,1.21343e+06,0),
 (12,0,'Foxtrot','FRASO',15,48,83,31,81,240,199,869619,0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `rep_project_characteristics` ENABLE KEYS */;


--
-- Definition of table `marklabs`.`rep_stock_market`
--

DROP TABLE IF EXISTS `marklabs`.`rep_stock_market`;
CREATE TABLE  `marklabs`.`rep_stock_market` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `period` int(11) DEFAULT NULL,
  `team_name` varchar(100) DEFAULT NULL,
  `spi` int(11) DEFAULT NULL,
  `market_capitalization` int(11) DEFAULT NULL,
  `current_net_contribution` int(11) DEFAULT NULL,
  `cum_net_contribution` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`rep_stock_market`
--

/*!40000 ALTER TABLE `rep_stock_market` DISABLE KEYS */;
LOCK TABLES `rep_stock_market` WRITE;
INSERT INTO `marklabs`.`rep_stock_market` VALUES  (1,0,'Alpha',153,226852335,5509996,5509996),
 (2,0,'Bravo',153,226852335,5509996,5509996),
 (3,0,'Charlie',153,226852335,5509996,5509996),
 (4,0,'Delta',153,226852335,5509996,5509996),
 (5,0,'Echo',153,226852335,5509996,5509996),
 (6,0,'Foxtrot',153,226852335,5509996,5509996);
UNLOCK TABLES;
/*!40000 ALTER TABLE `rep_stock_market` ENABLE KEYS */;


--
-- Definition of table `marklabs`.`reports`
--

DROP TABLE IF EXISTS `marklabs`.`reports`;
CREATE TABLE  `marklabs`.`reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `report_name` varchar(255) NOT NULL,
  `report_cost` float(10,4) NOT NULL,
  `period` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`reports`
--

/*!40000 ALTER TABLE `reports` DISABLE KEYS */;
LOCK TABLES `reports` WRITE;
INSERT INTO `marklabs`.`reports` VALUES  (1,'Project Characteristics',100.0000,1),
 (2,'Brand Characteristics',100.0000,1),
 (3,'Brand Awareness',100.0000,1),
 (4,'Brand Purchase Intention',100.0000,1),
 (5,'Market Share',100.0000,1),
 (6,'Co-Joint Analysis',100.0000,1),
 (7,'Multi Dimensional Scale',100.0000,1),
 (8,'Competitive Advertisement Expense',100.0000,1),
 (9,'Shopping Habits',100.0000,1),
 (10,'Distribution Coverage',100.0000,1),
 (11,'Distribution Market Share',100.0000,1),
 (12,'Competitive Sales Force',100.0000,1);
UNLOCK TABLES;
/*!40000 ALTER TABLE `reports` ENABLE KEYS */;


--
-- Definition of table `marklabs`.`reports_team_purchase_map`
--

DROP TABLE IF EXISTS `marklabs`.`reports_team_purchase_map`;
CREATE TABLE  `marklabs`.`reports_team_purchase_map` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `report_id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  `period` int(11) NOT NULL,
  `access_flag` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `report_purchase_reportId_fk` (`report_id`),
  KEY `report_purchase_teamId_fk` (`team_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`reports_team_purchase_map`
--

/*!40000 ALTER TABLE `reports_team_purchase_map` DISABLE KEYS */;
LOCK TABLES `reports_team_purchase_map` WRITE;
INSERT INTO `marklabs`.`reports_team_purchase_map` VALUES  (1,1,1,2,'Y'),
 (2,2,1,2,'N'),
 (3,3,1,2,'N'),
 (4,4,1,2,'Y'),
 (5,5,1,2,'N'),
 (6,6,1,2,'Y'),
 (7,7,1,2,'Y'),
 (8,8,1,2,'Y'),
 (9,9,1,2,'N'),
 (10,10,1,2,'N'),
 (11,11,1,2,'Y'),
 (12,12,1,2,'Y');
UNLOCK TABLES;
/*!40000 ALTER TABLE `reports_team_purchase_map` ENABLE KEYS */;


--
-- Definition of table `marklabs`.`researchproject`
--

DROP TABLE IF EXISTS `marklabs`.`researchproject`;
CREATE TABLE  `marklabs`.`researchproject` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PROJECTNAME` varchar(255) NOT NULL,
  `DESIGN` int(11) NOT NULL,
  `FRAGRANCE` int(11) NOT NULL,
  `PERSISTENCE` int(11) NOT NULL,
  `PACKAGING` int(11) NOT NULL,
  `SAFETY` int(11) NOT NULL,
  `MINIMUMBASECOST` int(11) NOT NULL,
  `REQUESTEDBASECOST` int(11) NOT NULL,
  `ALLOCATEDBUDGET` int(11) NOT NULL,
  `CURRENTPERIOD` int(11) NOT NULL,
  `ISAVAILABLE` char(1) NOT NULL,
  `BUDGETDEFICIT` int(11) NOT NULL,
  `PROJECTFINISHPERIOD` int(11) DEFAULT NULL,
  `TEAMID` int(11) NOT NULL,
  `RequiredBudgetAtMinBC` int(11) NOT NULL,
  `RequiredBudgetAtReqBC` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `TEAMID_FK` (`TEAMID`),
  CONSTRAINT `TEAMID_FK` FOREIGN KEY (`TEAMID`) REFERENCES `teams` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1122 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`researchproject`
--

/*!40000 ALTER TABLE `researchproject` DISABLE KEYS */;
LOCK TABLES `researchproject` WRITE;
INSERT INTO `marklabs`.`researchproject` VALUES  (1000,'ARYAN',78,82,29,78,21,173,195,1213434,0,'Y',0,0,1,1302596,1213434),
 (1001,'ARMAN',15,48,83,31,81,199,240,869619,0,'Y',0,0,1,1443120,869619),
 (1002,'BRYAN',78,82,29,78,21,173,195,1213434,0,'Y',0,0,2,1302596,1213434),
 (1003,'BROWN',15,48,83,31,81,199,240,869619,0,'Y',0,0,2,1443120,869619),
 (1004,'CROWN',78,82,29,78,21,173,195,1213434,0,'Y',0,0,3,1302596,1213434),
 (1005,'CRYAN',15,48,83,31,81,199,240,869619,0,'Y',0,0,3,1443120,869619),
 (1006,'DRINK',78,82,29,78,21,173,195,1213434,0,'Y',0,0,4,1302596,1213434),
 (1007,'DROPE',15,48,83,31,81,199,240,869619,0,'Y',0,0,4,1443120,869619),
 (1008,'ERNOT',78,82,29,78,21,173,195,1213434,0,'Y',0,0,5,1302596,1213434),
 (1009,'ERPAD',15,48,83,31,81,199,240,869619,0,'Y',0,0,5,1443120,869619),
 (1010,'FRIED',78,82,29,78,21,173,195,1213434,0,'Y',0,0,6,1302596,1213434),
 (1011,'FRASO',15,48,83,31,81,199,240,869619,0,'Y',0,0,6,1443120,869619),
 (1100,'ARYAN',78,82,29,78,21,178,201,1213434,1,'Y',0,0,1,1302596,1213434),
 (1101,'ARMAN',15,48,83,31,81,205,247,869619,1,'Y',0,0,1,1443120,869619),
 (1102,'BRYAN',78,82,29,78,21,178,201,1213434,1,'Y',0,0,2,1302596,1213434),
 (1103,'BROWN',15,48,83,31,81,205,247,869619,1,'Y',0,0,2,1443120,869619),
 (1104,'CROWN',78,82,29,78,21,178,201,1213434,1,'Y',0,0,3,1302596,1213434),
 (1105,'CRYAN',15,48,83,31,81,205,247,869619,1,'Y',0,0,3,1443120,869619),
 (1106,'DRINK',78,82,29,78,21,178,201,1213434,1,'Y',0,0,4,1302596,1213434),
 (1107,'DROPE',15,48,83,31,81,205,247,869619,1,'Y',0,0,4,1443120,869619),
 (1108,'ERNOT',78,82,29,78,21,178,201,1213434,1,'Y',0,0,5,1302596,1213434),
 (1109,'ERPAD',15,48,83,31,81,205,247,869619,1,'Y',0,0,5,1443120,869619),
 (1110,'FRIED',78,82,29,78,21,178,201,1213434,1,'Y',0,0,6,1302596,1213434),
 (1111,'FRASO',15,48,83,31,81,205,247,869619,1,'Y',0,0,6,1443120,869619),
 (1119,'Rnd1',15,48,83,31,81,199,300,1071,1,'Y',0,2,1,2152,1071),
 (1120,'fadsfd',78,82,29,78,21,173,180,1617,1,'Y',0,2,1,1864,1617),
 (1121,'sdf',1,0,1,1,1,25,25,992,1,'Y',0,2,1,992,992);
UNLOCK TABLES;
/*!40000 ALTER TABLE `researchproject` ENABLE KEYS */;


--
-- Definition of table `marklabs`.`researchproject_metadata`
--

DROP TABLE IF EXISTS `marklabs`.`researchproject_metadata`;
CREATE TABLE  `marklabs`.`researchproject_metadata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `projectName` varchar(255) NOT NULL,
  `design` int(11) NOT NULL,
  `fragrance` int(11) NOT NULL,
  `persistence` int(11) NOT NULL,
  `packaging` int(11) NOT NULL,
  `safety` int(11) NOT NULL,
  `teamName` varchar(255) NOT NULL,
  `scenario` int(11) DEFAULT NULL,
  `requestedBaseCost` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `projectNameMD_unq` (`projectName`),
  KEY `teamName_fk` (`teamName`),
  CONSTRAINT `teamName_fk` FOREIGN KEY (`teamName`) REFERENCES `team_metadata` (`teamName`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`researchproject_metadata`
--

/*!40000 ALTER TABLE `researchproject_metadata` DISABLE KEYS */;
LOCK TABLES `researchproject_metadata` WRITE;
INSERT INTO `marklabs`.`researchproject_metadata` VALUES  (1,'ARYAN',25,30,38,15,15,'Alpha',1,140),
 (2,'ARMAN',55,60,72,40,40,'Alpha',1,250),
 (3,'BRYAN',25,30,38,15,15,'Bravo',1,140),
 (4,'BRMAN',55,60,72,40,40,'Bravo',1,250);
UNLOCK TABLES;
/*!40000 ALTER TABLE `researchproject_metadata` ENABLE KEYS */;


--
-- Definition of table `marklabs`.`salesforce`
--

DROP TABLE IF EXISTS `marklabs`.`salesforce`;
CREATE TABLE  `marklabs`.`salesforce` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `supermarket_sf` float(10,4) NOT NULL,
  `generalStore_sf` float(10,4) NOT NULL,
  `kiranaStore_sf` float(10,4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `salesForcebrandId_fk` (`brandId`)
) ENGINE=MyISAM AUTO_INCREMENT=6120 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`salesforce`
--

/*!40000 ALTER TABLE `salesforce` DISABLE KEYS */;
LOCK TABLES `salesforce` WRITE;
INSERT INTO `marklabs`.`salesforce` VALUES  (6000,2000,25.0000,25.0000,25.0000),
 (6001,2001,25.0000,25.0000,25.0000),
 (6002,2002,25.0000,25.0000,25.0000),
 (6003,2003,25.0000,25.0000,25.0000),
 (6004,2004,25.0000,25.0000,25.0000),
 (6005,2005,25.0000,25.0000,25.0000),
 (6006,2006,25.0000,25.0000,25.0000),
 (6007,2007,25.0000,25.0000,25.0000),
 (6008,2008,25.0000,25.0000,25.0000),
 (6009,2009,25.0000,25.0000,25.0000),
 (6010,2010,25.0000,25.0000,25.0000),
 (6011,2011,25.0000,25.0000,25.0000),
 (6101,2101,2.5000,100.0000,150.0000),
 (6100,2100,2.5000,100.0000,150.0000),
 (6103,2103,25.0000,25.0000,25.0000),
 (6102,2102,25.0000,25.0000,25.0000),
 (6104,2104,25.0000,25.0000,25.0000),
 (6105,2105,25.0000,25.0000,25.0000),
 (6106,2106,25.0000,25.0000,25.0000),
 (6107,2107,25.0000,25.0000,25.0000),
 (6108,2108,25.0000,25.0000,25.0000),
 (6109,2109,25.0000,25.0000,25.0000),
 (6111,2111,25.0000,25.0000,25.0000),
 (6110,2110,25.0000,25.0000,25.0000),
 (6112,2116,0.0000,0.0000,0.0000),
 (6113,2117,0.0000,0.0000,0.0000),
 (6114,2118,0.0000,0.0000,0.0000),
 (6115,2119,0.0000,0.0000,0.0000),
 (6116,2120,0.0000,0.0000,0.0000),
 (6117,2121,0.0000,0.0000,0.0000),
 (6118,2122,0.0000,0.0000,0.0000),
 (6119,2123,0.0000,0.0000,0.0000);
UNLOCK TABLES;
/*!40000 ALTER TABLE `salesforce` ENABLE KEYS */;


--
-- Definition of table `marklabs`.`salesforce_metadata`
--

DROP TABLE IF EXISTS `marklabs`.`salesforce_metadata`;
CREATE TABLE  `marklabs`.`salesforce_metadata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandName` int(11) NOT NULL,
  `supermarket_sf` float(10,4) NOT NULL,
  `generalStore_sf` float(10,4) NOT NULL,
  `kiranaStore_sf` float(10,4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`salesforce_metadata`
--

/*!40000 ALTER TABLE `salesforce_metadata` DISABLE KEYS */;
LOCK TABLES `salesforce_metadata` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `salesforce_metadata` ENABLE KEYS */;


--
-- Definition of table `marklabs`.`segment_constants`
--

DROP TABLE IF EXISTS `marklabs`.`segment_constants`;
CREATE TABLE  `marklabs`.`segment_constants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `period` int(11) DEFAULT NULL,
  `Seg_BlueBloods` float(10,4) DEFAULT '0.0000',
  `Seg_Raffles` float(10,4) DEFAULT '0.0000',
  `Seg_Wannabes` float(10,4) DEFAULT '0.0000',
  `Seg_Strugglers` float(10,4) DEFAULT '0.0000',
  `Seg_Deprived` float(10,4) DEFAULT '0.0000',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`segment_constants`
--

/*!40000 ALTER TABLE `segment_constants` DISABLE KEYS */;
LOCK TABLES `segment_constants` WRITE;
INSERT INTO `marklabs`.`segment_constants` VALUES  (2,'PRINT_REACH',0,0.6000,0.6000,0.6000,0.6000,0.6000),
 (3,'TELEVISION_REACH',0,0.7500,0.7500,0.7500,0.7500,0.7500),
 (4,'RADIO_REACH',0,0.5000,0.5000,0.5000,0.5000,0.5000),
 (5,'INTERNET_REACH',0,0.1500,0.1500,0.1500,0.1500,0.1500),
 (6,'SYNERGY_PRINT_TELEVISION',0,0.0500,0.0500,0.0500,0.0500,0.0500),
 (7,'SYNERGY_PRINT_RADIO',0,0.1000,0.1000,0.1000,0.1000,0.1000),
 (8,'SYNERGY_PRINT_INTERNET',0,0.1500,0.1500,0.1500,0.1500,0.1500),
 (9,'SYNERGY_TELEVISION_RADIO',0,0.1000,0.1000,0.1000,0.1000,0.1000),
 (10,'SYNERGY_TELEVISION_INTERNET',0,0.0500,0.0500,0.0500,0.0500,0.0500),
 (11,'SYNERGY_RADIO_INTERNET',0,0.1000,0.1000,0.1000,0.1000,0.1000);
UNLOCK TABLES;
/*!40000 ALTER TABLE `segment_constants` ENABLE KEYS */;


--
-- Definition of table `marklabs`.`segmentavailability_genstore`
--

DROP TABLE IF EXISTS `marklabs`.`segmentavailability_genstore`;
CREATE TABLE  `marklabs`.`segmentavailability_genstore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `Seg_BlueBloods_Avail` float(10,4) DEFAULT '0.0000',
  `Seg_Raffles_Avail` float(10,4) DEFAULT '0.0000',
  `Seg_Wannabes_Avail` float(10,4) DEFAULT '0.0000',
  `Seg_Strugglers_Avail` float(10,4) DEFAULT '0.0000',
  `Seg_Deprived_Avail` float(10,4) DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  KEY `segAvailGS_fk` (`brandId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`segmentavailability_genstore`
--

/*!40000 ALTER TABLE `segmentavailability_genstore` DISABLE KEYS */;
LOCK TABLES `segmentavailability_genstore` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `segmentavailability_genstore` ENABLE KEYS */;


--
-- Definition of table `marklabs`.`segmentavailability_kiranastore`
--

DROP TABLE IF EXISTS `marklabs`.`segmentavailability_kiranastore`;
CREATE TABLE  `marklabs`.`segmentavailability_kiranastore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `Seg_BlueBloods_Avail` float(10,4) DEFAULT '0.0000',
  `Seg_Raffles_Avail` float(10,4) DEFAULT '0.0000',
  `Seg_Wannabes_Avail` float(10,4) DEFAULT '0.0000',
  `Seg_Strugglers_Avail` float(10,4) DEFAULT '0.0000',
  `Seg_Deprived_Avail` float(10,4) DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  KEY `segAvailKS_fk` (`brandId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`segmentavailability_kiranastore`
--

/*!40000 ALTER TABLE `segmentavailability_kiranastore` DISABLE KEYS */;
LOCK TABLES `segmentavailability_kiranastore` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `segmentavailability_kiranastore` ENABLE KEYS */;


--
-- Definition of table `marklabs`.`segmentavailability_supermarket`
--

DROP TABLE IF EXISTS `marklabs`.`segmentavailability_supermarket`;
CREATE TABLE  `marklabs`.`segmentavailability_supermarket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `Seg_BlueBloods_Avail` float(10,4) DEFAULT '0.0000',
  `Seg_Raffles_Avail` float(10,4) DEFAULT '0.0000',
  `Seg_Wannabes_Avail` float(10,4) DEFAULT '0.0000',
  `Seg_Strugglers_Avail` float(10,4) DEFAULT '0.0000',
  `Seg_Deprived_Avail` float(10,4) DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  KEY `segAvailMS_fk` (`brandId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`segmentavailability_supermarket`
--

/*!40000 ALTER TABLE `segmentavailability_supermarket` DISABLE KEYS */;
LOCK TABLES `segmentavailability_supermarket` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `segmentavailability_supermarket` ENABLE KEYS */;


--
-- Definition of table `marklabs`.`segmentmarketshare_genstore`
--

DROP TABLE IF EXISTS `marklabs`.`segmentmarketshare_genstore`;
CREATE TABLE  `marklabs`.`segmentmarketshare_genstore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `Seg_BlueBloods_ms` float(10,4) DEFAULT '0.0000',
  `Seg_Raffles_ms` float(10,4) DEFAULT '0.0000',
  `Seg_Wannabes_ms` float(10,4) DEFAULT '0.0000',
  `Seg_Strugglers_ms` float(10,4) DEFAULT '0.0000',
  `Seg_Deprived_ms` float(10,4) DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  KEY `segMsGen_fk` (`brandId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`segmentmarketshare_genstore`
--

/*!40000 ALTER TABLE `segmentmarketshare_genstore` DISABLE KEYS */;
LOCK TABLES `segmentmarketshare_genstore` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `segmentmarketshare_genstore` ENABLE KEYS */;


--
-- Definition of table `marklabs`.`segmentmarketshare_kiranastore`
--

DROP TABLE IF EXISTS `marklabs`.`segmentmarketshare_kiranastore`;
CREATE TABLE  `marklabs`.`segmentmarketshare_kiranastore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `Seg_BlueBloods_ms` float(10,4) DEFAULT '0.0000',
  `Seg_Raffles_ms` float(10,4) DEFAULT '0.0000',
  `Seg_Wannabes_ms` float(10,4) DEFAULT '0.0000',
  `Seg_Strugglers_ms` float(10,4) DEFAULT '0.0000',
  `Seg_Deprived_ms` float(10,4) DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  KEY `segMsKir_fk` (`brandId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`segmentmarketshare_kiranastore`
--

/*!40000 ALTER TABLE `segmentmarketshare_kiranastore` DISABLE KEYS */;
LOCK TABLES `segmentmarketshare_kiranastore` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `segmentmarketshare_kiranastore` ENABLE KEYS */;


--
-- Definition of table `marklabs`.`segmentmarketshare_supermarket`
--

DROP TABLE IF EXISTS `marklabs`.`segmentmarketshare_supermarket`;
CREATE TABLE  `marklabs`.`segmentmarketshare_supermarket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `Seg_BlueBloods_ms` float(10,4) DEFAULT '0.0000',
  `Seg_Raffles_ms` float(10,4) DEFAULT '0.0000',
  `Seg_Wannabes_ms` float(10,4) DEFAULT '0.0000',
  `Seg_Strugglers_ms` float(10,4) DEFAULT '0.0000',
  `Seg_Deprived_ms` float(10,4) DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  KEY `segMsSupMa_fk` (`brandId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`segmentmarketshare_supermarket`
--

/*!40000 ALTER TABLE `segmentmarketshare_supermarket` DISABLE KEYS */;
LOCK TABLES `segmentmarketshare_supermarket` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `segmentmarketshare_supermarket` ENABLE KEYS */;


--
-- Definition of table `marklabs`.`semantic_mds_map`
--

DROP TABLE IF EXISTS `marklabs`.`semantic_mds_map`;
CREATE TABLE  `marklabs`.`semantic_mds_map` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `MDSScale` varchar(100) NOT NULL,
  `DesignEq` float(10,4) NOT NULL,
  `fragranceEq` float(10,4) NOT NULL,
  `persistenceEq` float(10,4) NOT NULL,
  `packagingEq` float(10,4) NOT NULL,
  `safetyEq` float(10,4) NOT NULL,
  `priceEq` float(10,4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`semantic_mds_map`
--

/*!40000 ALTER TABLE `semantic_mds_map` DISABLE KEYS */;
LOCK TABLES `semantic_mds_map` WRITE;
INSERT INTO `marklabs`.`semantic_mds_map` VALUES  (1,'Economy',0.0000,0.0000,0.0000,0.0000,0.0000,1.0000),
 (2,'Quality',0.0000,0.2000,0.5000,0.0000,0.3000,0.0000),
 (3,'Appeal',0.3000,0.3000,0.0000,0.4000,0.0000,0.0000);
UNLOCK TABLES;
/*!40000 ALTER TABLE `semantic_mds_map` ENABLE KEYS */;


--
-- Definition of table `marklabs`.`semantic_segment_idealvaluemap`
--

DROP TABLE IF EXISTS `marklabs`.`semantic_segment_idealvaluemap`;
CREATE TABLE  `marklabs`.`semantic_segment_idealvaluemap` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `segment` varchar(200) NOT NULL,
  `period` int(11) NOT NULL,
  `designValue` float(10,4) NOT NULL,
  `fragranceValue` float(10,4) NOT NULL,
  `persistenceValue` float(10,4) NOT NULL,
  `packagingValue` float(10,4) NOT NULL,
  `safetyValue` float(10,4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`semantic_segment_idealvaluemap`
--

/*!40000 ALTER TABLE `semantic_segment_idealvaluemap` DISABLE KEYS */;
LOCK TABLES `semantic_segment_idealvaluemap` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `semantic_segment_idealvaluemap` ENABLE KEYS */;


--
-- Definition of table `marklabs`.`team_metadata`
--

DROP TABLE IF EXISTS `marklabs`.`team_metadata`;
CREATE TABLE  `marklabs`.`team_metadata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teamName` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `teamMetadat_unq` (`teamName`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`team_metadata`
--

/*!40000 ALTER TABLE `team_metadata` DISABLE KEYS */;
LOCK TABLES `team_metadata` WRITE;
INSERT INTO `marklabs`.`team_metadata` VALUES  (1,'Alpha'),
 (2,'Bravo');
UNLOCK TABLES;
/*!40000 ALTER TABLE `team_metadata` ENABLE KEYS */;


--
-- Definition of table `marklabs`.`teams`
--

DROP TABLE IF EXISTS `marklabs`.`teams`;
CREATE TABLE  `marklabs`.`teams` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TEAMNAME` varchar(255) NOT NULL,
  `TEAMUSERNAME` varchar(255) NOT NULL,
  `TEAMPASSWORD` varchar(255) NOT NULL,
  `currentTeamPeriod` int(11) NOT NULL,
  `budget` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `TEAMUSERNAME_UNQ` (`TEAMUSERNAME`),
  UNIQUE KEY `TEAMNAME_UNQ` (`TEAMNAME`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`teams`
--

/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
LOCK TABLES `teams` WRITE;
INSERT INTO `marklabs`.`teams` VALUES  (1,'Alpha','Alpha','Alpha',1,20666),
 (2,'Bravo','Bravo','Bravo',1,25000),
 (3,'Charlie','Charlie','Charlie',1,25000),
 (4,'Delta','Delta','Delta',1,25000),
 (5,'Echo','Echo','Echo',1,25000),
 (6,'Foxtrot','Foxtrot','Foxtrot',1,25000);
UNLOCK TABLES;
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;


--
-- Definition of table `marklabs`.`user_table`
--

DROP TABLE IF EXISTS `marklabs`.`user_table`;
CREATE TABLE  `marklabs`.`user_table` (
  `USERID` int(11) NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(255) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL,
  `USERTYPEID` int(11) NOT NULL,
  PRIMARY KEY (`USERID`),
  UNIQUE KEY `USERNAME_UNQ` (`USERNAME`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`user_table`
--

/*!40000 ALTER TABLE `user_table` DISABLE KEYS */;
LOCK TABLES `user_table` WRITE;
INSERT INTO `marklabs`.`user_table` VALUES  (1,'admin','admin',1);
UNLOCK TABLES;
/*!40000 ALTER TABLE `user_table` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
