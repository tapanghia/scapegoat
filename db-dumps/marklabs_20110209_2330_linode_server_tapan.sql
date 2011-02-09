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
  `supermarket_amo` int(11) NOT NULL,
  `generalStore_amo` int(11) NOT NULL,
  `kiranaStore_amo` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`averageMarginOffered`
--

/*!40000 ALTER TABLE `averageMarginOffered` DISABLE KEYS */;
LOCK TABLES `averageMarginOffered` WRITE;
INSERT INTO `marklabs`.`averageMarginOffered` VALUES  (1,20,15,10);
UNLOCK TABLES;
/*!40000 ALTER TABLE `averageMarginOffered` ENABLE KEYS */;


--
-- Definition of table `marklabs`.`brand_result`
--

DROP TABLE IF EXISTS `marklabs`.`brand_result`;
CREATE TABLE  `marklabs`.`brand_result` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `period` int(11) NOT NULL,
  `brand_name` varchar(50) NOT NULL,
  `base_rnd_name` varchar(50) DEFAULT NULL,
  `ave_retail_price` int(12) DEFAULT NULL,
  `revenues` int(14) DEFAULT NULL,
  `units_produced` int(12) DEFAULT NULL,
  `transfer_price` int(12) DEFAULT NULL,
  `cost_of_goods_sold` int(14) DEFAULT NULL,
  `units_in_inventory` int(12) DEFAULT NULL,
  `inventory_holding_cost` int(14) DEFAULT NULL,
  `disposal_loss` int(14) DEFAULT NULL,
  `contribution_before_marketing` int(14) DEFAULT NULL,
  `adv_expense` int(14) DEFAULT NULL,
  `adv_research_expense` int(14) DEFAULT NULL,
  `sales_force_expense` int(14) DEFAULT NULL,
  `contributing_after_marketing` int(14) DEFAULT NULL,
  `units_sold` int(12) DEFAULT NULL,
  `team` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`brand_result`
--

/*!40000 ALTER TABLE `brand_result` DISABLE KEYS */;
LOCK TABLES `brand_result` WRITE;
INSERT INTO `marklabs`.`brand_result` VALUES  (1,0,'AMAN','ARMAN',366,16982773,50000,236,10959840,3560,84016,0,5938917,1000000,100000,1500000,3338917,46440,'Ashish'),
 (2,0,'AYAN','ARYAN',289,21467243,80000,189,14030037,5767,108996,0,7328210,1500000,150000,1500000,4178210,74233,'Ashish'),
 (3,0,'GOWN','GROWN',366,16982773,50000,236,10959840,3560,84016,0,5938917,1000000,100000,1500000,3338917,46440,'Geetu'),
 (4,0,'GYAN','GRYAN',289,21467243,80000,189,14030037,5767,108996,0,7328210,1500000,150000,1500000,4178210,74233,'Geetu'),
 (5,0,'NOWN','NROWN',289,21467243,80000,189,14030037,5767,108996,0,7328210,1500000,150000,1500000,4178210,74233,'Nandu'),
 (6,0,'NYAN','NRYAN',366,16982773,50000,236,10959840,3560,84016,0,5938917,1000000,100000,1500000,3338917,46440,'Nandu'),
 (7,0,'SINK','SRINK',289,21467243,80000,189,14030037,5767,108996,0,7328210,1500000,150000,1500000,4178210,74233,'Shweta'),
 (8,0,'SOPE','SROPE',366,16982773,50000,236,10959840,3560,84016,0,5938917,1000000,100000,1500000,3338917,46440,'Shweta'),
 (9,0,'TNOT','TRNOT',289,21467243,80000,189,14030037,5767,108996,0,7328210,1500000,150000,1500000,4178210,74233,'Tanmaya'),
 (10,0,'TPAD','TRPAD',366,16982773,50000,236,10959840,3560,84016,0,5938917,1000000,100000,1500000,3338917,46440,'Tanmaya'),
 (11,0,'VASO','VRASO',366,16982773,50000,236,10959840,3560,84016,0,5938917,1000000,100000,1500000,3338917,46440,'Vishnu'),
 (12,0,'VIED','VRIED',289,21467243,80000,189,14030037,5767,108996,0,7328210,1500000,150000,1500000,4178210,74233,'Vishnu');
UNLOCK TABLES;
/*!40000 ALTER TABLE `brand_result` ENABLE KEYS */;


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
) ENGINE=MyISAM AUTO_INCREMENT=4112 DEFAULT CHARSET=latin1;

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
 (4100,2100,0,0,20,20,20,20,20,25,25,25,25),
 (4101,2101,0,0,20,20,20,20,20,25,25,25,25),
 (4102,2102,0,0,20,20,20,20,20,25,25,25,25),
 (4103,2103,0,0,20,20,20,20,20,25,25,25,25),
 (4104,2104,0,0,20,20,20,20,20,25,25,25,25),
 (4105,2105,0,0,20,20,20,20,20,25,25,25,25),
 (4106,2106,0,0,20,20,20,20,20,25,25,25,25),
 (4107,2107,0,0,20,20,20,20,20,25,25,25,25),
 (4108,2108,0,0,20,20,20,20,20,25,25,25,25),
 (4109,2109,0,0,20,20,20,20,20,25,25,25,25),
 (4110,2110,0,0,20,20,20,20,20,25,25,25,25),
 (4111,2111,0,0,20,20,20,20,20,25,25,25,25);
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
) ENGINE=InnoDB AUTO_INCREMENT=2112 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`brands`
--

