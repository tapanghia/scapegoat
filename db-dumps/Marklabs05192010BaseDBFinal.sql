-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 19, 2010 at 08:10 PM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `marklabs`
--

-- --------------------------------------------------------

--
-- Table structure for table `brandadvertisement`
--

CREATE TABLE IF NOT EXISTS `brandadvertisement` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `brandadvertisement`
--

INSERT INTO `brandadvertisement` (`id`, `brandId`, `adv_media_budget`, `adv_research_budget`, `Seg_Blueblood_pr`, `Seg_raffles_pr`, `Seg_wannabees_pr`, `Seg_strugglers_pr`, `Seg_deprived_pr`, `Med_print_pr`, `Med_television_pr`, `med_radio_pr`, `med_internet_pr`) VALUES
(8, 21, 2000, 150, 30, 40, 10, 10, 10, 30, 40, 10, 20),
(7, 20, 1200, 100, 20, 20, 20, 20, 20, 20, 30, 20, 30),
(6, 19, 2000, 150, 30, 40, 10, 10, 10, 30, 40, 10, 20),
(5, 18, 1200, 100, 20, 20, 20, 20, 20, 20, 30, 20, 30);

-- --------------------------------------------------------

--
-- Table structure for table `brandadv_metadata`
--

CREATE TABLE IF NOT EXISTS `brandadv_metadata` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1115 ;

--
-- Dumping data for table `brandadv_metadata`
--

INSERT INTO `brandadv_metadata` (`id`, `brandName`, `adv_media_budget`, `adv_research_budget`, `Seg_Blueblood_pr`, `Seg_raffles_pr`, `Seg_wannabees_pr`, `Seg_strugglers_pr`, `Seg_deprived_pr`, `Med_print_pr`, `Med_television_pr`, `med_radio_pr`, `med_internet_pr`) VALUES
(1111, 'AYAN', 1200, 100, 20, 20, 20, 20, 20, 20, 30, 20, 30),
(1112, 'BYTE', 1200, 100, 20, 20, 20, 20, 20, 20, 30, 20, 30),
(1113, 'ARIM', 2000, 150, 30, 40, 10, 10, 10, 30, 40, 10, 20),
(1114, 'BROM', 2000, 150, 30, 40, 10, 10, 10, 30, 40, 10, 20);

-- --------------------------------------------------------

--
-- Table structure for table `brandawareness_metadata`
--

CREATE TABLE IF NOT EXISTS `brandawareness_metadata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandName` varchar(500) NOT NULL,
  `total_ba` float(10,4) DEFAULT '0.0000',
  `bluebloods_ba` float(10,4) DEFAULT '0.0000',
  `raffles_ba` float(10,4) DEFAULT '0.0000',
  `wannabes_ba` float(10,4) DEFAULT '0.0000',
  `strugglers_ba` float(10,4) DEFAULT '0.0000',
  `deprived_ba` float(10,4) DEFAULT '0.0000',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `brandawareness_metadata`
--

INSERT INTO `brandawareness_metadata` (`id`, `brandName`, `total_ba`, `bluebloods_ba`, `raffles_ba`, `wannabes_ba`, `strugglers_ba`, `deprived_ba`) VALUES
(1, 'AYAN', 0.4520, 0.4520, 0.4520, 0.4520, 0.4520, 0.4520),
(2, 'BYTE', 0.4520, 0.4520, 0.4520, 0.4520, 0.4520, 0.4520),
(3, 'ARIM', 0.4790, 0.5130, 0.6024, 0.4270, 0.4270, 0.4270),
(4, 'BROM', 0.4790, 0.5130, 0.6024, 0.4270, 0.4270, 0.4270);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE IF NOT EXISTS `brands` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=58 ;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`ID`, `BRANDNAME`, `DELETEFLAG`, `RESEARCHPROJECTID`, `status`, `period`) VALUES
(18, 'AYAN', 'N', 53, 'Maintained', 0),
(19, 'ARIM', 'N', 54, 'Maintained', 0),
(20, 'BYTE', 'N', 55, 'Maintained', 0),
(21, 'BROM', 'N', 56, 'Maintained', 0);

