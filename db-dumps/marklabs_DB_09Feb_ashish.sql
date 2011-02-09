-- phpMyAdmin SQL Dump
-- version 2.6.4-pl3
-- http://www.phpmyadmin.net
-- 
-- Host: 178.79.149.227
-- Generation Time: Feb 09, 2011 at 01:40 AM
-- Server version: 5.1.41
-- PHP Version: 5.0.5
-- 
-- Database: `marklabs`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `averageMarginOffered`
-- 

CREATE TABLE `averageMarginOffered` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `supermarket_amo` int(11) NOT NULL,
  `generalStore_amo` int(11) NOT NULL,
  `kiranaStore_amo` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `averageMarginOffered`
-- 

INSERT INTO `averageMarginOffered` VALUES (1, 20, 15, 10);

-- --------------------------------------------------------

-- 
-- Table structure for table `brand_result`
-- 

CREATE TABLE `brand_result` (
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
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

-- 
-- Dumping data for table `brand_result`
-- 

INSERT INTO `brand_result` VALUES (1, 0, 'AMAN', 'ARMAN', 366, 16982773, 50000, 236, 10959840, 3560, 84016, 0, 5938917, 1000000, 100000, 1500000, 3338917, 46440, 'Ashish');
INSERT INTO `brand_result` VALUES (2, 0, 'AYAN', 'ARYAN', 289, 21467243, 80000, 189, 14030037, 5767, 108996, 0, 7328210, 1500000, 150000, 1500000, 4178210, 74233, 'Ashish');
INSERT INTO `brand_result` VALUES (3, 0, 'GOWN', 'GROWN', 366, 16982773, 50000, 236, 10959840, 3560, 84016, 0, 5938917, 1000000, 100000, 1500000, 3338917, 46440, 'Geetu');
INSERT INTO `brand_result` VALUES (4, 0, 'GYAN', 'GRYAN', 289, 21467243, 80000, 189, 14030037, 5767, 108996, 0, 7328210, 1500000, 150000, 1500000, 4178210, 74233, 'Geetu');
INSERT INTO `brand_result` VALUES (5, 0, 'NOWN', 'NROWN', 289, 21467243, 80000, 189, 14030037, 5767, 108996, 0, 7328210, 1500000, 150000, 1500000, 4178210, 74233, 'Nandu');
INSERT INTO `brand_result` VALUES (6, 0, 'NYAN', 'NRYAN', 366, 16982773, 50000, 236, 10959840, 3560, 84016, 0, 5938917, 1000000, 100000, 1500000, 3338917, 46440, 'Nandu');
INSERT INTO `brand_result` VALUES (7, 0, 'SINK', 'SRINK', 289, 21467243, 80000, 189, 14030037, 5767, 108996, 0, 7328210, 1500000, 150000, 1500000, 4178210, 74233, 'Shweta');
INSERT INTO `brand_result` VALUES (8, 0, 'SOPE', 'SROPE', 366, 16982773, 50000, 236, 10959840, 3560, 84016, 0, 5938917, 1000000, 100000, 1500000, 3338917, 46440, 'Shweta');
INSERT INTO `brand_result` VALUES (9, 0, 'TNOT', 'TRNOT', 289, 21467243, 80000, 189, 14030037, 5767, 108996, 0, 7328210, 1500000, 150000, 1500000, 4178210, 74233, 'Tanmaya');
INSERT INTO `brand_result` VALUES (10, 0, 'TPAD', 'TRPAD', 366, 16982773, 50000, 236, 10959840, 3560, 84016, 0, 5938917, 1000000, 100000, 1500000, 3338917, 46440, 'Tanmaya');
INSERT INTO `brand_result` VALUES (11, 0, 'VASO', 'VRASO', 366, 16982773, 50000, 236, 10959840, 3560, 84016, 0, 5938917, 1000000, 100000, 1500000, 3338917, 46440, 'Vishnu');
INSERT INTO `brand_result` VALUES (12, 0, 'VIED', 'VRIED', 289, 21467243, 80000, 189, 14030037, 5767, 108996, 0, 7328210, 1500000, 150000, 1500000, 4178210, 74233, 'Vishnu');

-- --------------------------------------------------------

-- 
-- Table structure for table `brandadv_metadata`
-- 

CREATE TABLE `brandadv_metadata` (
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
) ENGINE=InnoDB AUTO_INCREMENT=1115 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1115 ;

-- 
-- Dumping data for table `brandadv_metadata`
-- 

INSERT INTO `brandadv_metadata` VALUES (1111, 'AYAN', 1200, 100, 20, 20, 20, 20, 20, 20, 30, 20, 30);
INSERT INTO `brandadv_metadata` VALUES (1112, 'BYTE', 1200, 100, 20, 20, 20, 20, 20, 20, 30, 20, 30);
INSERT INTO `brandadv_metadata` VALUES (1113, 'ARIM', 2000, 150, 30, 40, 10, 10, 10, 30, 40, 10, 20);
INSERT INTO `brandadv_metadata` VALUES (1114, 'BROM', 2000, 150, 30, 40, 10, 10, 10, 30, 40, 10, 20);

-- --------------------------------------------------------

-- 
-- Table structure for table `brandadvertisement`
-- 

CREATE TABLE `brandadvertisement` (
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
) ENGINE=MyISAM AUTO_INCREMENT=4112 DEFAULT CHARSET=latin1 AUTO_INCREMENT=4112 ;

-- 
-- Dumping data for table `brandadvertisement`
-- 

INSERT INTO `brandadvertisement` VALUES (4000, 2000, 1500000, 150000, 20, 20, 20, 20, 20, 25, 25, 25, 25);
INSERT INTO `brandadvertisement` VALUES (4001, 2001, 1000000, 100000, 20, 20, 20, 20, 20, 25, 25, 25, 25);
INSERT INTO `brandadvertisement` VALUES (4002, 2002, 1500000, 150000, 20, 20, 20, 20, 20, 25, 25, 25, 25);
INSERT INTO `brandadvertisement` VALUES (4003, 2003, 1000000, 100000, 20, 20, 20, 20, 20, 25, 25, 25, 25);
INSERT INTO `brandadvertisement` VALUES (4004, 2004, 1500000, 150000, 20, 20, 20, 20, 20, 25, 25, 25, 25);
INSERT INTO `brandadvertisement` VALUES (4005, 2005, 1000000, 100000, 20, 20, 20, 20, 20, 25, 25, 25, 25);
INSERT INTO `brandadvertisement` VALUES (4006, 2006, 1500000, 150000, 20, 20, 20, 20, 20, 25, 25, 25, 25);
INSERT INTO `brandadvertisement` VALUES (4007, 2007, 1000000, 100000, 20, 20, 20, 20, 20, 25, 25, 25, 25);
INSERT INTO `brandadvertisement` VALUES (4008, 2008, 1500000, 150000, 20, 20, 20, 20, 20, 25, 25, 25, 25);
INSERT INTO `brandadvertisement` VALUES (4009, 2009, 1000000, 100000, 20, 20, 20, 20, 20, 25, 25, 25, 25);
INSERT INTO `brandadvertisement` VALUES (4010, 2010, 1500000, 150000, 20, 20, 20, 20, 20, 25, 25, 25, 25);
INSERT INTO `brandadvertisement` VALUES (4011, 2011, 1000000, 100000, 20, 20, 20, 20, 20, 25, 25, 25, 25);
INSERT INTO `brandadvertisement` VALUES (4100, 2100, 0, 0, 20, 20, 20, 20, 20, 25, 25, 25, 25);
INSERT INTO `brandadvertisement` VALUES (4101, 2101, 0, 0, 20, 20, 20, 20, 20, 25, 25, 25, 25);
INSERT INTO `brandadvertisement` VALUES (4102, 2102, 0, 0, 20, 20, 20, 20, 20, 25, 25, 25, 25);
INSERT INTO `brandadvertisement` VALUES (4103, 2103, 0, 0, 20, 20, 20, 20, 20, 25, 25, 25, 25);
INSERT INTO `brandadvertisement` VALUES (4104, 2104, 0, 0, 20, 20, 20, 20, 20, 25, 25, 25, 25);
INSERT INTO `brandadvertisement` VALUES (4105, 2105, 0, 0, 20, 20, 20, 20, 20, 25, 25, 25, 25);
INSERT INTO `brandadvertisement` VALUES (4106, 2106, 0, 0, 20, 20, 20, 20, 20, 25, 25, 25, 25);
INSERT INTO `brandadvertisement` VALUES (4107, 2107, 0, 0, 20, 20, 20, 20, 20, 25, 25, 25, 25);
INSERT INTO `brandadvertisement` VALUES (4108, 2108, 0, 0, 20, 20, 20, 20, 20, 25, 25, 25, 25);
INSERT INTO `brandadvertisement` VALUES (4109, 2109, 0, 0, 20, 20, 20, 20, 20, 25, 25, 25, 25);
INSERT INTO `brandadvertisement` VALUES (4110, 2110, 0, 0, 20, 20, 20, 20, 20, 25, 25, 25, 25);
INSERT INTO `brandadvertisement` VALUES (4111, 2111, 0, 0, 20, 20, 20, 20, 20, 25, 25, 25, 25);

-- --------------------------------------------------------

-- 
-- Table structure for table `brandawareness_metadata`
-- 

CREATE TABLE `brandawareness_metadata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandName` varchar(500) NOT NULL,
  `total_ba` float(10,4) DEFAULT '0.0000',
  `bluebloods_ba` float(10,4) DEFAULT '0.0000',
  `raffles_ba` float(10,4) DEFAULT '0.0000',
  `wannabes_ba` float(10,4) DEFAULT '0.0000',
  `strugglers_ba` float(10,4) DEFAULT '0.0000',
  `deprived_ba` float(10,4) DEFAULT '0.0000',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `brandawareness_metadata`
-- 

INSERT INTO `brandawareness_metadata` VALUES (1, 'AYAN', 0.4520, 0.4520, 0.4520, 0.4520, 0.4520, 0.4520);
INSERT INTO `brandawareness_metadata` VALUES (2, 'BYTE', 0.4520, 0.4520, 0.4520, 0.4520, 0.4520, 0.4520);
INSERT INTO `brandawareness_metadata` VALUES (3, 'ARIM', 0.4790, 0.5130, 0.6024, 0.4270, 0.4270, 0.4270);
INSERT INTO `brandawareness_metadata` VALUES (4, 'BROM', 0.4790, 0.5130, 0.6024, 0.4270, 0.4270, 0.4270);

-- --------------------------------------------------------

-- 
-- Table structure for table `brands`
-- 

CREATE TABLE `brands` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BRANDNAME` varchar(255) NOT NULL,
  `DELETEFLAG` char(1) NOT NULL,
  `RESEARCHPROJECTID` int(11) NOT NULL,
  `status` varchar(40) NOT NULL DEFAULT 'New',
  `period` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID` (`ID`),
  UNIQUE KEY `ID_2` (`ID`),
  KEY `RESEARCHPROJ_FK` (`RESEARCHPROJECTID`)
) ENGINE=InnoDB AUTO_INCREMENT=2112 DEFAULT CHARSET=latin1 AUTO_INCREMENT=2112 ;

-- 
-- Dumping data for table `brands`
-- 