/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
LOCK TABLES `brands` WRITE;
INSERT INTO `marklabs`.`brands` VALUES  (2000,'AYAN','N',1000,'Maintained',0),
 (2001,'AMAN','N',1001,'Maintained',0),
 (2002,'GYAN','N',1002,'Maintained',0),
 (2003,'GOWN','N',1003,'Maintained',0),
 (2004,'NOWN','N',1004,'Maintained',0),
 (2005,'NYAN','N',1005,'Maintained',0),
 (2006,'SINK','N',1006,'Maintained',0),
 (2007,'SOPE','N',1007,'Maintained',0),
 (2008,'TNOT','N',1008,'Maintained',0),
 (2009,'TPAD','N',1009,'Maintained',0),
 (2010,'VIED','N',1010,'Maintained',0),
 (2011,'VASO','N',1011,'Maintained',0),
 (2100,'AYAN','N',1100,'Maintained',1),
 (2101,'AMAN','N',1101,'Maintained',1),
 (2102,'GYAN','N',1102,'Maintained',1),
 (2103,'GOWN','N',1103,'Maintained',1),
 (2104,'NOWN','N',1104,'Maintained',1),
 (2105,'NYAN','N',1105,'Maintained',1),
 (2106,'SINK','N',1106,'Maintained',1),
 (2107,'SOPE','N',1107,'Maintained',1),
 (2108,'TNOT','N',1108,'Maintained',1),
 (2109,'TPAD','N',1109,'Maintained',1),
 (2110,'VIED','N',1110,'Maintained',1),
 (2111,'VASO','N',1111,'Maintained',1);
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
) ENGINE=MyISAM AUTO_INCREMENT=3112 DEFAULT CHARSET=latin1;

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
 (3100,2100,80000,0,5767,340),
 (3101,2101,50000,0,3560,430),
 (3102,2102,80000,0,5767,340),
 (3103,2103,50000,0,3560,430),
 (3104,2104,80000,0,5767,340),
 (3105,2105,50000,0,3560,430),
 (3106,2106,80000,0,5767,340),
 (3107,2107,50000,0,3560,430),
 (3108,2108,80000,0,5767,340),
 (3109,2109,50000,0,3560,430),
 (3110,2110,80000,0,5767,340),
 (3111,2111,50000,0,3560,430);
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
) ENGINE=MyISAM AUTO_INCREMENT=7112 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`marginoffered`
--