-- --------------------------------------------------------

--
-- Table structure for table `brandspecs`
--

CREATE TABLE IF NOT EXISTS `brandspecs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `productionLevel` int(11) NOT NULL,
  `inventorySold` int(11) NOT NULL DEFAULT '0',
  `currentInventory` int(11) NOT NULL DEFAULT '0',
  `retailPrice` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `brandAdv_SpecsFK` (`brandId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2012 ;

--
-- Dumping data for table `brandspecs`
--

INSERT INTO `brandspecs` (`id`, `brandId`, `productionLevel`, `inventorySold`, `currentInventory`, `retailPrice`) VALUES
(2011, 21, 50000, 0, 0, 400),
(2010, 20, 80000, 0, 0, 250),
(2009, 19, 50000, 0, 0, 400),
(2008, 18, 80000, 0, 0, 250);

-- --------------------------------------------------------

--
-- Table structure for table `brandspecsmetadata`
--

CREATE TABLE IF NOT EXISTS `brandspecsmetadata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandName` varchar(100) NOT NULL,
  `productionLevel` int(11) NOT NULL,
  `inventorySold` int(11) NOT NULL DEFAULT '0',
  `currentInventory` int(11) NOT NULL DEFAULT '0',
  `retailPrice` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2004 ;

--
-- Dumping data for table `brandspecsmetadata`
--

INSERT INTO `brandspecsmetadata` (`id`, `brandName`, `productionLevel`, `inventorySold`, `currentInventory`, `retailPrice`) VALUES
(2000, 'AYAN', 80000, 0, 0, 250),
(2001, 'ARIM', 50000, 0, 0, 400),
(2002, 'BYTE', 80000, 0, 0, 250),
(2003, 'BROM', 50000, 0, 0, 400);

-- --------------------------------------------------------

--
-- Table structure for table `brands_metadata`
--