INSERT INTO `brands` VALUES (2000, 'AYAN', 'N', 1000, 'Maintained', 0);
INSERT INTO `brands` VALUES (2001, 'AMAN', 'N', 1001, 'Maintained', 0);
INSERT INTO `brands` VALUES (2002, 'GYAN', 'N', 1002, 'Maintained', 0);
INSERT INTO `brands` VALUES (2003, 'GOWN', 'N', 1003, 'Maintained', 0);
INSERT INTO `brands` VALUES (2004, 'NOWN', 'N', 1004, 'Maintained', 0);
INSERT INTO `brands` VALUES (2005, 'NYAN', 'N', 1005, 'Maintained', 0);
INSERT INTO `brands` VALUES (2006, 'SINK', 'N', 1006, 'Maintained', 0);
INSERT INTO `brands` VALUES (2007, 'SOPE', 'N', 1007, 'Maintained', 0);
INSERT INTO `brands` VALUES (2008, 'TNOT', 'N', 1008, 'Maintained', 0);
INSERT INTO `brands` VALUES (2009, 'TPAD', 'N', 1009, 'Maintained', 0);
INSERT INTO `brands` VALUES (2010, 'VIED', 'N', 1010, 'Maintained', 0);
INSERT INTO `brands` VALUES (2011, 'VASO', 'N', 1011, 'Maintained', 0);
INSERT INTO `brands` VALUES (2100, 'AYAN', 'N', 1100, 'Maintained', 1);
INSERT INTO `brands` VALUES (2101, 'AMAN', 'N', 1101, 'Maintained', 1);
INSERT INTO `brands` VALUES (2102, 'GYAN', 'N', 1102, 'Maintained', 1);
INSERT INTO `brands` VALUES (2103, 'GOWN', 'N', 1103, 'Maintained', 1);
INSERT INTO `brands` VALUES (2104, 'NOWN', 'N', 1104, 'Maintained', 1);
INSERT INTO `brands` VALUES (2105, 'NYAN', 'N', 1105, 'Maintained', 1);
INSERT INTO `brands` VALUES (2106, 'SINK', 'N', 1106, 'Maintained', 1);
INSERT INTO `brands` VALUES (2107, 'SOPE', 'N', 1107, 'Maintained', 1);
INSERT INTO `brands` VALUES (2108, 'TNOT', 'N', 1108, 'Maintained', 1);
INSERT INTO `brands` VALUES (2109, 'TPAD', 'N', 1109, 'Maintained', 1);
INSERT INTO `brands` VALUES (2110, 'VIED', 'N', 1110, 'Maintained', 1);
INSERT INTO `brands` VALUES (2111, 'VASO', 'N', 1111, 'Maintained', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `brands_metadata`
-- 

CREATE TABLE `brands_metadata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandName` varchar(255) NOT NULL,
  `researchProjectName` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `brandNameMD_unq` (`brandName`),
  KEY `researchProjNameMD_fk` (`researchProjectName`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `brands_metadata`
-- 

INSERT INTO `brands_metadata` VALUES (1, 'AYAN', 'ARYAN');
INSERT INTO `brands_metadata` VALUES (2, 'ARIM', 'ARMAN');
INSERT INTO `brands_metadata` VALUES (3, 'BYTE', 'BRYAN');
INSERT INTO `brands_metadata` VALUES (4, 'BROM', 'BRMAN');

-- --------------------------------------------------------

-- 
-- Table structure for table `brandspecs`
-- 

CREATE TABLE `brandspecs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `productionLevel` int(11) NOT NULL,
  `inventorySold` int(11) NOT NULL DEFAULT '0',
  `currentInventory` int(11) NOT NULL DEFAULT '0',
  `retailPrice` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `brandAdv_SpecsFK` (`brandId`)
) ENGINE=MyISAM AUTO_INCREMENT=3112 DEFAULT CHARSET=latin1 AUTO_INCREMENT=3112 ;

-- 
-- Dumping data for table `brandspecs`
-- 

INSERT INTO `brandspecs` VALUES (3000, 2000, 80000, 0, 0, 340);
INSERT INTO `brandspecs` VALUES (3001, 2001, 50000, 0, 0, 430);
INSERT INTO `brandspecs` VALUES (3002, 2002, 80000, 0, 0, 340);
INSERT INTO `brandspecs` VALUES (3003, 2003, 50000, 0, 0, 430);
INSERT INTO `brandspecs` VALUES (3004, 2004, 80000, 0, 0, 340);
INSERT INTO `brandspecs` VALUES (3005, 2005, 50000, 0, 0, 430);
INSERT INTO `brandspecs` VALUES (3006, 2006, 80000, 0, 0, 340);
INSERT INTO `brandspecs` VALUES (3007, 2007, 50000, 0, 0, 430);
INSERT INTO `brandspecs` VALUES (3008, 2008, 80000, 0, 0, 340);
INSERT INTO `brandspecs` VALUES (3009, 2009, 50000, 0, 0, 430);
INSERT INTO `brandspecs` VALUES (3010, 2010, 80000, 0, 0, 340);
INSERT INTO `brandspecs` VALUES (3011, 2011, 50000, 0, 0, 430);
INSERT INTO `brandspecs` VALUES (3100, 2100, 80000, 0, 5767, 340);
INSERT INTO `brandspecs` VALUES (3101, 2101, 50000, 0, 3560, 430);
INSERT INTO `brandspecs` VALUES (3102, 2102, 80000, 0, 5767, 340);
INSERT INTO `brandspecs` VALUES (3103, 2103, 50000, 0, 3560, 430);
INSERT INTO `brandspecs` VALUES (3104, 2104, 80000, 0, 5767, 340);
INSERT INTO `brandspecs` VALUES (3105, 2105, 50000, 0, 3560, 430);
INSERT INTO `brandspecs` VALUES (3106, 2106, 80000, 0, 5767, 340);
INSERT INTO `brandspecs` VALUES (3107, 2107, 50000, 0, 3560, 430);
INSERT INTO `brandspecs` VALUES (3108, 2108, 80000, 0, 5767, 340);
INSERT INTO `brandspecs` VALUES (3109, 2109, 50000, 0, 3560, 430);
INSERT INTO `brandspecs` VALUES (3110, 2110, 80000, 0, 5767, 340);
INSERT INTO `brandspecs` VALUES (3111, 2111, 50000, 0, 3560, 430);

-- --------------------------------------------------------

-- 
-- Table structure for table `brandspecsmetadata`
-- 

CREATE TABLE `brandspecsmetadata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandName` varchar(100) NOT NULL,
  `productionLevel` int(11) NOT NULL,
  `inventorySold` int(11) NOT NULL DEFAULT '0',
  `currentInventory` int(11) NOT NULL DEFAULT '0',
  `retailPrice` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2004 DEFAULT CHARSET=latin1 AUTO_INCREMENT=2004 ;

-- 
-- Dumping data for table `brandspecsmetadata`
-- 

INSERT INTO `brandspecsmetadata` VALUES (2000, 'AYAN', 80000, 0, 0, 250);
INSERT INTO `brandspecsmetadata` VALUES (2001, 'ARIM', 50000, 0, 0, 400);
INSERT INTO `brandspecsmetadata` VALUES (2002, 'BYTE', 80000, 0, 0, 250);
INSERT INTO `brandspecsmetadata` VALUES (2003, 'BROM', 50000, 0, 0, 400);

-- --------------------------------------------------------

-- 
-- Table structure for table `channel_constants`
-- 

CREATE TABLE `channel_constants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `constName` varchar(1000) NOT NULL,
  `period` int(11) NOT NULL,
  `supermarket` float(10,4) NOT NULL,
  `generalStore` float(10,4) NOT NULL,
  `kiranaStore` float(10,4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `channel_constants`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `channelallocation`
-- 

CREATE TABLE `channelallocation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `supermarketAllocation` float(10,4) NOT NULL,
  `generalStoreAllocation` float(10,4) NOT NULL,
  `kiranaStoreAllocation` float(10,4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `channelAllocat_fk` (`brandId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `channelallocation`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `channelavailability`
-- 

CREATE TABLE `channelavailability` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `supermarketAvail` float(10,4) NOT NULL,
  `generalStoreAvail` float(10,4) NOT NULL,
  `kiranaStoreAvail` float(10,4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `channelAvail_fk` (`brandId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `channelavailability`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `channelmarketshare`
-- 

CREATE TABLE `channelmarketshare` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `supermarket_cms` float(10,4) NOT NULL,
  `generalStore_cms` float(10,4) NOT NULL,
  `kiranaStore_cms` float(10,4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `channelMarketSharebrandId_fk` (`brandId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `channelmarketshare`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `distributioncoverage`
-- 

CREATE TABLE `distributioncoverage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `supermarket_dc` float(10,4) NOT NULL,
  `generalStore_dc` float(10,4) NOT NULL,
  `kiranaStore_dc` float(10,4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `distributionCbrandId_fk` (`brandId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `distributioncoverage`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `fmdsvalues`
-- 

CREATE TABLE `fmdsvalues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `economicValue` float(10,4) NOT NULL,
  `qualityValue` float(10,4) NOT NULL,
  `appealValue` float(10,4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FMDSValues_fk` (`brandId`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

-- 
-- Dumping data for table `fmdsvalues`
-- 

INSERT INTO `fmdsvalues` VALUES (37, 18, 12.8755, 5.7576, 4.3434);
INSERT INTO `fmdsvalues` VALUES (38, 19, 8.5837, 11.9192, 10.0000);
INSERT INTO `fmdsvalues` VALUES (39, 20, 12.8755, 5.7576, 4.3434);
INSERT INTO `fmdsvalues` VALUES (40, 21, 8.5837, 11.9192, 10.0000);

-- --------------------------------------------------------

-- 
-- Table structure for table `fsemanticvalues`
-- 

CREATE TABLE `fsemanticvalues` (
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
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=latin1 AUTO_INCREMENT=45 ;

-- 
-- Dumping data for table `fsemanticvalues`
-- 

INSERT INTO `fsemanticvalues` VALUES (41, 18, 2.4545, 2.7576, 3.2424, 1.8485, 1.8485, 3.1373);
INSERT INTO `fsemanticvalues` VALUES (42, 19, 4.2727, 4.5758, 5.3030, 3.3636, 3.3636, 4.4249);
INSERT INTO `fsemanticvalues` VALUES (43, 20, 2.4545, 2.7576, 3.2424, 1.8485, 1.8485, 3.1373);
INSERT INTO `fsemanticvalues` VALUES (44, 21, 4.2727, 4.5758, 5.3030, 3.3636, 3.3636, 4.4249);

-- --------------------------------------------------------

-- 
-- Table structure for table `global_constants`
-- 

CREATE TABLE `global_constants` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(1000) DEFAULT NULL,
  `VALUE` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

-- 
-- Dumping data for table `global_constants`
-- 

INSERT INTO `global_constants` VALUES (1, 'CURRENT_PERIOD', '1');
INSERT INTO `global_constants` VALUES (2, 'MINIMUM_PERIOD', '0');
INSERT INTO `global_constants` VALUES (3, 'MAXIMUM_PERIOD', '12');
INSERT INTO `global_constants` VALUES (4, 'INFLATION', '2');
INSERT INTO `global_constants` VALUES (5, 'BLUE_BLOODS', 'BlueBloods');
INSERT INTO `global_constants` VALUES (6, 'RAFFLES', 'Raffles');
INSERT INTO `global_constants` VALUES (7, 'WANNABES', 'Wannabes');
INSERT INTO `global_constants` VALUES (8, 'STRUGGLERS', 'Strugglers');
INSERT INTO `global_constants` VALUES (9, 'DEPRIVED', 'Deprived');

-- --------------------------------------------------------

-- 
-- Table structure for table `iadv_brandawareness`
-- 

CREATE TABLE `iadv_brandawareness` (
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
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=latin1 AUTO_INCREMENT=68 ;

-- 
-- Dumping data for table `iadv_brandawareness`
-- 

INSERT INTO `iadv_brandawareness` VALUES (64, 18, 0.4520, 0.4520, 0.4520, 0.4520, 0.4520, 0.4520);
INSERT INTO `iadv_brandawareness` VALUES (65, 19, 0.4790, 0.5130, 0.6024, 0.4270, 0.4270, 0.4270);
INSERT INTO `iadv_brandawareness` VALUES (66, 20, 0.4520, 0.4520, 0.4520, 0.4520, 0.4520, 0.4520);
INSERT INTO `iadv_brandawareness` VALUES (67, 21, 0.4790, 0.5130, 0.6024, 0.4270, 0.4270, 0.4270);

-- --------------------------------------------------------

-- 
-- Table structure for table `iadv_effectievsegexpense`
-- 

CREATE TABLE `iadv_effectievsegexpense` (
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
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=latin1 AUTO_INCREMENT=71 ;

-- 
-- Dumping data for table `iadv_effectievsegexpense`
-- 

INSERT INTO `iadv_effectievsegexpense` VALUES (69, 20, 1015, 203, 203, 203, 203, 203);
INSERT INTO `iadv_effectievsegexpense` VALUES (70, 21, 1678, 436, 537, 235, 235, 235);
INSERT INTO `iadv_effectievsegexpense` VALUES (67, 18, 1015, 203, 203, 203, 203, 203);
INSERT INTO `iadv_effectievsegexpense` VALUES (68, 19, 1678, 436, 537, 235, 235, 235);

-- --------------------------------------------------------

-- 
-- Table structure for table `iadv_segmentexpense`
-- 

CREATE TABLE `iadv_segmentexpense` (
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
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=latin1 AUTO_INCREMENT=74 ;

-- 
-- Dumping data for table `iadv_segmentexpense`
-- 

INSERT INTO `iadv_segmentexpense` VALUES (72, 20, 1300, 260, 260, 260, 260, 260);
INSERT INTO `iadv_segmentexpense` VALUES (73, 21, 2150, 559, 688, 301, 301, 301);
INSERT INTO `iadv_segmentexpense` VALUES (70, 18, 1300, 260, 260, 260, 260, 260);
INSERT INTO `iadv_segmentexpense` VALUES (71, 19, 2150, 559, 688, 301, 301, 301);

-- --------------------------------------------------------

-- 
-- Table structure for table `imdsvalues`
-- 

CREATE TABLE `imdsvalues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `economicValue` float(10,4) NOT NULL,
  `qualityValue` float(10,4) NOT NULL,
  `appealValue` float(10,4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IMDSValues_fk` (`brandId`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=latin1 AUTO_INCREMENT=42 ;

-- 
-- Dumping data for table `imdsvalues`
-- 

INSERT INTO `imdsvalues` VALUES (38, 18, 12.8755, 5.7576, 4.3434);
INSERT INTO `imdsvalues` VALUES (39, 19, 8.5837, 11.9192, 10.0000);
INSERT INTO `imdsvalues` VALUES (40, 20, 12.8755, 5.7576, 4.3434);
INSERT INTO `imdsvalues` VALUES (41, 21, 8.5837, 11.9192, 10.0000);

-- --------------------------------------------------------

-- 
-- Table structure for table `isemanticvalues`
-- 

CREATE TABLE `isemanticvalues` (
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
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=latin1 AUTO_INCREMENT=45 ;

-- 
-- Dumping data for table `isemanticvalues`
-- 

INSERT INTO `isemanticvalues` VALUES (41, 18, 2.4545, 2.7576, 3.2424, 1.8485, 1.8485, 3.1373);
INSERT INTO `isemanticvalues` VALUES (42, 19, 4.2727, 4.5758, 5.3030, 3.3636, 3.3636, 4.4249);
INSERT INTO `isemanticvalues` VALUES (43, 20, 2.4545, 2.7576, 3.2424, 1.8485, 1.8485, 3.1373);
INSERT INTO `isemanticvalues` VALUES (44, 21, 4.2727, 4.5758, 5.3030, 3.3636, 3.3636, 4.4249);

-- --------------------------------------------------------

-- 
-- Table structure for table `marginoffered`
-- 

CREATE TABLE `marginoffered` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `supermarket_mo` float(10,4) NOT NULL,
  `generalStore_mo` float(10,4) NOT NULL,
  `kiranaStore_mo` float(10,4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `marginOffbrandId_fk` (`brandId`)
) ENGINE=MyISAM AUTO_INCREMENT=7112 DEFAULT CHARSET=latin1 AUTO_INCREMENT=7112 ;

-- 
-- Dumping data for table `marginoffered`
-- 

INSERT INTO `marginoffered` VALUES (7000, 2000, 20.0000, 15.0000, 10.0000);
INSERT INTO `marginoffered` VALUES (7001, 2001, 20.0000, 15.0000, 10.0000);
INSERT INTO `marginoffered` VALUES (7002, 2002, 20.0000, 15.0000, 10.0000);
INSERT INTO `marginoffered` VALUES (7003, 2003, 20.0000, 15.0000, 10.0000);
INSERT INTO `marginoffered` VALUES (7004, 2004, 20.0000, 15.0000, 10.0000);
INSERT INTO `marginoffered` VALUES (7005, 2005, 20.0000, 15.0000, 10.0000);
INSERT INTO `marginoffered` VALUES (7006, 2006, 20.0000, 15.0000, 10.0000);
INSERT INTO `marginoffered` VALUES (7007, 2007, 20.0000, 15.0000, 10.0000);
INSERT INTO `marginoffered` VALUES (7008, 2008, 20.0000, 15.0000, 10.0000);
INSERT INTO `marginoffered` VALUES (7009, 2009, 20.0000, 15.0000, 10.0000);
INSERT INTO `marginoffered` VALUES (7010, 2010, 20.0000, 15.0000, 10.0000);
INSERT INTO `marginoffered` VALUES (7011, 2011, 20.0000, 15.0000, 10.0000);
INSERT INTO `marginoffered` VALUES (7101, 2101, 20.0000, 15.0000, 10.0000);
INSERT INTO `marginoffered` VALUES (7100, 2100, 20.0000, 15.0000, 10.0000);
INSERT INTO `marginoffered` VALUES (7103, 2103, 20.0000, 15.0000, 10.0000);
INSERT INTO `marginoffered` VALUES (7102, 2102, 20.0000, 15.0000, 10.0000);
INSERT INTO `marginoffered` VALUES (7104, 2104, 20.0000, 15.0000, 10.0000);
INSERT INTO `marginoffered` VALUES (7105, 2105, 20.0000, 15.0000, 10.0000);
INSERT INTO `marginoffered` VALUES (7106, 2106, 20.0000, 15.0000, 10.0000);
INSERT INTO `marginoffered` VALUES (7107, 2107, 20.0000, 15.0000, 10.0000);
INSERT INTO `marginoffered` VALUES (7108, 2108, 20.0000, 15.0000, 10.0000);
INSERT INTO `marginoffered` VALUES (7109, 2109, 20.0000, 15.0000, 10.0000);
INSERT INTO `marginoffered` VALUES (7111, 2111, 20.0000, 15.0000, 10.0000);
INSERT INTO `marginoffered` VALUES (7110, 2110, 20.0000, 15.0000, 10.0000);

-- --------------------------------------------------------

-- 
-- Table structure for table `marginoffered_metadata`
-- 

CREATE TABLE `marginoffered_metadata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandName` int(11) NOT NULL,
  `supermarket_mo` float(10,4) NOT NULL,
  `generalStore_mo` float(10,4) NOT NULL,
  `kiranaStore_mo` float(10,4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `marginoffered_metadata`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `mds_segment_idealvaluemap`
-- 

CREATE TABLE `mds_segment_idealvaluemap` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `segment` varchar(200) NOT NULL,
  `period` int(11) NOT NULL,
  `economyValue` float(10,4) NOT NULL,
  `qualityValue` float(10,4) NOT NULL,
  `appealValue` float(10,4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `mds_segment_idealvaluemap`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `mds_segment_relativeimp`
-- 

CREATE TABLE `mds_segment_relativeimp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `segment` varchar(200) NOT NULL,
  `period` int(11) NOT NULL,
  `economyValue` float(10,4) NOT NULL,
  `qualityValue` float(10,4) NOT NULL,
  `appealValue` float(10,4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `mds_segment_relativeimp`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `perceptualobj`
-- 

CREATE TABLE `perceptualobj` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `scale` varchar(100) NOT NULL,
  `dimension1` varchar(100) DEFAULT NULL,
  `objective1` float DEFAULT NULL,
  `dimension2` varchar(100) DEFAULT NULL,
  `objective2` float DEFAULT NULL,
  `brandid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `perceptualobj_fk` (`brandid`)
) ENGINE=MyISAM AUTO_INCREMENT=5112 DEFAULT CHARSET=latin1 AUTO_INCREMENT=5112 ;

-- 
-- Dumping data for table `perceptualobj`
-- 

INSERT INTO `perceptualobj` VALUES (5000, 'NoObjective', '-', 0, '-', 0, 2000);
INSERT INTO `perceptualobj` VALUES (5001, 'NoObjective', '-', 0, '-', 0, 2001);
INSERT INTO `perceptualobj` VALUES (5002, 'NoObjective', '-', 0, '-', 0, 2002);
INSERT INTO `perceptualobj` VALUES (5003, 'NoObjective', '-', 0, '-', 0, 2003);
INSERT INTO `perceptualobj` VALUES (5004, 'NoObjective', '-', 0, '-', 0, 2004);
INSERT INTO `perceptualobj` VALUES (5005, 'NoObjective', '-', 0, '-', 0, 2005);
INSERT INTO `perceptualobj` VALUES (5006, 'NoObjective', '-', 0, '-', 0, 2006);
INSERT INTO `perceptualobj` VALUES (5007, 'NoObjective', '-', 0, '-', 0, 2007);
INSERT INTO `perceptualobj` VALUES (5008, 'NoObjective', '-', 0, '-', 0, 2008);
INSERT INTO `perceptualobj` VALUES (5009, 'NoObjective', '-', 0, '-', 0, 2009);
INSERT INTO `perceptualobj` VALUES (5010, 'NoObjective', '-', 0, '-', 0, 2010);
INSERT INTO `perceptualobj` VALUES (5011, 'NoObjective', '-', 0, '-', 0, 2011);
INSERT INTO `perceptualobj` VALUES (5101, 'NoObjective', '-', 0, '-', 0, 2101);
INSERT INTO `perceptualobj` VALUES (5100, 'SemanticScale', '-', 5, 'fragrance', 6, 2100);
INSERT INTO `perceptualobj` VALUES (5103, 'NoObjective', '-', 0, '-', 0, 2103);
INSERT INTO `perceptualobj` VALUES (5102, 'NoObjective', '-', 0, '-', 0, 2102);
INSERT INTO `perceptualobj` VALUES (5104, 'NoObjective', '-', 0, '-', 0, 2104);
INSERT INTO `perceptualobj` VALUES (5105, 'NoObjective', '-', 0, '-', 0, 2105);
INSERT INTO `perceptualobj` VALUES (5106, 'NoObjective', '-', 0, '-', 0, 2106);
INSERT INTO `perceptualobj` VALUES (5107, 'NoObjective', '-', 0, '-', 0, 2107);
INSERT INTO `perceptualobj` VALUES (5108, 'NoObjective', '-', 0, '-', 0, 2108);
INSERT INTO `perceptualobj` VALUES (5109, 'NoObjective', '-', 0, '-', 0, 2109);
INSERT INTO `perceptualobj` VALUES (5111, 'NoObjective', '-', 0, '-', 0, 2111);
INSERT INTO `perceptualobj` VALUES (5110, 'NoObjective', '-', 0, '-', 0, 2110);

-- --------------------------------------------------------

-- 
-- Table structure for table `period_constants`
-- 

CREATE TABLE `period_constants` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PERIOD` int(11) DEFAULT NULL,
  `NAME` varchar(1000) DEFAULT NULL,
  `VALUE` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `period_constants`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `purchaseintention_brand`
-- 

CREATE TABLE `purchaseintention_brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `blueBloods_PI` float(10,4) NOT NULL,
  `raffles_PI` float(10,4) NOT NULL,
  `wannabes_PI` float(10,4) NOT NULL,
  `strugglers_PI` float(10,4) NOT NULL,
  `deprived_PI` float(10,4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pi_fk` (`brandId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `purchaseintention_brand`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `purchaseintention_channel`
-- 

CREATE TABLE `purchaseintention_channel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `superMarkets_pi` float(10,4) NOT NULL,
  `generalStores_pi` float(10,4) NOT NULL,
  `kiranaStores_pi` float(10,4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `channelpi_fk` (`brandId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `purchaseintention_channel`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `rep_brand_awareness`
-- 

CREATE TABLE `rep_brand_awareness` (
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

-- 
-- Dumping data for table `rep_brand_awareness`
-- 

INSERT INTO `rep_brand_awareness` VALUES (1, 0, 'Ashish', 'AMAN', 0.2815, 0.2821, 0.2827, 0.2821, 0.2815, 0.2821);
INSERT INTO `rep_brand_awareness` VALUES (2, 0, 'Ashish', 'AYAN', 0.32, 0.3214, 0.3228, 0.3214, 0.32, 0.3213);
INSERT INTO `rep_brand_awareness` VALUES (3, 0, 'Geetu', 'GOWN', 0.2815, 0.2821, 0.2827, 0.2821, 0.2815, 0.2821);
INSERT INTO `rep_brand_awareness` VALUES (4, 0, 'Geetu', 'GYAN', 0.32, 0.3214, 0.3228, 0.3214, 0.32, 0.3213);
INSERT INTO `rep_brand_awareness` VALUES (5, 0, 'Nandu', 'NOWN', 0.32, 0.3214, 0.3228, 0.3214, 0.32, 0.3213);
INSERT INTO `rep_brand_awareness` VALUES (6, 0, 'Nandu', 'NYAN', 0.2815, 0.2821, 0.2827, 0.2821, 0.2815, 0.2821);
INSERT INTO `rep_brand_awareness` VALUES (7, 0, 'Shweta', 'SINK', 0.32, 0.3214, 0.3228, 0.3214, 0.32, 0.3213);
INSERT INTO `rep_brand_awareness` VALUES (8, 0, 'Shweta', 'SOPE', 0.2815, 0.2821, 0.2827, 0.2821, 0.2815, 0.2821);
INSERT INTO `rep_brand_awareness` VALUES (9, 0, 'Tanmaya', 'TNOT', 0.32, 0.3214, 0.3228, 0.3214, 0.32, 0.3213);
INSERT INTO `rep_brand_awareness` VALUES (10, 0, 'Tanmaya', 'TPAD', 0.2815, 0.2821, 0.2827, 0.2821, 0.2815, 0.2821);
INSERT INTO `rep_brand_awareness` VALUES (11, 0, 'Vishnu', 'VASO', 0.2815, 0.2821, 0.2827, 0.2821, 0.2815, 0.2821);
INSERT INTO `rep_brand_awareness` VALUES (12, 0, 'Vishnu', 'VIED', 0.32, 0.3214, 0.3228, 0.3214, 0.32, 0.3213);

-- --------------------------------------------------------

-- 
-- Table structure for table `rep_brand_characteristics`
-- 

CREATE TABLE `rep_brand_characteristics` (
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

-- 
-- Dumping data for table `rep_brand_characteristics`
-- 

INSERT INTO `rep_brand_characteristics` VALUES (1, 0, 'Ashish', 'AMAN', 'Maintained', 15, 48, 83, 31, 81, 240, 430);
INSERT INTO `rep_brand_characteristics` VALUES (2, 0, 'Ashish', 'AYAN', 'Maintained', 78, 82, 29, 78, 21, 195, 340);
INSERT INTO `rep_brand_characteristics` VALUES (3, 0, 'Geetu', 'GOWN', 'Maintained', 15, 48, 83, 31, 81, 240, 430);
INSERT INTO `rep_brand_characteristics` VALUES (4, 0, 'Geetu', 'GYAN', 'Maintained', 78, 82, 29, 78, 21, 195, 340);
INSERT INTO `rep_brand_characteristics` VALUES (5, 0, 'Nandu', 'NOWN', 'Maintained', 78, 82, 29, 78, 21, 195, 340);
INSERT INTO `rep_brand_characteristics` VALUES (6, 0, 'Nandu', 'NYAN', 'Maintained', 15, 48, 83, 31, 81, 240, 430);
INSERT INTO `rep_brand_characteristics` VALUES (7, 0, 'Shweta', 'SINK', 'Maintained', 78, 82, 29, 78, 21, 195, 340);
INSERT INTO `rep_brand_characteristics` VALUES (8, 0, 'Shweta', 'SOPE', 'Maintained', 15, 48, 83, 31, 81, 240, 430);
INSERT INTO `rep_brand_characteristics` VALUES (9, 0, 'Tanmaya', 'TNOT', 'Maintained', 78, 82, 29, 78, 21, 195, 340);
INSERT INTO `rep_brand_characteristics` VALUES (10, 0, 'Tanmaya', 'TPAD', 'Maintained', 15, 48, 83, 31, 81, 240, 430);
INSERT INTO `rep_brand_characteristics` VALUES (11, 0, 'Vishnu', 'VASO', 'Maintained', 15, 48, 83, 31, 81, 240, 430);
INSERT INTO `rep_brand_characteristics` VALUES (12, 0, 'Vishnu', 'VIED', 'Maintained', 78, 82, 29, 78, 21, 195, 340);

-- --------------------------------------------------------

-- 
-- Table structure for table `rep_brand_map`
-- 

CREATE TABLE `rep_brand_map` (
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
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

-- 
-- Dumping data for table `rep_brand_map`
-- 

INSERT INTO `rep_brand_map` VALUES (1, 0, 'Ashish', 'AMAN', 1.8, 3.8, 6, 2.8, 5.8, 4.7);
INSERT INTO `rep_brand_map` VALUES (2, 0, 'Ashish', 'AYAN', 5.7, 5.9, 2.7, 5.7, 2.2, 3.9);
INSERT INTO `rep_brand_map` VALUES (3, 0, 'Geetu', 'GOWN', 1.8, 3.8, 6, 2.8, 5.8, 4.7);
INSERT INTO `rep_brand_map` VALUES (4, 0, 'Geetu', 'GYAN', 5.7, 5.9, 2.7, 5.7, 2.2, 3.9);
INSERT INTO `rep_brand_map` VALUES (5, 0, 'Nandu', 'NOWN', 5.7, 5.9, 2.7, 5.7, 2.2, 3.9);
INSERT INTO `rep_brand_map` VALUES (6, 0, 'Nandu', 'NYAN', 1.8, 3.8, 6, 2.8, 5.8, 4.7);
INSERT INTO `rep_brand_map` VALUES (7, 0, 'Shweta', 'SINK', 5.7, 5.9, 2.7, 5.7, 2.2, 3.9);
INSERT INTO `rep_brand_map` VALUES (8, 0, 'Shweta', 'SOPE', 1.8, 3.8, 6, 2.8, 5.8, 4.7);
INSERT INTO `rep_brand_map` VALUES (9, 0, 'Tanmaya', 'TNOT', 5.7, 5.9, 2.7, 5.7, 2.2, 3.9);
INSERT INTO `rep_brand_map` VALUES (10, 0, 'Tanmaya', 'TPAD', 1.8, 3.8, 6, 2.8, 5.8, 4.7);
INSERT INTO `rep_brand_map` VALUES (11, 0, 'Vishnu', 'VASO', 1.8, 3.8, 6, 2.8, 5.8, 4.7);
INSERT INTO `rep_brand_map` VALUES (12, 0, 'Vishnu', 'VIED', 5.7, 5.9, 2.7, 5.7, 2.2, 3.9);
INSERT INTO `rep_brand_map` VALUES (13, 0, 'Segments', 'Blue Bloods', 6.2, 6.2, 5.4, 6.2, 5.4, 6.1);
INSERT INTO `rep_brand_map` VALUES (14, 0, 'Segments', 'Raffles', 4.8, 5.7, 4.8, 5.7, 4.5, 5);
INSERT INTO `rep_brand_map` VALUES (15, 0, 'Segments', 'Wannabees', 5.2, 4.5, 4, 4.5, 3.6, 3.4);
INSERT INTO `rep_brand_map` VALUES (16, 0, 'Segments', 'Strugglers', 3.2, 3.2, 2.6, 3.2, 2.6, 2.8);
INSERT INTO `rep_brand_map` VALUES (17, 0, 'Segments', 'Deprived', 2.5, 2.5, 2.1, 2.5, 2.1, 2.2);

-- --------------------------------------------------------

-- 
-- Table structure for table `rep_brand_pi`
-- 

CREATE TABLE `rep_brand_pi` (
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

-- 
-- Dumping data for table `rep_brand_pi`
-- 

INSERT INTO `rep_brand_pi` VALUES (1, 0, 'Ashish', 'AMAN', 0.122, 0.0603, 0.0231, 0.0629, 0.0481);
INSERT INTO `rep_brand_pi` VALUES (2, 0, 'Ashish', 'AYAN', 0.0446, 0.1064, 0.1436, 0.1038, 0.1185);
INSERT INTO `rep_brand_pi` VALUES (3, 0, 'Geetu', 'GOWN', 0.122, 0.0603, 0.0231, 0.0629, 0.0481);
INSERT INTO `rep_brand_pi` VALUES (4, 0, 'Geetu', 'GYAN', 0.0446, 0.1064, 0.1436, 0.1038, 0.1185);
INSERT INTO `rep_brand_pi` VALUES (5, 0, 'Nandu', 'NOWN', 0.0446, 0.1064, 0.1436, 0.1038, 0.1185);
INSERT INTO `rep_brand_pi` VALUES (6, 0, 'Nandu', 'NYAN', 0.122, 0.0603, 0.0231, 0.0629, 0.0481);
INSERT INTO `rep_brand_pi` VALUES (7, 0, 'Shweta', 'SINK', 0.0446, 0.1064, 0.1436, 0.1038, 0.1185);
INSERT INTO `rep_brand_pi` VALUES (8, 0, 'Shweta', 'SOPE', 0.122, 0.0603, 0.0231, 0.0629, 0.0481);
INSERT INTO `rep_brand_pi` VALUES (9, 0, 'Tanmaya', 'TNOT', 0.0446, 0.1064, 0.1436, 0.1038, 0.1185);
INSERT INTO `rep_brand_pi` VALUES (10, 0, 'Tanmaya', 'TPAD', 0.122, 0.0603, 0.0231, 0.0629, 0.0481);
INSERT INTO `rep_brand_pi` VALUES (11, 0, 'Vishnu', 'VASO', 0.122, 0.0603, 0.0231, 0.0629, 0.0481);
INSERT INTO `rep_brand_pi` VALUES (12, 0, 'Vishnu', 'VIED', 0.0446, 0.1064, 0.1436, 0.1038, 0.1185);

-- --------------------------------------------------------

-- 
-- Table structure for table `rep_buying_behaviour`
-- 

CREATE TABLE `rep_buying_behaviour` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `period` int(11) DEFAULT NULL,
  `segment` varchar(100) DEFAULT NULL,
  `supermarket` float DEFAULT NULL,
  `general` float DEFAULT NULL,
  `kirana` float DEFAULT NULL,
  `total` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

-- 
-- Dumping data for table `rep_buying_behaviour`
-- 

INSERT INTO `rep_buying_behaviour` VALUES (1, 0, 'Blue Bloods', 0.6755, 0.2762, 0.0483, 1);
INSERT INTO `rep_buying_behaviour` VALUES (2, 0, 'Raffles', 0.5504, 0.3764, 0.0732, 1);
INSERT INTO `rep_buying_behaviour` VALUES (3, 0, 'Wannabees', 0.2584, 0.5734, 0.1682, 1);
INSERT INTO `rep_buying_behaviour` VALUES (4, 0, 'Strugglers', 0.1503, 0.4421, 0.4076, 1);
INSERT INTO `rep_buying_behaviour` VALUES (5, 0, 'Deprived', 0.0365, 0.3349, 0.6286, 1);
INSERT INTO `rep_buying_behaviour` VALUES (6, 0, 'Total', 0.281816, 0.430135, 0.288049, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `rep_competitive_adv`
-- 

CREATE TABLE `rep_competitive_adv` (
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

-- 
-- Dumping data for table `rep_competitive_adv`
-- 

INSERT INTO `rep_competitive_adv` VALUES (1, 0, 'Ashish', 'AMAN', 220000, 220000, 220000, 220000, 220000, 1.1e+06);
INSERT INTO `rep_competitive_adv` VALUES (2, 0, 'Ashish', 'AYAN', 330000, 330000, 330000, 330000, 330000, 1.65e+06);
INSERT INTO `rep_competitive_adv` VALUES (3, 0, 'Geetu', 'GOWN', 220000, 220000, 220000, 220000, 220000, 1.1e+06);
INSERT INTO `rep_competitive_adv` VALUES (4, 0, 'Geetu', 'GYAN', 330000, 330000, 330000, 330000, 330000, 1.65e+06);
INSERT INTO `rep_competitive_adv` VALUES (5, 0, 'Nandu', 'NOWN', 330000, 330000, 330000, 330000, 330000, 1.65e+06);
INSERT INTO `rep_competitive_adv` VALUES (6, 0, 'Nandu', 'NYAN', 220000, 220000, 220000, 220000, 220000, 1.1e+06);
INSERT INTO `rep_competitive_adv` VALUES (7, 0, 'Shweta', 'SINK', 330000, 330000, 330000, 330000, 330000, 1.65e+06);
INSERT INTO `rep_competitive_adv` VALUES (8, 0, 'Shweta', 'SOPE', 220000, 220000, 220000, 220000, 220000, 1.1e+06);
INSERT INTO `rep_competitive_adv` VALUES (9, 0, 'Tanmaya', 'TNOT', 330000, 330000, 330000, 330000, 330000, 1.65e+06);
INSERT INTO `rep_competitive_adv` VALUES (10, 0, 'Tanmaya', 'TPAD', 220000, 220000, 220000, 220000, 220000, 1.1e+06);
INSERT INTO `rep_competitive_adv` VALUES (11, 0, 'Vishnu', 'VASO', 220000, 220000, 220000, 220000, 220000, 1.1e+06);
INSERT INTO `rep_competitive_adv` VALUES (12, 0, 'Vishnu', 'VIED', 330000, 330000, 330000, 330000, 330000, 1.65e+06);

-- --------------------------------------------------------

-- 
-- Table structure for table `rep_competitive_margin`
-- 

CREATE TABLE `rep_competitive_margin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `period` int(11) DEFAULT NULL,
  `team` varchar(100) DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `supermarket` float DEFAULT NULL,
  `general` float DEFAULT NULL,
  `kirana` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

-- 
-- Dumping data for table `rep_competitive_margin`
-- 

INSERT INTO `rep_competitive_margin` VALUES (1, 0, 'Ashish', 'AMAN', 0.2, 0.15, 0.1);
INSERT INTO `rep_competitive_margin` VALUES (2, 0, 'Ashish', 'AYAN', 0.2, 0.15, 0.1);
INSERT INTO `rep_competitive_margin` VALUES (3, 0, 'Geetu', 'GOWN', 0.2, 0.15, 0.1);
INSERT INTO `rep_competitive_margin` VALUES (4, 0, 'Geetu', 'GYAN', 0.2, 0.15, 0.1);
INSERT INTO `rep_competitive_margin` VALUES (5, 0, 'Nandu', 'NOWN', 0.2, 0.15, 0.1);
INSERT INTO `rep_competitive_margin` VALUES (6, 0, 'Nandu', 'NYAN', 0.2, 0.15, 0.1);
INSERT INTO `rep_competitive_margin` VALUES (7, 0, 'Shweta', 'SINK', 0.2, 0.15, 0.1);
INSERT INTO `rep_competitive_margin` VALUES (8, 0, 'Shweta', 'SOPE', 0.2, 0.15, 0.1);
INSERT INTO `rep_competitive_margin` VALUES (9, 0, 'Tanmaya', 'TNOT', 0.2, 0.15, 0.1);
INSERT INTO `rep_competitive_margin` VALUES (10, 0, 'Tanmaya', 'TPAD', 0.2, 0.15, 0.1);
INSERT INTO `rep_competitive_margin` VALUES (11, 0, 'Vishnu', 'VASO', 0.2, 0.15, 0.1);
INSERT INTO `rep_competitive_margin` VALUES (12, 0, 'Vishnu', 'VIED', 0.2, 0.15, 0.1);

-- --------------------------------------------------------

-- 
-- Table structure for table `rep_competitive_sales_force`
-- 

CREATE TABLE `rep_competitive_sales_force` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `period` int(11) DEFAULT NULL,
  `team` varchar(100) DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `supermarket` float DEFAULT NULL,
  `general` float DEFAULT NULL,
  `kirana` float DEFAULT NULL,
  `total` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

-- 
-- Dumping data for table `rep_competitive_sales_force`
-- 

INSERT INTO `rep_competitive_sales_force` VALUES (1, 0, 'Ashish', 'AMAN', 25, 25, 25, 75);
INSERT INTO `rep_competitive_sales_force` VALUES (2, 0, 'Ashish', 'AYAN', 25, 25, 25, 75);
INSERT INTO `rep_competitive_sales_force` VALUES (3, 0, 'Geetu', 'GOWN', 25, 25, 25, 75);
INSERT INTO `rep_competitive_sales_force` VALUES (4, 0, 'Geetu', 'GYAN', 25, 25, 25, 75);
INSERT INTO `rep_competitive_sales_force` VALUES (5, 0, 'Nandu', 'NOWN', 25, 25, 25, 75);
INSERT INTO `rep_competitive_sales_force` VALUES (6, 0, 'Nandu', 'NYAN', 25, 25, 25, 75);
INSERT INTO `rep_competitive_sales_force` VALUES (7, 0, 'Shweta', 'SINK', 25, 25, 25, 75);
INSERT INTO `rep_competitive_sales_force` VALUES (8, 0, 'Shweta', 'SOPE', 25, 25, 25, 75);
INSERT INTO `rep_competitive_sales_force` VALUES (9, 0, 'Tanmaya', 'TNOT', 25, 25, 25, 75);
INSERT INTO `rep_competitive_sales_force` VALUES (10, 0, 'Tanmaya', 'TPAD', 25, 25, 25, 75);
INSERT INTO `rep_competitive_sales_force` VALUES (11, 0, 'Vishnu', 'VASO', 25, 25, 25, 75);
INSERT INTO `rep_competitive_sales_force` VALUES (12, 0, 'Vishnu', 'VIED', 25, 25, 25, 75);

-- --------------------------------------------------------

-- 
-- Table structure for table `rep_distribution_cov`
-- 

CREATE TABLE `rep_distribution_cov` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `period` int(11) DEFAULT NULL,
  `team` varchar(100) DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `supermarket` float DEFAULT NULL,
  `general` float DEFAULT NULL,
  `kirana` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

-- 
-- Dumping data for table `rep_distribution_cov`
-- 

INSERT INTO `rep_distribution_cov` VALUES (1, 0, 'Ashish', 'AMAN', 0.448603, 0.31883, 0.376427);
INSERT INTO `rep_distribution_cov` VALUES (2, 0, 'Ashish', 'AYAN', 0.451192, 0.340176, 0.392592);
INSERT INTO `rep_distribution_cov` VALUES (3, 0, 'Geetu', 'GOWN', 0.448603, 0.31883, 0.376427);
INSERT INTO `rep_distribution_cov` VALUES (4, 0, 'Geetu', 'GYAN', 0.451192, 0.340176, 0.392592);
INSERT INTO `rep_distribution_cov` VALUES (5, 0, 'Nandu', 'NOWN', 0.451192, 0.340176, 0.392592);
INSERT INTO `rep_distribution_cov` VALUES (6, 0, 'Nandu', 'NYAN', 0.448603, 0.31883, 0.376427);
INSERT INTO `rep_distribution_cov` VALUES (7, 0, 'Shweta', 'SINK', 0.451192, 0.340176, 0.392592);
INSERT INTO `rep_distribution_cov` VALUES (8, 0, 'Shweta', 'SOPE', 0.448603, 0.31883, 0.376427);
INSERT INTO `rep_distribution_cov` VALUES (9, 0, 'Tanmaya', 'TNOT', 0.451192, 0.340176, 0.392592);
INSERT INTO `rep_distribution_cov` VALUES (10, 0, 'Tanmaya', 'TPAD', 0.448603, 0.31883, 0.376427);
INSERT INTO `rep_distribution_cov` VALUES (11, 0, 'Vishnu', 'VASO', 0.448603, 0.31883, 0.376427);
INSERT INTO `rep_distribution_cov` VALUES (12, 0, 'Vishnu', 'VIED', 0.451192, 0.340176, 0.392592);

-- --------------------------------------------------------

-- 
-- Table structure for table `rep_distribution_cov_mkt_share`
-- 

CREATE TABLE `rep_distribution_cov_mkt_share` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `period` int(11) DEFAULT NULL,
  `team` varchar(100) DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `supermarket` float DEFAULT NULL,
  `general` float DEFAULT NULL,
  `kirana` float DEFAULT NULL,
  `total` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

-- 
-- Dumping data for table `rep_distribution_cov_mkt_share`
-- 

INSERT INTO `rep_distribution_cov_mkt_share` VALUES (1, 0, 'Ashish', 'AMAN', 0.064799, 0.0640987, 0.063541, 0.0641403);
INSERT INTO `rep_distribution_cov_mkt_share` VALUES (2, 0, 'Ashish', 'AYAN', 0.101868, 0.102568, 0.103126, 0.102526);
INSERT INTO `rep_distribution_cov_mkt_share` VALUES (3, 0, 'Geetu', 'GOWN', 0.064799, 0.0640987, 0.063541, 0.0641403);
INSERT INTO `rep_distribution_cov_mkt_share` VALUES (4, 0, 'Geetu', 'GYAN', 0.101868, 0.102568, 0.103126, 0.102526);
INSERT INTO `rep_distribution_cov_mkt_share` VALUES (5, 0, 'Nandu', 'NOWN', 0.101868, 0.102568, 0.103126, 0.102526);
INSERT INTO `rep_distribution_cov_mkt_share` VALUES (6, 0, 'Nandu', 'NYAN', 0.064799, 0.0640987, 0.063541, 0.0641403);
INSERT INTO `rep_distribution_cov_mkt_share` VALUES (7, 0, 'Shweta', 'SINK', 0.101868, 0.102568, 0.103126, 0.102526);
INSERT INTO `rep_distribution_cov_mkt_share` VALUES (8, 0, 'Shweta', 'SOPE', 0.064799, 0.0640987, 0.063541, 0.0641403);
INSERT INTO `rep_distribution_cov_mkt_share` VALUES (9, 0, 'Tanmaya', 'TNOT', 0.101868, 0.102568, 0.103126, 0.102526);
INSERT INTO `rep_distribution_cov_mkt_share` VALUES (10, 0, 'Tanmaya', 'TPAD', 0.064799, 0.0640987, 0.063541, 0.0641403);
INSERT INTO `rep_distribution_cov_mkt_share` VALUES (11, 0, 'Vishnu', 'VASO', 0.064799, 0.0640987, 0.063541, 0.0641403);
INSERT INTO `rep_distribution_cov_mkt_share` VALUES (12, 0, 'Vishnu', 'VIED', 0.101868, 0.102568, 0.103126, 0.102526);
INSERT INTO `rep_distribution_cov_mkt_share` VALUES (13, 0, 'Total', '', 1, 1, 1, 1);
INSERT INTO `rep_distribution_cov_mkt_share` VALUES (14, 0, 'Total Sales(units)', '', 231192, 256542, 236304, 724038);
INSERT INTO `rep_distribution_cov_mkt_share` VALUES (15, 0, 'Total Sales(%Total)', '', 0.319309, 0.354321, 0.32637, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `rep_market_share`
-- 

CREATE TABLE `rep_market_share` (
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

-- 
-- Dumping data for table `rep_market_share`
-- 

INSERT INTO `rep_market_share` VALUES (1, 0, 'Ashish', 'AMAN', 0.123186, 0.0643171, 0.0281134, 0.0733056, 0.0589199, 0.0641403);
INSERT INTO `rep_market_share` VALUES (2, 0, 'Ashish', 'AYAN', 0.0434633, 0.102331, 0.138532, 0.0933418, 0.107728, 0.102526);
INSERT INTO `rep_market_share` VALUES (3, 0, 'Geetu', 'GOWN', 0.123186, 0.0643171, 0.0281134, 0.0733056, 0.0589199, 0.0641403);
INSERT INTO `rep_market_share` VALUES (4, 0, 'Geetu', 'GYAN', 0.0434633, 0.102331, 0.138532, 0.0933418, 0.107728, 0.102526);
INSERT INTO `rep_market_share` VALUES (5, 0, 'Nandu', 'NOWN', 0.0434633, 0.102331, 0.138532, 0.0933418, 0.107728, 0.102526);
INSERT INTO `rep_market_share` VALUES (6, 0, 'Nandu', 'NYAN', 0.123186, 0.0643171, 0.0281134, 0.0733056, 0.0589199, 0.0641403);
INSERT INTO `rep_market_share` VALUES (7, 0, 'Shweta', 'SINK', 0.0434633, 0.102331, 0.138532, 0.0933418, 0.107728, 0.102526);
INSERT INTO `rep_market_share` VALUES (8, 0, 'Shweta', 'SOPE', 0.123186, 0.0643171, 0.0281134, 0.0733056, 0.0589199, 0.0641403);
INSERT INTO `rep_market_share` VALUES (9, 0, 'Tanmaya', 'TNOT', 0.0434633, 0.102331, 0.138532, 0.0933418, 0.107728, 0.102526);
INSERT INTO `rep_market_share` VALUES (10, 0, 'Tanmaya', 'TPAD', 0.123186, 0.0643171, 0.0281134, 0.0733056, 0.0589199, 0.0641403);
INSERT INTO `rep_market_share` VALUES (11, 0, 'Vishnu', 'VASO', 0.123186, 0.0643171, 0.0281134, 0.0733056, 0.0589199, 0.0641403);
INSERT INTO `rep_market_share` VALUES (12, 0, 'Vishnu', 'VIED', 0.0434633, 0.102331, 0.138532, 0.0933418, 0.107728, 0.102526);
INSERT INTO `rep_market_share` VALUES (13, 0, 'Total', '', 1, 1, 1, 1, 1, 1);
INSERT INTO `rep_market_share` VALUES (14, 0, 'Total Sales(units)', '', 85020, 119958, 171318, 230886, 116856, 724038);
INSERT INTO `rep_market_share` VALUES (15, 0, 'Total Sales(%Total)', '', 0.117425, 0.165679, 0.236615, 0.318887, 0.161395, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `rep_perceptual_map`
-- 

CREATE TABLE `rep_perceptual_map` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `period` int(11) NOT NULL,
  `team_name` varchar(255) DEFAULT NULL,
  `brand_name` varchar(255) DEFAULT NULL,
  `economy` float DEFAULT NULL,
  `quality` float DEFAULT NULL,
  `appeal` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

-- 
-- Dumping data for table `rep_perceptual_map`
-- 

INSERT INTO `rep_perceptual_map` VALUES (1, 0, 'Ashish', 'AMAN', 7.7, 15, 6.1);
INSERT INTO `rep_perceptual_map` VALUES (2, 0, 'Ashish', 'AYAN', 10.3, 7.3, 15.8);
INSERT INTO `rep_perceptual_map` VALUES (3, 0, 'Geetu', 'GOWN', 7.7, 15, 6.1);
INSERT INTO `rep_perceptual_map` VALUES (4, 0, 'Geetu', 'GYAN', 10.3, 7.3, 15.8);
INSERT INTO `rep_perceptual_map` VALUES (5, 0, 'Nandu', 'NOWN', 10.3, 7.3, 15.8);
INSERT INTO `rep_perceptual_map` VALUES (6, 0, 'Nandu', 'NYAN', 7.7, 15, 6.1);
INSERT INTO `rep_perceptual_map` VALUES (7, 0, 'Shweta', 'SINK', 10.3, 7.3, 15.8);
INSERT INTO `rep_perceptual_map` VALUES (8, 0, 'Shweta', 'SOPE', 7.7, 15, 6.1);
INSERT INTO `rep_perceptual_map` VALUES (9, 0, 'Tanmaya', 'TNOT', 10.3, 7.3, 15.8);
INSERT INTO `rep_perceptual_map` VALUES (10, 0, 'Tanmaya', 'TPAD', 7.7, 15, 6.1);
INSERT INTO `rep_perceptual_map` VALUES (11, 0, 'Vishnu', 'VASO', 7.7, 15, 6.1);
INSERT INTO `rep_perceptual_map` VALUES (12, 0, 'Vishnu', 'VIED', 10.3, 7.3, 15.8);
INSERT INTO `rep_perceptual_map` VALUES (13, 0, 'Segments', 'Blue Bloods', 3, 15.2, 17.3);
INSERT INTO `rep_perceptual_map` VALUES (14, 0, 'Segments', 'Raffles', 6.7, 13, 14.8);
INSERT INTO `rep_perceptual_map` VALUES (15, 0, 'Segments', 'Wannabees', 12, 9.9, 12.4);
INSERT INTO `rep_perceptual_map` VALUES (16, 0, 'Segments', 'Strugglers', 14, 5.7, 7.3);
INSERT INTO `rep_perceptual_map` VALUES (17, 0, 'Segments', 'Deprived', 16, 3.9, 5);

-- --------------------------------------------------------

-- 
-- Table structure for table `rep_project_characteristics`
-- 

CREATE TABLE `rep_project_characteristics` (
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

-- 
-- Dumping data for table `rep_project_characteristics`
-- 

INSERT INTO `rep_project_characteristics` VALUES (1, 0, 'Ashish', 'ARYAN', 78, 82, 29, 78, 21, 195, 173, 1.21343e+06, 0);
INSERT INTO `rep_project_characteristics` VALUES (2, 0, 'Ashish', 'ARMAN', 15, 48, 83, 31, 81, 240, 199, 869619, 0);
INSERT INTO `rep_project_characteristics` VALUES (3, 0, 'Geetu', 'GRYAN', 78, 82, 29, 78, 21, 195, 173, 1.21343e+06, 0);
INSERT INTO `rep_project_characteristics` VALUES (4, 0, 'Geetu', 'GROWN', 15, 48, 83, 31, 81, 240, 199, 869619, 0);
INSERT INTO `rep_project_characteristics` VALUES (5, 0, 'Nandu', 'NROWN', 78, 82, 29, 78, 21, 195, 173, 1.21343e+06, 0);
INSERT INTO `rep_project_characteristics` VALUES (6, 0, 'Nandu', 'NRYAN', 15, 48, 83, 31, 81, 240, 199, 869619, 0);
INSERT INTO `rep_project_characteristics` VALUES (7, 0, 'Shweta', 'SROPE', 15, 48, 83, 31, 81, 240, 199, 869619, 0);
INSERT INTO `rep_project_characteristics` VALUES (8, 0, 'Shweta', 'SRINK', 78, 82, 29, 78, 21, 195, 173, 1.21343e+06, 0);
INSERT INTO `rep_project_characteristics` VALUES (9, 0, 'Tanmaya', 'TRNOT', 78, 82, 29, 78, 21, 195, 173, 1.21343e+06, 0);
INSERT INTO `rep_project_characteristics` VALUES (10, 0, 'Tanmaya', 'TRPAD', 15, 48, 83, 31, 81, 240, 199, 869619, 0);
INSERT INTO `rep_project_characteristics` VALUES (11, 0, 'Vishnu', 'VRIED', 78, 82, 29, 78, 21, 195, 173, 1.21343e+06, 0);
INSERT INTO `rep_project_characteristics` VALUES (12, 0, 'Vishnu', 'VRASO', 15, 48, 83, 31, 81, 240, 199, 869619, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `rep_stock_market`
-- 

CREATE TABLE `rep_stock_market` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `period` int(11) DEFAULT NULL,
  `team_name` varchar(100) DEFAULT NULL,
  `spi` int(11) DEFAULT NULL,
  `market_capitalization` int(11) DEFAULT NULL,
  `current_net_contribution` int(11) DEFAULT NULL,
  `cum_net_contribution` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

-- 
-- Dumping data for table `rep_stock_market`
-- 

INSERT INTO `rep_stock_market` VALUES (1, 0, 'Ashish', 149, 220921555, 5139074, 5139074);
INSERT INTO `rep_stock_market` VALUES (2, 0, 'Geetu', 149, 220921555, 5139074, 5139074);
INSERT INTO `rep_stock_market` VALUES (3, 0, 'Nandu', 149, 220921555, 5139074, 5139074);
INSERT INTO `rep_stock_market` VALUES (4, 0, 'Shweta', 149, 220921555, 5139074, 5139074);
INSERT INTO `rep_stock_market` VALUES (5, 0, 'Tanmaya', 149, 220921555, 5139074, 5139074);
INSERT INTO `rep_stock_market` VALUES (6, 0, 'Vishnu', 149, 220921555, 5139074, 5139074);

-- --------------------------------------------------------

-- 
-- Table structure for table `reports`
-- 

CREATE TABLE `reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `report_name` varchar(255) NOT NULL,
  `report_cost` float(10,4) NOT NULL,
  `period` int(11) NOT NULL,
  `report_app_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8113 DEFAULT CHARSET=latin1 AUTO_INCREMENT=8113 ;

-- 
-- Dumping data for table `reports`
-- 

INSERT INTO `reports` VALUES (8000, 'Benchmarking', 100000.0000, 1, 'Benchmarking');
INSERT INTO `reports` VALUES (8001, 'Brand Characteristics', 20000.0000, 1, 'BrandCharacteristicReport');
INSERT INTO `reports` VALUES (8002, 'Brand Awareness', 30000.0000, 1, 'BrandAwarenessReport');
INSERT INTO `reports` VALUES (8003, 'Brand Purchase Intentions', 30000.0000, 1, 'BrandPurchaseIntentionReport');
INSERT INTO `reports` VALUES (8004, 'Brand Market Share', 50000.0000, 1, 'MarketShareReport');
INSERT INTO `reports` VALUES (8005, 'Semantic Scale', 100000.0000, 1, 'SemanticScaleReport');
INSERT INTO `reports` VALUES (8006, 'Multi Dimensional Scale', 100000.0000, 1, 'MultiDimensionalScaleReport');
INSERT INTO `reports` VALUES (8007, 'Shopping Habits', 10000.0000, 1, 'ShoppingHabitsReport');
INSERT INTO `reports` VALUES (8008, 'Distribution Coverage', 25000.0000, 1, 'DistributionCoverageReport');
INSERT INTO `reports` VALUES (8009, 'Distribution Market Share', 30000.0000, 1, 'DistributionMarketShareReport');
INSERT INTO `reports` VALUES (8010, 'Competitive Advertisment Expense', 30000.0000, 1, 'CompetitiveAdvExpenseReport');
INSERT INTO `reports` VALUES (8011, 'Competitive Sales Expense', 30000.0000, 1, 'CompetitiveSalesForceReport');
INSERT INTO `reports` VALUES (8012, 'Competitive Margin', 30000.0000, 1, 'CompetitiveMarginReport');
INSERT INTO `reports` VALUES (8100, 'Benchmarking', 103000.0000, 2, 'Benchmarking');
INSERT INTO `reports` VALUES (8101, 'Brand Characteristics', 20600.0000, 2, 'BrandCharacteristicReport');
INSERT INTO `reports` VALUES (8102, 'Brand Awareness', 30900.0000, 2, 'BrandAwarenessReport');
INSERT INTO `reports` VALUES (8103, 'Brand Purchase Intentions', 30900.0000, 2, 'BrandPurchaseIntentionReport');
INSERT INTO `reports` VALUES (8104, 'Brand Market Share', 51500.0000, 2, 'MarketShareReport');
INSERT INTO `reports` VALUES (8105, 'Semantic Scale', 103000.0000, 2, 'SemanticScaleReport');
INSERT INTO `reports` VALUES (8106, 'Multi Dimensional Scale', 103000.0000, 2, 'MultiDimensionalScaleReport');
INSERT INTO `reports` VALUES (8107, 'Shopping Habits', 10300.0000, 2, 'ShoppingHabitsReport');
INSERT INTO `reports` VALUES (8108, 'Distribution Coverage', 25750.0000, 2, 'DistributionCoverageReport');
INSERT INTO `reports` VALUES (8109, 'Distribution Market Share', 30900.0000, 2, 'DistributionMarketShareReport');
INSERT INTO `reports` VALUES (8110, 'Competitive Advertisment Expense', 30900.0000, 2, 'CompetitiveAdvExpenseReport');
INSERT INTO `reports` VALUES (8111, 'Competitive Sales Expense', 30900.0000, 2, 'CompetitiveSalesForceReport');
INSERT INTO `reports` VALUES (8112, 'Competitive Margin', 30900.0000, 2, 'CompetitiveMarginReport');

-- --------------------------------------------------------

-- 
-- Table structure for table `reports_team_purchase_map`
-- 

CREATE TABLE `reports_team_purchase_map` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `report_id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  `period` int(11) NOT NULL,
  `access_flag` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `report_purchase_reportId_fk` (`report_id`),
  KEY `report_purchase_teamId_fk` (`team_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9178 DEFAULT CHARSET=latin1 AUTO_INCREMENT=9178 ;

-- 
-- Dumping data for table `reports_team_purchase_map`
-- 

INSERT INTO `reports_team_purchase_map` VALUES (9000, 8000, 1, 1, 'Y');
INSERT INTO `reports_team_purchase_map` VALUES (9001, 8001, 1, 1, 'Y');
INSERT INTO `reports_team_purchase_map` VALUES (9002, 8002, 1, 1, 'Y');
INSERT INTO `reports_team_purchase_map` VALUES (9003, 8003, 1, 1, 'Y');
INSERT INTO `reports_team_purchase_map` VALUES (9004, 8004, 1, 1, 'Y');
INSERT INTO `reports_team_purchase_map` VALUES (9005, 8005, 1, 1, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9006, 8006, 1, 1, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9007, 8007, 1, 1, 'Y');
INSERT INTO `reports_team_purchase_map` VALUES (9008, 8008, 1, 1, 'Y');
INSERT INTO `reports_team_purchase_map` VALUES (9009, 8009, 1, 1, 'Y');
INSERT INTO `reports_team_purchase_map` VALUES (9010, 8010, 1, 1, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9011, 8011, 1, 1, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9012, 8012, 1, 1, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9013, 8000, 2, 1, 'Y');
INSERT INTO `reports_team_purchase_map` VALUES (9014, 8001, 2, 1, 'Y');
INSERT INTO `reports_team_purchase_map` VALUES (9015, 8002, 2, 1, 'Y');
INSERT INTO `reports_team_purchase_map` VALUES (9016, 8003, 2, 1, 'Y');
INSERT INTO `reports_team_purchase_map` VALUES (9017, 8004, 2, 1, 'Y');
INSERT INTO `reports_team_purchase_map` VALUES (9018, 8005, 2, 1, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9019, 8006, 2, 1, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9020, 8007, 2, 1, 'Y');
INSERT INTO `reports_team_purchase_map` VALUES (9021, 8008, 2, 1, 'Y');
INSERT INTO `reports_team_purchase_map` VALUES (9022, 8009, 2, 1, 'Y');
INSERT INTO `reports_team_purchase_map` VALUES (9023, 8010, 2, 1, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9024, 8011, 2, 1, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9025, 8012, 2, 1, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9026, 8000, 3, 1, 'Y');
INSERT INTO `reports_team_purchase_map` VALUES (9027, 8001, 3, 1, 'Y');
INSERT INTO `reports_team_purchase_map` VALUES (9028, 8002, 3, 1, 'Y');
INSERT INTO `reports_team_purchase_map` VALUES (9029, 8003, 3, 1, 'Y');
INSERT INTO `reports_team_purchase_map` VALUES (9030, 8004, 3, 1, 'Y');
INSERT INTO `reports_team_purchase_map` VALUES (9031, 8005, 3, 1, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9032, 8006, 3, 1, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9033, 8007, 3, 1, 'Y');
INSERT INTO `reports_team_purchase_map` VALUES (9034, 8008, 3, 1, 'Y');
INSERT INTO `reports_team_purchase_map` VALUES (9035, 8009, 3, 1, 'Y');
INSERT INTO `reports_team_purchase_map` VALUES (9036, 8010, 3, 1, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9037, 8011, 3, 1, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9038, 8012, 3, 1, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9039, 8000, 4, 1, 'Y');
INSERT INTO `reports_team_purchase_map` VALUES (9040, 8001, 4, 1, 'Y');
INSERT INTO `reports_team_purchase_map` VALUES (9041, 8002, 4, 1, 'Y');
INSERT INTO `reports_team_purchase_map` VALUES (9042, 8003, 4, 1, 'Y');
INSERT INTO `reports_team_purchase_map` VALUES (9043, 8004, 4, 1, 'Y');
INSERT INTO `reports_team_purchase_map` VALUES (9044, 8005, 4, 1, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9045, 8006, 4, 1, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9046, 8007, 4, 1, 'Y');
INSERT INTO `reports_team_purchase_map` VALUES (9047, 8008, 4, 1, 'Y');
INSERT INTO `reports_team_purchase_map` VALUES (9048, 8009, 4, 1, 'Y');
INSERT INTO `reports_team_purchase_map` VALUES (9049, 8010, 4, 1, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9050, 8011, 4, 1, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9051, 8012, 4, 1, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9052, 8000, 5, 1, 'Y');
INSERT INTO `reports_team_purchase_map` VALUES (9053, 8001, 5, 1, 'Y');
INSERT INTO `reports_team_purchase_map` VALUES (9054, 8002, 5, 1, 'Y');
INSERT INTO `reports_team_purchase_map` VALUES (9055, 8003, 5, 1, 'Y');
INSERT INTO `reports_team_purchase_map` VALUES (9056, 8004, 5, 1, 'Y');
INSERT INTO `reports_team_purchase_map` VALUES (9057, 8005, 5, 1, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9058, 8006, 5, 1, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9059, 8007, 5, 1, 'Y');
INSERT INTO `reports_team_purchase_map` VALUES (9060, 8008, 5, 1, 'Y');
INSERT INTO `reports_team_purchase_map` VALUES (9061, 8009, 5, 1, 'Y');
INSERT INTO `reports_team_purchase_map` VALUES (9062, 8010, 5, 1, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9063, 8011, 5, 1, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9064, 8012, 5, 1, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9065, 8000, 6, 1, 'Y');
INSERT INTO `reports_team_purchase_map` VALUES (9066, 8001, 6, 1, 'Y');
INSERT INTO `reports_team_purchase_map` VALUES (9067, 8002, 6, 1, 'Y');
INSERT INTO `reports_team_purchase_map` VALUES (9068, 8003, 6, 1, 'Y');
INSERT INTO `reports_team_purchase_map` VALUES (9069, 8004, 6, 1, 'Y');
INSERT INTO `reports_team_purchase_map` VALUES (9070, 8005, 6, 1, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9071, 8006, 6, 1, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9072, 8007, 6, 1, 'Y');
INSERT INTO `reports_team_purchase_map` VALUES (9073, 8008, 6, 1, 'Y');
INSERT INTO `reports_team_purchase_map` VALUES (9074, 8009, 6, 1, 'Y');
INSERT INTO `reports_team_purchase_map` VALUES (9075, 8010, 6, 1, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9076, 8011, 6, 1, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9077, 8012, 6, 1, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9100, 8100, 1, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9101, 8101, 1, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9102, 8102, 1, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9103, 8103, 1, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9104, 8104, 1, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9105, 8105, 1, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9106, 8106, 1, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9107, 8107, 1, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9108, 8108, 1, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9109, 8109, 1, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9110, 8110, 1, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9111, 8111, 1, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9112, 8112, 1, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9113, 8100, 2, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9114, 8101, 2, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9115, 8102, 2, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9116, 8103, 2, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9117, 8104, 2, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9118, 8105, 2, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9119, 8106, 2, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9120, 8107, 2, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9121, 8108, 2, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9122, 8109, 2, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9123, 8110, 2, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9124, 8111, 2, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9125, 8112, 2, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9126, 8100, 3, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9127, 8101, 3, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9128, 8102, 3, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9129, 8103, 3, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9130, 8104, 3, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9131, 8105, 3, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9132, 8106, 3, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9133, 8107, 3, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9134, 8108, 3, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9135, 8109, 3, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9136, 8110, 3, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9137, 8111, 3, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9138, 8112, 3, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9139, 8100, 4, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9140, 8101, 4, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9141, 8102, 4, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9142, 8103, 4, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9143, 8104, 4, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9144, 8105, 4, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9145, 8106, 4, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9146, 8107, 4, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9147, 8108, 4, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9148, 8109, 4, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9149, 8110, 4, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9150, 8111, 4, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9151, 8112, 4, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9152, 8100, 5, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9153, 8101, 5, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9154, 8102, 5, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9155, 8103, 5, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9156, 8104, 5, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9157, 8105, 5, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9158, 8106, 5, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9159, 8107, 5, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9160, 8108, 5, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9161, 8109, 5, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9162, 8110, 5, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9163, 8111, 5, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9164, 8112, 5, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9165, 8100, 6, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9166, 8101, 6, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9167, 8102, 6, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9168, 8103, 6, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9169, 8104, 6, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9170, 8105, 6, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9171, 8106, 6, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9172, 8107, 6, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9173, 8108, 6, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9174, 8109, 6, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9175, 8110, 6, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9176, 8111, 6, 2, 'N');
INSERT INTO `reports_team_purchase_map` VALUES (9177, 8112, 6, 2, 'N');

-- --------------------------------------------------------

-- 
-- Table structure for table `researchproject`
-- 

CREATE TABLE `researchproject` (
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
  KEY `TEAMID_FK` (`TEAMID`)
) ENGINE=InnoDB AUTO_INCREMENT=1112 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1112 ;

-- 
-- Dumping data for table `researchproject`
-- 

INSERT INTO `researchproject` VALUES (1000, 'ARYAN', 78, 82, 29, 78, 21, 173, 195, 1213434, 0, 'Y', 0, 0, 1, 1302596, 1213434);
INSERT INTO `researchproject` VALUES (1001, 'ARMAN', 15, 48, 83, 31, 81, 199, 240, 869619, 0, 'Y', 0, 0, 1, 1443120, 869619);
INSERT INTO `researchproject` VALUES (1002, 'GRYAN', 78, 82, 29, 78, 21, 173, 195, 1213434, 0, 'Y', 0, 0, 2, 1302596, 1213434);
INSERT INTO `researchproject` VALUES (1003, 'GROWN', 15, 48, 83, 31, 81, 199, 240, 869619, 0, 'Y', 0, 0, 2, 1443120, 869619);
INSERT INTO `researchproject` VALUES (1004, 'NROWN', 78, 82, 29, 78, 21, 173, 195, 1213434, 0, 'Y', 0, 0, 3, 1302596, 1213434);
INSERT INTO `researchproject` VALUES (1005, 'NRYAN', 15, 48, 83, 31, 81, 199, 240, 869619, 0, 'Y', 0, 0, 3, 1443120, 869619);
INSERT INTO `researchproject` VALUES (1006, 'SRINK', 78, 82, 29, 78, 21, 173, 195, 1213434, 0, 'Y', 0, 0, 4, 1302596, 1213434);
INSERT INTO `researchproject` VALUES (1007, 'SROPE', 15, 48, 83, 31, 81, 199, 240, 869619, 0, 'Y', 0, 0, 4, 1443120, 869619);
INSERT INTO `researchproject` VALUES (1008, 'TRNOT', 78, 82, 29, 78, 21, 173, 195, 1213434, 0, 'Y', 0, 0, 5, 1302596, 1213434);
INSERT INTO `researchproject` VALUES (1009, 'TRPAD', 15, 48, 83, 31, 81, 199, 240, 869619, 0, 'Y', 0, 0, 5, 1443120, 869619);
INSERT INTO `researchproject` VALUES (1010, 'VRIED', 78, 82, 29, 78, 21, 173, 195, 1213434, 0, 'Y', 0, 0, 6, 1302596, 1213434);
INSERT INTO `researchproject` VALUES (1011, 'VRASO', 15, 48, 83, 31, 81, 199, 240, 869619, 0, 'Y', 0, 0, 6, 1443120, 869619);
INSERT INTO `researchproject` VALUES (1100, 'ARYAN', 78, 82, 29, 78, 21, 178, 201, 1213434, 1, 'Y', 0, 0, 1, 1302596, 1213434);
INSERT INTO `researchproject` VALUES (1101, 'ARMAN', 15, 48, 83, 31, 81, 205, 247, 869619, 1, 'Y', 0, 0, 1, 1443120, 869619);
INSERT INTO `researchproject` VALUES (1102, 'GRYAN', 78, 82, 29, 78, 21, 178, 201, 1213434, 1, 'Y', 0, 0, 2, 1302596, 1213434);
INSERT INTO `researchproject` VALUES (1103, 'GROWN', 15, 48, 83, 31, 81, 205, 247, 869619, 1, 'Y', 0, 0, 2, 1443120, 869619);
INSERT INTO `researchproject` VALUES (1104, 'NROWN', 78, 82, 29, 78, 21, 178, 201, 1213434, 1, 'Y', 0, 0, 3, 1302596, 1213434);
INSERT INTO `researchproject` VALUES (1105, 'NRYAN', 15, 48, 83, 31, 81, 205, 247, 869619, 1, 'Y', 0, 0, 3, 1443120, 869619);
INSERT INTO `researchproject` VALUES (1106, 'SRINK', 78, 82, 29, 78, 21, 178, 201, 1213434, 1, 'Y', 0, 0, 4, 1302596, 1213434);
INSERT INTO `researchproject` VALUES (1107, 'SROPE', 15, 48, 83, 31, 81, 205, 247, 869619, 1, 'Y', 0, 0, 4, 1443120, 869619);
INSERT INTO `researchproject` VALUES (1108, 'TRNOT', 78, 82, 29, 78, 21, 178, 201, 1213434, 1, 'Y', 0, 0, 5, 1302596, 1213434);
INSERT INTO `researchproject` VALUES (1109, 'TRPAD', 15, 48, 83, 31, 81, 205, 247, 869619, 1, 'Y', 0, 0, 5, 1443120, 869619);
INSERT INTO `researchproject` VALUES (1110, 'VRIED', 78, 82, 29, 78, 21, 178, 201, 1213434, 1, 'Y', 0, 0, 6, 1302596, 1213434);
INSERT INTO `researchproject` VALUES (1111, 'VRASO', 15, 48, 83, 31, 81, 205, 247, 869619, 1, 'Y', 0, 0, 6, 1443120, 869619);

-- --------------------------------------------------------

-- 
-- Table structure for table `researchproject_metadata`
-- 

CREATE TABLE `researchproject_metadata` (
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
  KEY `teamName_fk` (`teamName`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `researchproject_metadata`
-- 

INSERT INTO `researchproject_metadata` VALUES (1, 'ARYAN', 25, 30, 38, 15, 15, 'Alpha', 1, 140);
INSERT INTO `researchproject_metadata` VALUES (2, 'ARMAN', 55, 60, 72, 40, 40, 'Alpha', 1, 250);
INSERT INTO `researchproject_metadata` VALUES (3, 'BRYAN', 25, 30, 38, 15, 15, 'Bravo', 1, 140);
INSERT INTO `researchproject_metadata` VALUES (4, 'BRMAN', 55, 60, 72, 40, 40, 'Bravo', 1, 250);

-- --------------------------------------------------------

-- 
-- Table structure for table `salesforce`
-- 

CREATE TABLE `salesforce` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `supermarket_sf` float(10,4) NOT NULL,
  `generalStore_sf` float(10,4) NOT NULL,
  `kiranaStore_sf` float(10,4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `salesForcebrandId_fk` (`brandId`)
) ENGINE=MyISAM AUTO_INCREMENT=6112 DEFAULT CHARSET=latin1 AUTO_INCREMENT=6112 ;

-- 
-- Dumping data for table `salesforce`
-- 

INSERT INTO `salesforce` VALUES (6000, 2000, 25.0000, 25.0000, 25.0000);
INSERT INTO `salesforce` VALUES (6001, 2001, 25.0000, 25.0000, 25.0000);
INSERT INTO `salesforce` VALUES (6002, 2002, 25.0000, 25.0000, 25.0000);
INSERT INTO `salesforce` VALUES (6003, 2003, 25.0000, 25.0000, 25.0000);
INSERT INTO `salesforce` VALUES (6004, 2004, 25.0000, 25.0000, 25.0000);
INSERT INTO `salesforce` VALUES (6005, 2005, 25.0000, 25.0000, 25.0000);
INSERT INTO `salesforce` VALUES (6006, 2006, 25.0000, 25.0000, 25.0000);
INSERT INTO `salesforce` VALUES (6007, 2007, 25.0000, 25.0000, 25.0000);
INSERT INTO `salesforce` VALUES (6008, 2008, 25.0000, 25.0000, 25.0000);
INSERT INTO `salesforce` VALUES (6009, 2009, 25.0000, 25.0000, 25.0000);
INSERT INTO `salesforce` VALUES (6010, 2010, 25.0000, 25.0000, 25.0000);
INSERT INTO `salesforce` VALUES (6011, 2011, 25.0000, 25.0000, 25.0000);
INSERT INTO `salesforce` VALUES (6101, 2101, 0.0000, 0.0000, 0.0000);
INSERT INTO `salesforce` VALUES (6100, 2100, 0.0000, 0.0000, 0.0000);
INSERT INTO `salesforce` VALUES (6103, 2103, 0.0000, 0.0000, 0.0000);
INSERT INTO `salesforce` VALUES (6102, 2102, 0.0000, 0.0000, 0.0000);
INSERT INTO `salesforce` VALUES (6104, 2104, 0.0000, 0.0000, 0.0000);
INSERT INTO `salesforce` VALUES (6105, 2105, 0.0000, 0.0000, 0.0000);
INSERT INTO `salesforce` VALUES (6106, 2106, 0.0000, 0.0000, 0.0000);
INSERT INTO `salesforce` VALUES (6107, 2107, 0.0000, 0.0000, 0.0000);
INSERT INTO `salesforce` VALUES (6108, 2108, 0.0000, 0.0000, 0.0000);
INSERT INTO `salesforce` VALUES (6109, 2109, 0.0000, 0.0000, 0.0000);
INSERT INTO `salesforce` VALUES (6111, 2111, 0.0000, 0.0000, 0.0000);
INSERT INTO `salesforce` VALUES (6110, 2110, 0.0000, 0.0000, 0.0000);

-- --------------------------------------------------------

-- 
-- Table structure for table `salesforce_metadata`
-- 

CREATE TABLE `salesforce_metadata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandName` int(11) NOT NULL,
  `supermarket_sf` float(10,4) NOT NULL,
  `generalStore_sf` float(10,4) NOT NULL,
  `kiranaStore_sf` float(10,4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `salesforce_metadata`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `segment_constants`
-- 

CREATE TABLE `segment_constants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `period` int(11) DEFAULT NULL,
  `Seg_BlueBloods` float(10,4) DEFAULT '0.0000',
  `Seg_Raffles` float(10,4) DEFAULT '0.0000',
  `Seg_Wannabes` float(10,4) DEFAULT '0.0000',
  `Seg_Strugglers` float(10,4) DEFAULT '0.0000',
  `Seg_Deprived` float(10,4) DEFAULT '0.0000',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

-- 
-- Dumping data for table `segment_constants`
-- 

INSERT INTO `segment_constants` VALUES (2, 'PRINT_REACH', 0, 0.6000, 0.6000, 0.6000, 0.6000, 0.6000);
INSERT INTO `segment_constants` VALUES (3, 'TELEVISION_REACH', 0, 0.7500, 0.7500, 0.7500, 0.7500, 0.7500);
INSERT INTO `segment_constants` VALUES (4, 'RADIO_REACH', 0, 0.5000, 0.5000, 0.5000, 0.5000, 0.5000);
INSERT INTO `segment_constants` VALUES (5, 'INTERNET_REACH', 0, 0.1500, 0.1500, 0.1500, 0.1500, 0.1500);
INSERT INTO `segment_constants` VALUES (6, 'SYNERGY_PRINT_TELEVISION', 0, 0.0500, 0.0500, 0.0500, 0.0500, 0.0500);
INSERT INTO `segment_constants` VALUES (7, 'SYNERGY_PRINT_RADIO', 0, 0.1000, 0.1000, 0.1000, 0.1000, 0.1000);
INSERT INTO `segment_constants` VALUES (8, 'SYNERGY_PRINT_INTERNET', 0, 0.1500, 0.1500, 0.1500, 0.1500, 0.1500);
INSERT INTO `segment_constants` VALUES (9, 'SYNERGY_TELEVISION_RADIO', 0, 0.1000, 0.1000, 0.1000, 0.1000, 0.1000);
INSERT INTO `segment_constants` VALUES (10, 'SYNERGY_TELEVISION_INTERNET', 0, 0.0500, 0.0500, 0.0500, 0.0500, 0.0500);
INSERT INTO `segment_constants` VALUES (11, 'SYNERGY_RADIO_INTERNET', 0, 0.1000, 0.1000, 0.1000, 0.1000, 0.1000);

-- --------------------------------------------------------

-- 
-- Table structure for table `segmentavailability_genstore`
-- 

CREATE TABLE `segmentavailability_genstore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `Seg_BlueBloods_Avail` float(10,4) DEFAULT '0.0000',
  `Seg_Raffles_Avail` float(10,4) DEFAULT '0.0000',
  `Seg_Wannabes_Avail` float(10,4) DEFAULT '0.0000',
  `Seg_Strugglers_Avail` float(10,4) DEFAULT '0.0000',
  `Seg_Deprived_Avail` float(10,4) DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  KEY `segAvailGS_fk` (`brandId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `segmentavailability_genstore`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `segmentavailability_kiranastore`
-- 

CREATE TABLE `segmentavailability_kiranastore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `Seg_BlueBloods_Avail` float(10,4) DEFAULT '0.0000',
  `Seg_Raffles_Avail` float(10,4) DEFAULT '0.0000',
  `Seg_Wannabes_Avail` float(10,4) DEFAULT '0.0000',
  `Seg_Strugglers_Avail` float(10,4) DEFAULT '0.0000',
  `Seg_Deprived_Avail` float(10,4) DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  KEY `segAvailKS_fk` (`brandId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `segmentavailability_kiranastore`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `segmentavailability_supermarket`
-- 

CREATE TABLE `segmentavailability_supermarket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `Seg_BlueBloods_Avail` float(10,4) DEFAULT '0.0000',
  `Seg_Raffles_Avail` float(10,4) DEFAULT '0.0000',
  `Seg_Wannabes_Avail` float(10,4) DEFAULT '0.0000',
  `Seg_Strugglers_Avail` float(10,4) DEFAULT '0.0000',
  `Seg_Deprived_Avail` float(10,4) DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  KEY `segAvailMS_fk` (`brandId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `segmentavailability_supermarket`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `segmentmarketshare_genstore`
-- 

CREATE TABLE `segmentmarketshare_genstore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `Seg_BlueBloods_ms` float(10,4) DEFAULT '0.0000',
  `Seg_Raffles_ms` float(10,4) DEFAULT '0.0000',
  `Seg_Wannabes_ms` float(10,4) DEFAULT '0.0000',
  `Seg_Strugglers_ms` float(10,4) DEFAULT '0.0000',
  `Seg_Deprived_ms` float(10,4) DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  KEY `segMsGen_fk` (`brandId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `segmentmarketshare_genstore`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `segmentmarketshare_kiranastore`
-- 

CREATE TABLE `segmentmarketshare_kiranastore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `Seg_BlueBloods_ms` float(10,4) DEFAULT '0.0000',
  `Seg_Raffles_ms` float(10,4) DEFAULT '0.0000',
  `Seg_Wannabes_ms` float(10,4) DEFAULT '0.0000',
  `Seg_Strugglers_ms` float(10,4) DEFAULT '0.0000',
  `Seg_Deprived_ms` float(10,4) DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  KEY `segMsKir_fk` (`brandId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `segmentmarketshare_kiranastore`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `segmentmarketshare_supermarket`
-- 

CREATE TABLE `segmentmarketshare_supermarket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `Seg_BlueBloods_ms` float(10,4) DEFAULT '0.0000',
  `Seg_Raffles_ms` float(10,4) DEFAULT '0.0000',
  `Seg_Wannabes_ms` float(10,4) DEFAULT '0.0000',
  `Seg_Strugglers_ms` float(10,4) DEFAULT '0.0000',
  `Seg_Deprived_ms` float(10,4) DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  KEY `segMsSupMa_fk` (`brandId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `segmentmarketshare_supermarket`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `semantic_mds_map`
-- 

CREATE TABLE `semantic_mds_map` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `MDSScale` varchar(100) NOT NULL,
  `DesignEq` float(10,4) NOT NULL,
  `fragranceEq` float(10,4) NOT NULL,
  `persistenceEq` float(10,4) NOT NULL,
  `packagingEq` float(10,4) NOT NULL,
  `safetyEq` float(10,4) NOT NULL,
  `priceEq` float(10,4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `semantic_mds_map`
-- 

INSERT INTO `semantic_mds_map` VALUES (1, 'Economy', 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1.0000);
INSERT INTO `semantic_mds_map` VALUES (2, 'Quality', 0.0000, 0.2000, 0.5000, 0.0000, 0.3000, 0.0000);
INSERT INTO `semantic_mds_map` VALUES (3, 'Appeal', 0.3000, 0.3000, 0.0000, 0.4000, 0.0000, 0.0000);

-- --------------------------------------------------------

-- 
-- Table structure for table `semantic_segment_idealvaluemap`
-- 

CREATE TABLE `semantic_segment_idealvaluemap` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `segment` varchar(200) NOT NULL,
  `period` int(11) NOT NULL,
  `designValue` float(10,4) NOT NULL,
  `fragranceValue` float(10,4) NOT NULL,
  `persistenceValue` float(10,4) NOT NULL,
  `packagingValue` float(10,4) NOT NULL,
  `safetyValue` float(10,4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `semantic_segment_idealvaluemap`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `team_metadata`
-- 

CREATE TABLE `team_metadata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teamName` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `teamMetadat_unq` (`teamName`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `team_metadata`
-- 

INSERT INTO `team_metadata` VALUES (1, 'Alpha');
INSERT INTO `team_metadata` VALUES (2, 'Bravo');

-- --------------------------------------------------------

-- 
-- Table structure for table `team_result`
-- 

CREATE TABLE `team_result` (
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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

-- 
-- Dumping data for table `team_result`
-- 

INSERT INTO `team_result` VALUES (1, 0, 'Ashish', 1, 120673, 38450016, 130000, 24989877, 193012, 0, 13267127, 2500000, 250000, 3000000, 7517127, 295000, 2083053, 5139074, 9327);
INSERT INTO `team_result` VALUES (2, 0, 'Geetu', 2, 120673, 38450016, 130000, 24989877, 193012, 0, 13267127, 2500000, 250000, 3000000, 7517127, 295000, 2083053, 5139074, 9327);
INSERT INTO `team_result` VALUES (3, 0, 'Nandu', 3, 120673, 38450016, 130000, 24989877, 193012, 0, 13267127, 2500000, 250000, 3000000, 7517127, 295000, 2083053, 5139074, 9327);
INSERT INTO `team_result` VALUES (4, 0, 'Shweta', 4, 120673, 38450016, 130000, 24989877, 193012, 0, 13267127, 2500000, 250000, 3000000, 7517127, 295000, 2083053, 5139074, 9327);
INSERT INTO `team_result` VALUES (5, 0, 'Tanmaya', 5, 120673, 38450016, 130000, 24989877, 193012, 0, 13267127, 2500000, 250000, 3000000, 7517127, 295000, 2083053, 5139074, 9327);
INSERT INTO `team_result` VALUES (6, 0, 'Vishnu', 6, 120673, 38450016, 130000, 24989877, 193012, 0, 13267127, 2500000, 250000, 3000000, 7517127, 295000, 2083053, 5139074, 9327);

-- --------------------------------------------------------

-- 
-- Table structure for table `teams`
-- 

CREATE TABLE `teams` (
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

-- 
-- Dumping data for table `teams`
-- 

INSERT INTO `teams` VALUES (1, 'Ashish', 'Ashish', 'iwish', 1, 5523039, 'N');
INSERT INTO `teams` VALUES (2, 'Geetu', 'Geetu', 'noentry', 1, 5523039, 'N');
INSERT INTO `teams` VALUES (3, 'Nandu', 'Nandu', 'coffee', 1, 5523039, 'N');
INSERT INTO `teams` VALUES (4, 'Shweta', 'Shweta', 'happy', 1, 5523039, 'N');
INSERT INTO `teams` VALUES (5, 'Tanmaya', 'Tanmaya', 'despo', 1, 5523039, 'N');
INSERT INTO `teams` VALUES (6, 'Vishnu', 'Vishnu', 'duffer', 1, 5523039, 'N');

-- --------------------------------------------------------

-- 
-- Table structure for table `user_table`
-- 

CREATE TABLE `user_table` (
  `USERID` int(11) NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(255) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL,
  `USERTYPEID` int(11) NOT NULL,
  PRIMARY KEY (`USERID`),
  UNIQUE KEY `USERNAME_UNQ` (`USERNAME`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `user_table`
-- 

INSERT INTO `user_table` VALUES (1, 'admin', 'admin', 1);

-- 
-- Constraints for dumped tables
-- 

-- 
-- Constraints for table `brands`
-- 
ALTER TABLE `brands`
  ADD CONSTRAINT `RESEARCHPROJ_FK` FOREIGN KEY (`RESEARCHPROJECTID`) REFERENCES `researchproject` (`ID`);

-- 
-- Constraints for table `brands_metadata`
-- 
ALTER TABLE `brands_metadata`
  ADD CONSTRAINT `researchProjNameMD_fk` FOREIGN KEY (`researchProjectName`) REFERENCES `researchproject_metadata` (`projectName`);

-- 
-- Constraints for table `researchproject`
-- 
ALTER TABLE `researchproject`
  ADD CONSTRAINT `TEAMID_FK` FOREIGN KEY (`TEAMID`) REFERENCES `teams` (`ID`);

-- 
-- Constraints for table `researchproject_metadata`
-- 
ALTER TABLE `researchproject_metadata`
  ADD CONSTRAINT `teamName_fk` FOREIGN KEY (`teamName`) REFERENCES `team_metadata` (`teamName`);