/*!40000 ALTER TABLE `marginoffered` DISABLE KEYS */;
LOCK TABLES `marginoffered` WRITE;
INSERT INTO `marklabs`.`marginoffered` VALUES  (7000,2000,20.0000,15.0000,10.0000),
 (7001,2001,20.0000,15.0000,10.0000),
 (7002,2002,20.0000,15.0000,10.0000),
 (7003,2003,20.0000,15.0000,10.0000),
 (7004,2004,20.0000,15.0000,10.0000),
 (7005,2005,20.0000,15.0000,10.0000),
 (7006,2006,20.0000,15.0000,10.0000),
 (7007,2007,20.0000,15.0000,10.0000),
 (7008,2008,20.0000,15.0000,10.0000),
 (7009,2009,20.0000,15.0000,10.0000),
 (7010,2010,20.0000,15.0000,10.0000),
 (7011,2011,20.0000,15.0000,10.0000),
 (7101,2101,20.0000,15.0000,10.0000),
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
 (7110,2110,20.0000,15.0000,10.0000);
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
  `dimension1` varchar(100) DEFAULT NULL,
  `objective1` float DEFAULT NULL,
  `dimension2` varchar(100) DEFAULT NULL,
  `objective2` float DEFAULT NULL,
  `brandid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `perceptualobj_fk` (`brandid`)
) ENGINE=MyISAM AUTO_INCREMENT=5113 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`perceptualobj`
--

/*!40000 ALTER TABLE `perceptualobj` DISABLE KEYS */;
LOCK TABLES `perceptualobj` WRITE;
INSERT INTO `marklabs`.`perceptualobj` VALUES  (5000,'NoObjective','-',0,'-',0,2000),
 (5001,'NoObjective','-',0,'-',0,2001),
 (5002,'NoObjective','-',0,'-',0,2002),
 (5003,'NoObjective','-',0,'-',0,2003),
 (5004,'NoObjective','-',0,'-',0,2004),
 (5005,'NoObjective','-',0,'-',0,2005),
 (5006,'NoObjective','-',0,'-',0,2006),
 (5007,'NoObjective','-',0,'-',0,2007),
 (5008,'NoObjective','-',0,'-',0,2008),
 (5009,'NoObjective','-',0,'-',0,2009),
 (5010,'NoObjective','-',0,'-',0,2010),
 (5011,'NoObjective','-',0,'-',0,2011),
 (5101,'NoObjective','-',0,'-',0,2101),
 (5103,'NoObjective','-',0,'-',0,2103),
 (5102,'NoObjective','-',0,'-',0,2102),
 (5104,'NoObjective','-',0,'-',0,2104),
 (5105,'NoObjective','-',0,'-',0,2105),
 (5106,'NoObjective','-',0,'-',0,2106),
 (5107,'NoObjective','-',0,'-',0,2107),
 (5108,'NoObjective','-',0,'-',0,2108),
 (5109,'NoObjective','-',0,'-',0,2109),
 (5111,'NoObjective','-',0,'-',0,2111),
 (5110,'NoObjective','-',0,'-',0,2110),
 (5112,'SemanticScale','design',5,'fragrance',6,2100);
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
INSERT INTO `marklabs`.`rep_brand_awareness` VALUES  (1,0,'Ashish','AMAN',0.2815,0.2821,0.2827,0.2821,0.2815,0.2821),
 (2,0,'Ashish','AYAN',0.32,0.3214,0.3228,0.3214,0.32,0.3213),
 (3,0,'Geetu','GOWN',0.2815,0.2821,0.2827,0.2821,0.2815,0.2821),
 (4,0,'Geetu','GYAN',0.32,0.3214,0.3228,0.3214,0.32,0.3213),
 (5,0,'Nandu','NOWN',0.32,0.3214,0.3228,0.3214,0.32,0.3213),
 (6,0,'Nandu','NYAN',0.2815,0.2821,0.2827,0.2821,0.2815,0.2821),
 (7,0,'Shweta','SINK',0.32,0.3214,0.3228,0.3214,0.32,0.3213),
 (8,0,'Shweta','SOPE',0.2815,0.2821,0.2827,0.2821,0.2815,0.2821),
 (9,0,'Tanmaya','TNOT',0.32,0.3214,0.3228,0.3214,0.32,0.3213),
 (10,0,'Tanmaya','TPAD',0.2815,0.2821,0.2827,0.2821,0.2815,0.2821),
 (11,0,'Vishnu','VASO',0.2815,0.2821,0.2827,0.2821,0.2815,0.2821),
 (12,0,'Vishnu','VIED',0.32,0.3214,0.3228,0.3214,0.32,0.3213);
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
INSERT INTO `marklabs`.`rep_brand_characteristics` VALUES  (1,0,'Ashish','AMAN','Maintained',15,48,83,31,81,240,430),
 (2,0,'Ashish','AYAN','Maintained',78,82,29,78,21,195,340),
 (3,0,'Geetu','GOWN','Maintained',15,48,83,31,81,240,430),
 (4,0,'Geetu','GYAN','Maintained',78,82,29,78,21,195,340),
 (5,0,'Nandu','NOWN','Maintained',78,82,29,78,21,195,340),
 (6,0,'Nandu','NYAN','Maintained',15,48,83,31,81,240,430),
 (7,0,'Shweta','SINK','Maintained',78,82,29,78,21,195,340),
 (8,0,'Shweta','SOPE','Maintained',15,48,83,31,81,240,430),
 (9,0,'Tanmaya','TNOT','Maintained',78,82,29,78,21,195,340),
 (10,0,'Tanmaya','TPAD','Maintained',15,48,83,31,81,240,430),
 (11,0,'Vishnu','VASO','Maintained',15,48,83,31,81,240,430),
 (12,0,'Vishnu','VIED','Maintained',78,82,29,78,21,195,340);
UNLOCK TABLES;
/*!40000 ALTER TABLE `rep_brand_characteristics` ENABLE KEYS */;


--
-- Definition of table `marklabs`.`rep_brand_map`
--

DROP TABLE IF EXISTS `marklabs`.`rep_brand_map`;
CREATE TABLE  `marklabs`.`rep_brand_map` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `period` int(11) NOT NULL,
  `team_name` varchar(255) DEFAULT NULL,
  `brand_name` varchar(255) DEFAULT NULL,
  `design` float DEFAULT NULL,
  `fragrance` float DEFAULT NULL,
  `persistence` float DEFAULT NULL,
  `packaging` float DEFAULT NULL,
  `safety` float DEFAULT NULL,
  `price` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`rep_brand_map`
--

/*!40000 ALTER TABLE `rep_brand_map` DISABLE KEYS */;
LOCK TABLES `rep_brand_map` WRITE;
INSERT INTO `marklabs`.`rep_brand_map` VALUES  (1,0,'Ashish','AMAN',1.8,3.8,6,2.8,5.8,4.7),
 (2,0,'Ashish','AYAN',5.7,5.9,2.7,5.7,2.2,3.9),
 (3,0,'Geetu','GOWN',1.8,3.8,6,2.8,5.8,4.7),
 (4,0,'Geetu','GYAN',5.7,5.9,2.7,5.7,2.2,3.9),
 (5,0,'Nandu','NOWN',5.7,5.9,2.7,5.7,2.2,3.9),
 (6,0,'Nandu','NYAN',1.8,3.8,6,2.8,5.8,4.7),
 (7,0,'Shweta','SINK',5.7,5.9,2.7,5.7,2.2,3.9),
 (8,0,'Shweta','SOPE',1.8,3.8,6,2.8,5.8,4.7),
 (9,0,'Tanmaya','TNOT',5.7,5.9,2.7,5.7,2.2,3.9),
 (10,0,'Tanmaya','TPAD',1.8,3.8,6,2.8,5.8,4.7),
 (11,0,'Vishnu','VASO',1.8,3.8,6,2.8,5.8,4.7),
 (12,0,'Vishnu','VIED',5.7,5.9,2.7,5.7,2.2,3.9),
 (13,0,'Segments','Blue Bloods',6.2,6.2,5.4,6.2,5.4,6.1),
 (14,0,'Segments','Raffles',4.8,5.7,4.8,5.7,4.5,5),
 (15,0,'Segments','Wannabees',5.2,4.5,4,4.5,3.6,3.4),
 (16,0,'Segments','Strugglers',3.2,3.2,2.6,3.2,2.6,2.8),
 (17,0,'Segments','Deprived',2.5,2.5,2.1,2.5,2.1,2.2);
UNLOCK TABLES;
/*!40000 ALTER TABLE `rep_brand_map` ENABLE KEYS */;


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
INSERT INTO `marklabs`.`rep_brand_pi` VALUES  (1,0,'Ashish','AMAN',0.122,0.0603,0.0231,0.0629,0.0481),
 (2,0,'Ashish','AYAN',0.0446,0.1064,0.1436,0.1038,0.1185),
 (3,0,'Geetu','GOWN',0.122,0.0603,0.0231,0.0629,0.0481),
 (4,0,'Geetu','GYAN',0.0446,0.1064,0.1436,0.1038,0.1185),
 (5,0,'Nandu','NOWN',0.0446,0.1064,0.1436,0.1038,0.1185),
 (6,0,'Nandu','NYAN',0.122,0.0603,0.0231,0.0629,0.0481),
 (7,0,'Shweta','SINK',0.0446,0.1064,0.1436,0.1038,0.1185),
 (8,0,'Shweta','SOPE',0.122,0.0603,0.0231,0.0629,0.0481),
 (9,0,'Tanmaya','TNOT',0.0446,0.1064,0.1436,0.1038,0.1185),
 (10,0,'Tanmaya','TPAD',0.122,0.0603,0.0231,0.0629,0.0481),
 (11,0,'Vishnu','VASO',0.122,0.0603,0.0231,0.0629,0.0481),
 (12,0,'Vishnu','VIED',0.0446,0.1064,0.1436,0.1038,0.1185);
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
INSERT INTO `marklabs`.`rep_competitive_adv` VALUES  (1,0,'Ashish','AMAN',220000,220000,220000,220000,220000,1.1e+06),
 (2,0,'Ashish','AYAN',330000,330000,330000,330000,330000,1.65e+06),
 (3,0,'Geetu','GOWN',220000,220000,220000,220000,220000,1.1e+06),
 (4,0,'Geetu','GYAN',330000,330000,330000,330000,330000,1.65e+06),
 (5,0,'Nandu','NOWN',330000,330000,330000,330000,330000,1.65e+06),
 (6,0,'Nandu','NYAN',220000,220000,220000,220000,220000,1.1e+06),
 (7,0,'Shweta','SINK',330000,330000,330000,330000,330000,1.65e+06),
 (8,0,'Shweta','SOPE',220000,220000,220000,220000,220000,1.1e+06),
 (9,0,'Tanmaya','TNOT',330000,330000,330000,330000,330000,1.65e+06),
 (10,0,'Tanmaya','TPAD',220000,220000,220000,220000,220000,1.1e+06),
 (11,0,'Vishnu','VASO',220000,220000,220000,220000,220000,1.1e+06),
 (12,0,'Vishnu','VIED',330000,330000,330000,330000,330000,1.65e+06);
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
INSERT INTO `marklabs`.`rep_competitive_margin` VALUES  (1,0,'Ashish','AMAN',0.2,0.15,0.1),
 (2,0,'Ashish','AYAN',0.2,0.15,0.1),
 (3,0,'Geetu','GOWN',0.2,0.15,0.1),
 (4,0,'Geetu','GYAN',0.2,0.15,0.1),
 (5,0,'Nandu','NOWN',0.2,0.15,0.1),
 (6,0,'Nandu','NYAN',0.2,0.15,0.1),
 (7,0,'Shweta','SINK',0.2,0.15,0.1),
 (8,0,'Shweta','SOPE',0.2,0.15,0.1),
 (9,0,'Tanmaya','TNOT',0.2,0.15,0.1),
 (10,0,'Tanmaya','TPAD',0.2,0.15,0.1),
 (11,0,'Vishnu','VASO',0.2,0.15,0.1),
 (12,0,'Vishnu','VIED',0.2,0.15,0.1);
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
INSERT INTO `marklabs`.`rep_competitive_sales_force` VALUES  (1,0,'Ashish','AMAN',25,25,25,75),
 (2,0,'Ashish','AYAN',25,25,25,75),
 (3,0,'Geetu','GOWN',25,25,25,75),
 (4,0,'Geetu','GYAN',25,25,25,75),
 (5,0,'Nandu','NOWN',25,25,25,75),
 (6,0,'Nandu','NYAN',25,25,25,75),
 (7,0,'Shweta','SINK',25,25,25,75),
 (8,0,'Shweta','SOPE',25,25,25,75),
 (9,0,'Tanmaya','TNOT',25,25,25,75),
 (10,0,'Tanmaya','TPAD',25,25,25,75),
 (11,0,'Vishnu','VASO',25,25,25,75),
 (12,0,'Vishnu','VIED',25,25,25,75);
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
INSERT INTO `marklabs`.`rep_distribution_cov` VALUES  (1,0,'Ashish','AMAN',0.448603,0.31883,0.376427),
 (2,0,'Ashish','AYAN',0.451192,0.340176,0.392592),
 (3,0,'Geetu','GOWN',0.448603,0.31883,0.376427),
 (4,0,'Geetu','GYAN',0.451192,0.340176,0.392592),
 (5,0,'Nandu','NOWN',0.451192,0.340176,0.392592),
 (6,0,'Nandu','NYAN',0.448603,0.31883,0.376427),
 (7,0,'Shweta','SINK',0.451192,0.340176,0.392592),
 (8,0,'Shweta','SOPE',0.448603,0.31883,0.376427),
 (9,0,'Tanmaya','TNOT',0.451192,0.340176,0.392592),
 (10,0,'Tanmaya','TPAD',0.448603,0.31883,0.376427),
 (11,0,'Vishnu','VASO',0.448603,0.31883,0.376427),
 (12,0,'Vishnu','VIED',0.451192,0.340176,0.392592);
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
INSERT INTO `marklabs`.`rep_distribution_cov_mkt_share` VALUES  (1,0,'Ashish','AMAN',0.064799,0.0640987,0.063541,0.0641403),
 (2,0,'Ashish','AYAN',0.101868,0.102568,0.103126,0.102526),
 (3,0,'Geetu','GOWN',0.064799,0.0640987,0.063541,0.0641403),
 (4,0,'Geetu','GYAN',0.101868,0.102568,0.103126,0.102526),
 (5,0,'Nandu','NOWN',0.101868,0.102568,0.103126,0.102526),
 (6,0,'Nandu','NYAN',0.064799,0.0640987,0.063541,0.0641403),
 (7,0,'Shweta','SINK',0.101868,0.102568,0.103126,0.102526),
 (8,0,'Shweta','SOPE',0.064799,0.0640987,0.063541,0.0641403),
 (9,0,'Tanmaya','TNOT',0.101868,0.102568,0.103126,0.102526),
 (10,0,'Tanmaya','TPAD',0.064799,0.0640987,0.063541,0.0641403),
 (11,0,'Vishnu','VASO',0.064799,0.0640987,0.063541,0.0641403),
 (12,0,'Vishnu','VIED',0.101868,0.102568,0.103126,0.102526),
 (13,0,'Total','',1,1,1,1),
 (14,0,'Total Sales(units)','',231192,256542,236304,724038),
 (15,0,'Total Sales(%Total)','',0.319309,0.354321,0.32637,1);
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
INSERT INTO `marklabs`.`rep_market_share` VALUES  (1,0,'Ashish','AMAN',0.123186,0.0643171,0.0281134,0.0733056,0.0589199,0.0641403),
 (2,0,'Ashish','AYAN',0.0434633,0.102331,0.138532,0.0933418,0.107728,0.102526),
 (3,0,'Geetu','GOWN',0.123186,0.0643171,0.0281134,0.0733056,0.0589199,0.0641403),
 (4,0,'Geetu','GYAN',0.0434633,0.102331,0.138532,0.0933418,0.107728,0.102526),
 (5,0,'Nandu','NOWN',0.0434633,0.102331,0.138532,0.0933418,0.107728,0.102526),
 (6,0,'Nandu','NYAN',0.123186,0.0643171,0.0281134,0.0733056,0.0589199,0.0641403),
 (7,0,'Shweta','SINK',0.0434633,0.102331,0.138532,0.0933418,0.107728,0.102526),
 (8,0,'Shweta','SOPE',0.123186,0.0643171,0.0281134,0.0733056,0.0589199,0.0641403),
 (9,0,'Tanmaya','TNOT',0.0434633,0.102331,0.138532,0.0933418,0.107728,0.102526),
 (10,0,'Tanmaya','TPAD',0.123186,0.0643171,0.0281134,0.0733056,0.0589199,0.0641403),
 (11,0,'Vishnu','VASO',0.123186,0.0643171,0.0281134,0.0733056,0.0589199,0.0641403),
 (12,0,'Vishnu','VIED',0.0434633,0.102331,0.138532,0.0933418,0.107728,0.102526),
 (13,0,'Total','',1,1,1,1,1,1),
 (14,0,'Total Sales(units)','',85020,119958,171318,230886,116856,724038),
 (15,0,'Total Sales(%Total)','',0.117425,0.165679,0.236615,0.318887,0.161395,1);
UNLOCK TABLES;
/*!40000 ALTER TABLE `rep_market_share` ENABLE KEYS */;


--
-- Definition of table `marklabs`.`rep_perceptual_map`
--

DROP TABLE IF EXISTS `marklabs`.`rep_perceptual_map`;
CREATE TABLE  `marklabs`.`rep_perceptual_map` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `period` int(11) NOT NULL,
  `team_name` varchar(255) DEFAULT NULL,
  `brand_name` varchar(255) DEFAULT NULL,
  `economy` float DEFAULT NULL,
  `quality` float DEFAULT NULL,
  `appeal` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`rep_perceptual_map`
--

/*!40000 ALTER TABLE `rep_perceptual_map` DISABLE KEYS */;
LOCK TABLES `rep_perceptual_map` WRITE;
INSERT INTO `marklabs`.`rep_perceptual_map` VALUES  (1,0,'Ashish','AMAN',7.7,15,6.1),
 (2,0,'Ashish','AYAN',10.3,7.3,15.8),
 (3,0,'Geetu','GOWN',7.7,15,6.1),
 (4,0,'Geetu','GYAN',10.3,7.3,15.8),
 (5,0,'Nandu','NOWN',10.3,7.3,15.8),
 (6,0,'Nandu','NYAN',7.7,15,6.1),
 (7,0,'Shweta','SINK',10.3,7.3,15.8),
 (8,0,'Shweta','SOPE',7.7,15,6.1),
 (9,0,'Tanmaya','TNOT',10.3,7.3,15.8),
 (10,0,'Tanmaya','TPAD',7.7,15,6.1),
 (11,0,'Vishnu','VASO',7.7,15,6.1),
 (12,0,'Vishnu','VIED',10.3,7.3,15.8),
 (13,0,'Segments','Blue Bloods',3,15.2,17.3),
 (14,0,'Segments','Raffles',6.7,13,14.8),
 (15,0,'Segments','Wannabees',12,9.9,12.4),
 (16,0,'Segments','Strugglers',14,5.7,7.3),
 (17,0,'Segments','Deprived',16,3.9,5);
UNLOCK TABLES;
/*!40000 ALTER TABLE `rep_perceptual_map` ENABLE KEYS */;


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
INSERT INTO `marklabs`.`rep_project_characteristics` VALUES  (1,0,'Ashish','ARYAN',78,82,29,78,21,195,173,1.21343e+06,0),
 (2,0,'Ashish','ARMAN',15,48,83,31,81,240,199,869619,0),
 (3,0,'Geetu','GRYAN',78,82,29,78,21,195,173,1.21343e+06,0),
 (4,0,'Geetu','GROWN',15,48,83,31,81,240,199,869619,0),
 (5,0,'Nandu','NROWN',78,82,29,78,21,195,173,1.21343e+06,0),
 (6,0,'Nandu','NRYAN',15,48,83,31,81,240,199,869619,0),
 (7,0,'Shweta','SROPE',15,48,83,31,81,240,199,869619,0),
 (8,0,'Shweta','SRINK',78,82,29,78,21,195,173,1.21343e+06,0),
 (9,0,'Tanmaya','TRNOT',78,82,29,78,21,195,173,1.21343e+06,0),
 (10,0,'Tanmaya','TRPAD',15,48,83,31,81,240,199,869619,0),
 (11,0,'Vishnu','VRIED',78,82,29,78,21,195,173,1.21343e+06,0),
 (12,0,'Vishnu','VRASO',15,48,83,31,81,240,199,869619,0);
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
INSERT INTO `marklabs`.`rep_stock_market` VALUES  (1,0,'Ashish',149,220921555,5139074,5139074),
 (2,0,'Geetu',149,220921555,5139074,5139074),
 (3,0,'Nandu',149,220921555,5139074,5139074),
 (4,0,'Shweta',149,220921555,5139074,5139074),
 (5,0,'Tanmaya',149,220921555,5139074,5139074),
 (6,0,'Vishnu',149,220921555,5139074,5139074);
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
  `report_app_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8113 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`reports`