CREATE TABLE IF NOT EXISTS `brands_metadata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandName` varchar(255) NOT NULL,
  `researchProjectName` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `brandNameMD_unq` (`brandName`),
  KEY `researchProjNameMD_fk` (`researchProjectName`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `brands_metadata`
--

INSERT INTO `brands_metadata` (`id`, `brandName`, `researchProjectName`) VALUES
(1, 'AYAN', 'ARYAN'),
(2, 'ARIM', 'ARMAN'),
(3, 'BYTE', 'BRYAN'),
(4, 'BROM', 'BRMAN');

-- --------------------------------------------------------

--
-- Table structure for table `fmdsvalues`
--

CREATE TABLE IF NOT EXISTS `fmdsvalues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `economicValue` float(10,4) NOT NULL,
  `qualityValue` float(10,4) NOT NULL,
  `appealValue` float(10,4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FMDSValues_fk` (`brandId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `fmdsvalues`
--


-- --------------------------------------------------------

--
-- Table structure for table `fsemanticvalues`
--

CREATE TABLE IF NOT EXISTS `fsemanticvalues` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `fsemanticvalues`
--


-- --------------------------------------------------------

--
-- Table structure for table `global_constants`
--

CREATE TABLE IF NOT EXISTS `global_constants` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(1000) DEFAULT NULL,
  `VALUE` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `global_constants`
--

INSERT INTO `global_constants` (`ID`, `NAME`, `VALUE`) VALUES
(1, 'CURRENT_PERIOD', '0'),
(2, 'MINIMUM_PERIOD', '0'),
(3, 'MAXIMUM_PERIOD', '12'),
(4, 'INFLATION', '2');

-- --------------------------------------------------------

--
-- Table structure for table `iadv_brandawareness`
--

CREATE TABLE IF NOT EXISTS `iadv_brandawareness` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `iadv_brandawareness`
--


-- --------------------------------------------------------

--
-- Table structure for table `iadv_effectievsegexpense`
--

CREATE TABLE IF NOT EXISTS `iadv_effectievsegexpense` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `iadv_effectievsegexpense`
--


-- --------------------------------------------------------

--
-- Table structure for table `iadv_segmentexpense`
--

CREATE TABLE IF NOT EXISTS `iadv_segmentexpense` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `iadv_segmentexpense`
--


-- --------------------------------------------------------

--
-- Table structure for table `imdsvalues`
--

CREATE TABLE IF NOT EXISTS `imdsvalues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `economicValue` float(10,4) NOT NULL,
  `qualityValue` float(10,4) NOT NULL,
  `appealValue` float(10,4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IMDSValues_fk` (`brandId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `imdsvalues`
--


-- --------------------------------------------------------

--
-- Table structure for table `isemanticvalues`
--

CREATE TABLE IF NOT EXISTS `isemanticvalues` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `isemanticvalues`
--


-- --------------------------------------------------------

--
-- Table structure for table `perceptualobj`
--

CREATE TABLE IF NOT EXISTS `perceptualobj` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `scale` varchar(100) NOT NULL,
  `Dimension` varchar(100) NOT NULL,
  `objective` float(10,4) NOT NULL,
  `brandId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `perceptualObj_fk` (`brandId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `perceptualobj`
--


-- --------------------------------------------------------

--
-- Table structure for table `period_constants`
--

CREATE TABLE IF NOT EXISTS `period_constants` (
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
-- Table structure for table `researchproject`
--

CREATE TABLE IF NOT EXISTS `researchproject` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=93 ;

--
-- Dumping data for table `researchproject`
--

INSERT INTO `researchproject` (`ID`, `PROJECTNAME`, `DESIGN`, `FRAGRANCE`, `PERSISTENCE`, `PACKAGING`, `SAFETY`, `MINIMUMBASECOST`, `REQUESTEDBASECOST`, `ALLOCATEDBUDGET`, `CURRENTPERIOD`, `ISAVAILABLE`, `BUDGETDEFICIT`, `PROJECTFINISHPERIOD`, `TEAMID`, `RequiredBudgetAtMinBC`, `RequiredBudgetAtReqBC`) VALUES
(53, 'ARYAN', 25, 30, 38, 15, 15, 60, 140, 597, 0, 'Y', 0, 0, 11, 1080, 597),
(54, 'ARMAN', 55, 60, 72, 40, 40, 172, 250, 1035, 0, 'Y', 0, 0, 11, 1854, 1035),
(55, 'BRYAN', 25, 30, 38, 15, 15, 60, 140, 597, 0, 'Y', 0, 0, 12, 1080, 597),
(56, 'BRMAN', 55, 60, 72, 40, 40, 172, 250, 1035, 0, 'Y', 0, 0, 12, 1854, 1035);

-- --------------------------------------------------------

--
-- Table structure for table `researchproject_metadata`
--

CREATE TABLE IF NOT EXISTS `researchproject_metadata` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `researchproject_metadata`
--

INSERT INTO `researchproject_metadata` (`id`, `projectName`, `design`, `fragrance`, `persistence`, `packaging`, `safety`, `teamName`, `scenario`, `requestedBaseCost`) VALUES
(1, 'ARYAN', 25, 30, 38, 15, 15, 'Alpha', 1, 140),
(2, 'ARMAN', 55, 60, 72, 40, 40, 'Alpha', 1, 250),
(3, 'BRYAN', 25, 30, 38, 15, 15, 'Bravo', 1, 140),
(4, 'BRMAN', 55, 60, 72, 40, 40, 'Bravo', 1, 250);

-- --------------------------------------------------------

--
-- Table structure for table `segment_constants`
--

CREATE TABLE IF NOT EXISTS `segment_constants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `period` int(11) DEFAULT NULL,
  `Seg_BlueBloods` float(10,4) DEFAULT '0.0000',
  `Seg_Raffles` float(10,4) DEFAULT '0.0000',
  `Seg_Wannabes` float(10,4) DEFAULT '0.0000',
  `Seg_Strugglers` float(10,4) DEFAULT '0.0000',
  `Seg_Deprived` float(10,4) DEFAULT '0.0000',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `segment_constants`
--

INSERT INTO `segment_constants` (`id`, `name`, `period`, `Seg_BlueBloods`, `Seg_Raffles`, `Seg_Wannabes`, `Seg_Strugglers`, `Seg_Deprived`) VALUES
(2, 'PRINT_REACH', 0, 0.6000, 0.6000, 0.6000, 0.6000, 0.6000),
(3, 'TELEVISION_REACH', 0, 0.7500, 0.7500, 0.7500, 0.7500, 0.7500),
(4, 'RADIO_REACH', 0, 0.5000, 0.5000, 0.5000, 0.5000, 0.5000),
(5, 'INTERNET_REACH', 0, 0.1500, 0.1500, 0.1500, 0.1500, 0.1500),
(6, 'SYNERGY_PRINT_TELEVISION', 0, 0.0500, 0.0500, 0.0500, 0.0500, 0.0500),
(7, 'SYNERGY_PRINT_RADIO', 0, 0.1000, 0.1000, 0.1000, 0.1000, 0.1000),
(8, 'SYNERGY_PRINT_INTERNET', 0, 0.1500, 0.1500, 0.1500, 0.1500, 0.1500),
(9, 'SYNERGY_TELEVISION_RADIO', 0, 0.1000, 0.1000, 0.1000, 0.1000, 0.1000),
(10, 'SYNERGY_TELEVISION_INTERNET', 0, 0.0500, 0.0500, 0.0500, 0.0500, 0.0500),
(11, 'SYNERGY_RADIO_INTERNET', 0, 0.1000, 0.1000, 0.1000, 0.1000, 0.1000);

-- --------------------------------------------------------

--
-- Table structure for table `semantic_mds_map`
--

CREATE TABLE IF NOT EXISTS `semantic_mds_map` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `MDSScale` varchar(100) NOT NULL,
  `DesignEq` float(10,4) NOT NULL,
  `fragranceEq` float(10,4) NOT NULL,
  `persistenceEq` float(10,4) NOT NULL,
  `packagingEq` float(10,4) NOT NULL,
  `safetyEq` float(10,4) NOT NULL,
  `priceEq` float(10,4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `semantic_mds_map`
--

INSERT INTO `semantic_mds_map` (`id`, `MDSScale`, `DesignEq`, `fragranceEq`, `persistenceEq`, `packagingEq`, `safetyEq`, `priceEq`) VALUES
(1, 'Economy', 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1.0000),
(2, 'Quality', 0.0000, 0.2000, 0.5000, 0.0000, 0.3000, 0.0000),
(3, 'Appeal', 0.3000, 0.3000, 0.0000, 0.4000, 0.0000, 0.0000);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE IF NOT EXISTS `teams` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TEAMNAME` varchar(255) NOT NULL,
  `TEAMUSERNAME` varchar(255) NOT NULL,
  `TEAMPASSWORD` varchar(255) NOT NULL,
  `currentTeamPeriod` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `TEAMUSERNAME_UNQ` (`TEAMUSERNAME`),
  UNIQUE KEY `TEAMNAME_UNQ` (`TEAMNAME`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`ID`, `TEAMNAME`, `TEAMUSERNAME`, `TEAMPASSWORD`, `currentTeamPeriod`) VALUES
(11, 'Alpha', 'Alpha', 'Alpha', 0),
(12, 'Bravo', 'Bravo', 'Bravo', 0);

-- --------------------------------------------------------

--
-- Table structure for table `team_metadata`
--

CREATE TABLE IF NOT EXISTS `team_metadata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teamName` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `teamMetadat_unq` (`teamName`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `team_metadata`
--

INSERT INTO `team_metadata` (`id`, `teamName`) VALUES
(1, 'Alpha'),
(2, 'Bravo');

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE IF NOT EXISTS `user_table` (
  `USERID` int(11) NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(255) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL,
  `USERTYPEID` int(11) NOT NULL,
  PRIMARY KEY (`USERID`),
  UNIQUE KEY `USERNAME_UNQ` (`USERNAME`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`USERID`, `USERNAME`, `PASSWORD`, `USERTYPEID`) VALUES
(1, 'admin', 'admin', 1);

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