--

/*!40000 ALTER TABLE `reports` DISABLE KEYS */;
LOCK TABLES `reports` WRITE;
INSERT INTO `marklabs`.`reports` VALUES  (8000,'Benchmarking',100000.0000,1,'Benchmarking'),
 (8001,'Brand Characteristics',20000.0000,1,'BrandCharacteristicReport'),
 (8002,'Brand Awareness',30000.0000,1,'BrandAwarenessReport'),
 (8003,'Brand Purchase Intentions',30000.0000,1,'BrandPurchaseIntentionReport'),
 (8004,'Brand Market Share',50000.0000,1,'MarketShareReport'),
 (8005,'Semantic Scale',100000.0000,1,'SemanticScaleReport'),
 (8006,'Multi Dimensional Scale',100000.0000,1,'MultiDimensionalScaleReport'),
 (8007,'Shopping Habits',10000.0000,1,'ShoppingHabitsReport'),
 (8008,'Distribution Coverage',25000.0000,1,'DistributionCoverageReport'),
 (8009,'Distribution Market Share',30000.0000,1,'DistributionMarketShareReport'),
 (8010,'Competitive Advertisment Expense',30000.0000,1,'CompetitiveAdvExpenseReport'),
 (8011,'Competitive Sales Expense',30000.0000,1,'CompetitiveSalesForceReport'),
 (8012,'Competitive Margin',30000.0000,1,'CompetitiveMarginReport'),
 (8100,'Benchmarking',103000.0000,2,'Benchmarking'),
 (8101,'Brand Characteristics',20600.0000,2,'BrandCharacteristicReport'),
 (8102,'Brand Awareness',30900.0000,2,'BrandAwarenessReport'),
 (8103,'Brand Purchase Intentions',30900.0000,2,'BrandPurchaseIntentionReport'),
 (8104,'Brand Market Share',51500.0000,2,'MarketShareReport'),
 (8105,'Semantic Scale',103000.0000,2,'SemanticScaleReport'),
 (8106,'Multi Dimensional Scale',103000.0000,2,'MultiDimensionalScaleReport'),
 (8107,'Shopping Habits',10300.0000,2,'ShoppingHabitsReport'),
 (8108,'Distribution Coverage',25750.0000,2,'DistributionCoverageReport'),
 (8109,'Distribution Market Share',30900.0000,2,'DistributionMarketShareReport'),
 (8110,'Competitive Advertisment Expense',30900.0000,2,'CompetitiveAdvExpenseReport'),
 (8111,'Competitive Sales Expense',30900.0000,2,'CompetitiveSalesForceReport'),
 (8112,'Competitive Margin',30900.0000,2,'CompetitiveMarginReport');
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
) ENGINE=MyISAM AUTO_INCREMENT=9178 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`reports_team_purchase_map`
--

/*!40000 ALTER TABLE `reports_team_purchase_map` DISABLE KEYS */;
LOCK TABLES `reports_team_purchase_map` WRITE;
INSERT INTO `marklabs`.`reports_team_purchase_map` VALUES  (9000,8000,1,1,'Y'),
 (9001,8001,1,1,'Y'),
 (9002,8002,1,1,'Y'),
 (9003,8003,1,1,'Y'),
 (9004,8004,1,1,'Y'),
 (9005,8005,1,1,'N'),
 (9006,8006,1,1,'N'),
 (9007,8007,1,1,'Y'),
 (9008,8008,1,1,'Y'),
 (9009,8009,1,1,'Y'),
 (9010,8010,1,1,'N'),
 (9011,8011,1,1,'N'),
 (9012,8012,1,1,'N'),
 (9013,8000,2,1,'Y'),
 (9014,8001,2,1,'Y'),
 (9015,8002,2,1,'Y'),
 (9016,8003,2,1,'Y'),
 (9017,8004,2,1,'Y'),
 (9018,8005,2,1,'N'),
 (9019,8006,2,1,'N'),
 (9020,8007,2,1,'Y'),
 (9021,8008,2,1,'Y'),
 (9022,8009,2,1,'Y'),
 (9023,8010,2,1,'N'),
 (9024,8011,2,1,'N'),
 (9025,8012,2,1,'N'),
 (9026,8000,3,1,'Y'),
 (9027,8001,3,1,'Y'),
 (9028,8002,3,1,'Y'),
 (9029,8003,3,1,'Y'),
 (9030,8004,3,1,'Y'),
 (9031,8005,3,1,'N'),
 (9032,8006,3,1,'N'),
 (9033,8007,3,1,'Y'),
 (9034,8008,3,1,'Y'),
 (9035,8009,3,1,'Y'),
 (9036,8010,3,1,'N'),
 (9037,8011,3,1,'N'),
 (9038,8012,3,1,'N'),
 (9039,8000,4,1,'Y'),
 (9040,8001,4,1,'Y'),
 (9041,8002,4,1,'Y'),
 (9042,8003,4,1,'Y'),
 (9043,8004,4,1,'Y'),
 (9044,8005,4,1,'N'),
 (9045,8006,4,1,'N'),
 (9046,8007,4,1,'Y'),
 (9047,8008,4,1,'Y'),
 (9048,8009,4,1,'Y'),
 (9049,8010,4,1,'N'),
 (9050,8011,4,1,'N'),
 (9051,8012,4,1,'N'),
 (9052,8000,5,1,'Y'),
 (9053,8001,5,1,'Y'),
 (9054,8002,5,1,'Y'),
 (9055,8003,5,1,'Y'),
 (9056,8004,5,1,'Y'),
 (9057,8005,5,1,'N'),
 (9058,8006,5,1,'N'),
 (9059,8007,5,1,'Y'),
 (9060,8008,5,1,'Y'),
 (9061,8009,5,1,'Y'),
 (9062,8010,5,1,'N'),
 (9063,8011,5,1,'N'),
 (9064,8012,5,1,'N'),
 (9065,8000,6,1,'Y'),
 (9066,8001,6,1,'Y'),
 (9067,8002,6,1,'Y'),
 (9068,8003,6,1,'Y'),
 (9069,8004,6,1,'Y'),
 (9070,8005,6,1,'N'),
 (9071,8006,6,1,'N'),
 (9072,8007,6,1,'Y'),
 (9073,8008,6,1,'Y'),
 (9074,8009,6,1,'Y'),
 (9075,8010,6,1,'N'),
 (9076,8011,6,1,'N'),
 (9077,8012,6,1,'N'),
 (9100,8100,1,2,'N'),
 (9101,8101,1,2,'N'),
 (9102,8102,1,2,'N'),
 (9103,8103,1,2,'N'),
 (9104,8104,1,2,'N'),
 (9105,8105,1,2,'N'),
 (9106,8106,1,2,'N'),
 (9107,8107,1,2,'N'),
 (9108,8108,1,2,'N'),
 (9109,8109,1,2,'N'),
 (9110,8110,1,2,'N'),
 (9111,8111,1,2,'N'),
 (9112,8112,1,2,'N'),
 (9113,8100,2,2,'N'),
 (9114,8101,2,2,'N'),
 (9115,8102,2,2,'N'),
 (9116,8103,2,2,'N'),
 (9117,8104,2,2,'N'),
 (9118,8105,2,2,'N'),
 (9119,8106,2,2,'N'),
 (9120,8107,2,2,'N'),
 (9121,8108,2,2,'N'),
 (9122,8109,2,2,'N'),
 (9123,8110,2,2,'N'),
 (9124,8111,2,2,'N'),
 (9125,8112,2,2,'N'),
 (9126,8100,3,2,'N'),
 (9127,8101,3,2,'N'),
 (9128,8102,3,2,'N'),
 (9129,8103,3,2,'N'),
 (9130,8104,3,2,'N'),
 (9131,8105,3,2,'N'),
 (9132,8106,3,2,'N'),
 (9133,8107,3,2,'N'),
 (9134,8108,3,2,'N'),
 (9135,8109,3,2,'N'),
 (9136,8110,3,2,'N'),
 (9137,8111,3,2,'N'),
 (9138,8112,3,2,'N'),
 (9139,8100,4,2,'N'),
 (9140,8101,4,2,'N'),
 (9141,8102,4,2,'N'),
 (9142,8103,4,2,'N'),
 (9143,8104,4,2,'N'),
 (9144,8105,4,2,'N'),
 (9145,8106,4,2,'N'),
 (9146,8107,4,2,'N'),
 (9147,8108,4,2,'N'),
 (9148,8109,4,2,'N'),
 (9149,8110,4,2,'N'),
 (9150,8111,4,2,'N'),
 (9151,8112,4,2,'N'),
 (9152,8100,5,2,'N'),
 (9153,8101,5,2,'N'),
 (9154,8102,5,2,'N'),
 (9155,8103,5,2,'N'),
 (9156,8104,5,2,'N'),
 (9157,8105,5,2,'N'),
 (9158,8106,5,2,'N'),
 (9159,8107,5,2,'N'),
 (9160,8108,5,2,'N'),
 (9161,8109,5,2,'N'),
 (9162,8110,5,2,'N'),
 (9163,8111,5,2,'N'),
 (9164,8112,5,2,'N'),
 (9165,8100,6,2,'N'),
 (9166,8101,6,2,'N'),
 (9167,8102,6,2,'N'),
 (9168,8103,6,2,'N'),
 (9169,8104,6,2,'N'),
 (9170,8105,6,2,'N'),
 (9171,8106,6,2,'N'),
 (9172,8107,6,2,'N'),
 (9173,8108,6,2,'N'),
 (9174,8109,6,2,'N'),
 (9175,8110,6,2,'N'),
 (9176,8111,6,2,'N'),
 (9177,8112,6,2,'N');
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
) ENGINE=InnoDB AUTO_INCREMENT=1112 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`researchproject`
--

/*!40000 ALTER TABLE `researchproject` DISABLE KEYS */;
LOCK TABLES `researchproject` WRITE;
INSERT INTO `marklabs`.`researchproject` VALUES  (1000,'ARYAN',78,82,29,78,21,173,195,1213434,0,'Y',0,0,1,1302596,1213434),
 (1001,'ARMAN',15,48,83,31,81,199,240,869619,0,'Y',0,0,1,1443120,869619),
 (1002,'GRYAN',78,82,29,78,21,173,195,1213434,0,'Y',0,0,2,1302596,1213434),
 (1003,'GROWN',15,48,83,31,81,199,240,869619,0,'Y',0,0,2,1443120,869619),
 (1004,'NROWN',78,82,29,78,21,173,195,1213434,0,'Y',0,0,3,1302596,1213434),
 (1005,'NRYAN',15,48,83,31,81,199,240,869619,0,'Y',0,0,3,1443120,869619),
 (1006,'SRINK',78,82,29,78,21,173,195,1213434,0,'Y',0,0,4,1302596,1213434),
 (1007,'SROPE',15,48,83,31,81,199,240,869619,0,'Y',0,0,4,1443120,869619),
 (1008,'TRNOT',78,82,29,78,21,173,195,1213434,0,'Y',0,0,5,1302596,1213434),
 (1009,'TRPAD',15,48,83,31,81,199,240,869619,0,'Y',0,0,5,1443120,869619),
 (1010,'VRIED',78,82,29,78,21,173,195,1213434,0,'Y',0,0,6,1302596,1213434),
 (1011,'VRASO',15,48,83,31,81,199,240,869619,0,'Y',0,0,6,1443120,869619),
 (1100,'ARYAN',78,82,29,78,21,178,201,1213434,1,'Y',0,0,1,1302596,1213434),
 (1101,'ARMAN',15,48,83,31,81,205,247,869619,1,'Y',0,0,1,1443120,869619),
 (1102,'GRYAN',78,82,29,78,21,178,201,1213434,1,'Y',0,0,2,1302596,1213434),
 (1103,'GROWN',15,48,83,31,81,205,247,869619,1,'Y',0,0,2,1443120,869619),
 (1104,'NROWN',78,82,29,78,21,178,201,1213434,1,'Y',0,0,3,1302596,1213434),
 (1105,'NRYAN',15,48,83,31,81,205,247,869619,1,'Y',0,0,3,1443120,869619),
 (1106,'SRINK',78,82,29,78,21,178,201,1213434,1,'Y',0,0,4,1302596,1213434),
 (1107,'SROPE',15,48,83,31,81,205,247,869619,1,'Y',0,0,4,1443120,869619),
 (1108,'TRNOT',78,82,29,78,21,178,201,1213434,1,'Y',0,0,5,1302596,1213434),
 (1109,'TRPAD',15,48,83,31,81,205,247,869619,1,'Y',0,0,5,1443120,869619),
 (1110,'VRIED',78,82,29,78,21,178,201,1213434,1,'Y',0,0,6,1302596,1213434),
 (1111,'VRASO',15,48,83,31,81,205,247,869619,1,'Y',0,0,6,1443120,869619);
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
) ENGINE=MyISAM AUTO_INCREMENT=6112 DEFAULT CHARSET=latin1;

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
 (6101,2101,0.0000,0.0000,0.0000),
 (6100,2100,0.0000,0.0000,0.0000),
 (6103,2103,0.0000,0.0000,0.0000),
 (6102,2102,0.0000,0.0000,0.0000),
 (6104,2104,0.0000,0.0000,0.0000),
 (6105,2105,0.0000,0.0000,0.0000),
 (6106,2106,0.0000,0.0000,0.0000),
 (6107,2107,0.0000,0.0000,0.0000),
 (6108,2108,0.0000,0.0000,0.0000),
 (6109,2109,0.0000,0.0000,0.0000),
 (6111,2111,0.0000,0.0000,0.0000),
 (6110,2110,0.0000,0.0000,0.0000);
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
-- Definition of table `marklabs`.`team_result`
--

DROP TABLE IF EXISTS `marklabs`.`team_result`;
CREATE TABLE  `marklabs`.`team_result` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `period` int(11) NOT NULL,
  `team_name` varchar(50) NOT NULL,
  `team_id` int(11) DEFAULT NULL,
  `units_sold` int(11) DEFAULT NULL,
  `revenues` int(14) DEFAULT NULL,
  `units_produced` int(12) DEFAULT NULL,
  `cost_of_goods_sold` int(14) DEFAULT NULL,
  `inventory_holding_cost` int(14) DEFAULT NULL,
  `disposal_loss` int(14) DEFAULT NULL,
  `contribution_before_marketing` int(14) DEFAULT NULL,
  `adv_expense` int(14) DEFAULT NULL,
  `adv_research_expense` int(14) DEFAULT NULL,
  `sales_force_expense` int(14) DEFAULT NULL,
  `contributing_after_marketing` int(14) DEFAULT NULL,
  `market_research_expense` int(14) DEFAULT NULL,
  `rnD_expense` int(14) DEFAULT NULL,
  `net_contribution` int(14) DEFAULT NULL,
  `units_in_inventory` int(12) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `team_result_fk` (`team_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`team_result`
--

/*!40000 ALTER TABLE `team_result` DISABLE KEYS */;
LOCK TABLES `team_result` WRITE;
INSERT INTO `marklabs`.`team_result` VALUES  (1,0,'Ashish',1,120673,38450016,130000,24989877,193012,0,13267127,2500000,250000,3000000,7517127,295000,2083053,5139074,9327),
 (2,0,'Geetu',2,120673,38450016,130000,24989877,193012,0,13267127,2500000,250000,3000000,7517127,295000,2083053,5139074,9327),
 (3,0,'Nandu',3,120673,38450016,130000,24989877,193012,0,13267127,2500000,250000,3000000,7517127,295000,2083053,5139074,9327),
 (4,0,'Shweta',4,120673,38450016,130000,24989877,193012,0,13267127,2500000,250000,3000000,7517127,295000,2083053,5139074,9327),
 (5,0,'Tanmaya',5,120673,38450016,130000,24989877,193012,0,13267127,2500000,250000,3000000,7517127,295000,2083053,5139074,9327),
 (6,0,'Vishnu',6,120673,38450016,130000,24989877,193012,0,13267127,2500000,250000,3000000,7517127,295000,2083053,5139074,9327);
UNLOCK TABLES;
/*!40000 ALTER TABLE `team_result` ENABLE KEYS */;


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
  `is_transitioning` char(1) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `TEAMUSERNAME_UNQ` (`TEAMUSERNAME`),
  UNIQUE KEY `TEAMNAME_UNQ` (`TEAMNAME`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklabs`.`teams`
--

/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
LOCK TABLES `teams` WRITE;
INSERT INTO `marklabs`.`teams` VALUES  (1,'Ashish','Ashish','iwish',1,5523039,'N'),
 (2,'Geetu','Geetu','noentry',1,5523039,'N'),
 (3,'Nandu','Nandu','coffee',1,5523039,'N'),
 (4,'Shweta','Shweta','happy',1,5523039,'N'),
 (5,'Tanmaya','Tanmaya','despo',1,5523039,'N'),
 (6,'Vishnu','Vishnu','duffer',1,5523039,'N');
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
