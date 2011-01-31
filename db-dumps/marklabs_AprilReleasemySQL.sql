   CREATE TABLE TEAMS
   (	ID int,
	TEAMNAME VARCHAR(255) NOT NULL,
	TEAMUSERNAME VARCHAR(255) NOT NULL,
	TEAMPASSWORD VARCHAR(255) NOT NULL,
	 CONSTRAINT TEAMS_PK PRIMARY KEY (ID),
	 CONSTRAINT TEAMUSERNAME_UNQ UNIQUE (TEAMUSERNAME),
	 CONSTRAINT TEAMNAME_UNQ UNIQUE (TEAMNAME)
   ) ;
   
   CREATE TABLE RESEARCHPROJECT
   (	ID int,
	PROJECTNAME VARCHAR(255) NOT NULL,
	DESIGN int NOT NULL,
	FRAGRANCE int NOT NULL,
	PERSISTENCE int NOT NULL,
	PACKAGING int NOT NULL,
	SAFETY int NOT NULL,
	MINIMUMBASECOST int NOT NULL,
	REQUESTEDBASECOST int NOT NULL,
	REQUIREDBUDGET int NOT NULL,
	ALLOCATEDBUDGET int NOT NULL,
	CURRENTPERIOD int NOT NULL,
	ISAVAILABLE CHAR(1) NOT NULL,
	BUDGETDEFICIT int NOT NULL,
	PROJECTFINISHPERIOD int,
	TEAMID int NOT NULL,
	 CONSTRAINT RESEARCHPROJ_PK PRIMARY KEY (ID),
	 CONSTRAINT PROJECTNAME_UNQ UNIQUE (PROJECTNAME),
	 CONSTRAINT TEAMID_FK FOREIGN KEY (TEAMID)
	  REFERENCES TEAMS (ID)
   ) ;

    CREATE TABLE BRANDS
   (	ID int,
	BRANDNAME VARCHAR(255) NOT NULL,
	DELETEFLAG CHAR(1) NOT NULL,
	RESEARCHPROJECTID int NOT NULL,
	 CONSTRAINT BRANDS_PK PRIMARY KEY (ID),
	 CONSTRAINT BRANDNAME_UNQ UNIQUE (BRANDNAME),
	 CONSTRAINT RESEARCHPROJ_FK FOREIGN KEY (RESEARCHPROJECTID)
	  REFERENCES RESEARCHPROJECT (ID)
   ) ;

   
	create table team_metadata (id int,
	teamName varchar(255) not null,
	constraint id_pk primary key(id),
	constraint teamMetadat_unq unique(teamName));
	
	
	create table researchProject_metadata (id int,
	projectName varchar(255) not null,
	design int not null,
	fragrance int not null, persistence int not null,
	packaging int not null, safety int not null,
	teamName varchar(255) not null, scenario int,
	constraint researchProjMD_pk primary key(id),
	constraint projectNameMD_unq unique(projectName),
	constraint teamName_fk foreign key(teamName) references team_metadata(teamName)
	);
	
	
	create table brands_metadata (id int,
	brandName varchar(255) not null,
	researchProjectName varchar(255) not null,
	constraint brandsMD_pk primary key(id),
	constraint brandNameMD_unq unique(brandName),
	constraint researchProjNameMD_fk foreign key(researchProjectName) references researchProject_metadata(projectName));

	insert into user_table values (1,'admin', 'admin', 1);
	insert into team_metadata values (1, 'Alpha');
	insert into team_metadata values (2, 'Bravo');
	insert into team_metadata values (3, 'Charlie');
	insert into researchProject_metadata values (1, 'ARYAN', '25', '30', '38', '15', '15', 'Alpha', '1' );
	insert into researchProject_metadata values (2, 'ARMAN', '55', '60', '72', '40', '40', 'Alpha', '1' );
	insert into researchProject_metadata values (3, 'BRYAN', '25', '30', '38', '15', '15', 'Bravo', '1' );
	insert into researchProject_metadata values (4, 'BRMAN', '55', '60', '72', '40', '40', 'Bravo', '1' );
	insert into brands_metadata values (1, 'AYAN', 'ARYAN');
	insert into brands_metadata values (2, 'ARIM', 'ARMAN');
	insert into brands_metadata values (3, 'BYTE', 'BRYAN');
	
	alter table researchProject add requestedBaseCost int not null;
	alter table researchProject add RequiredBudgetAtMinBC int not null;
	alter table researchProject add RequiredBudgetAtReqBC int not null;
	alter table researchProject drop column requiredBudget;
	alter table teams add currentTeamPeriod int not null;


	create table brandAdvertisement (
	id int not null auto increment,
	brandId int,
	adv_media_budget int(11) NOT NULL,
	adv_research_budget int(11) NOT NULL,
	Seg_Blueblood_pr int(11) NOT NULL,
	Seg_raffles_pr int(11) NOT NULL,
	Seg_wannabees_pr int(11) NOT NULL,
	Seg_strugglers_pr int(11) NOT NULL,
	Seg_deprived_pr int(11) NOT NULL,
	Med_print_pr int(11) NOT NULL,
	Med_television_pr int(11) NOT NULL,
	med_radio_pr int(11) NOT NULL,
	med_internet_pr int(11) NOT NULL,
	constraint brand_advert_pk primary key (id),
	constraint brandId_fk foreign key references brands(id)
	);


	create table brandSpecs (
	id int not null auto_increment,
	brandId int not null,
	productionLevel int not null,
	inventorySold int not null default 0,
	currentInventory int not null default 0,
	retailPrice int not null,
	constraint brandSpecs_pk primary key(id),
	constraint brandAdv_SpecsFK foreign key (brandId) references brandAdvertisement(id));

	create table brandSpecsMetadata (
	id int not null auto_increment,
	brandName varchar(100) not null,
	productionLevel int not null,
	inventorySold int not null default 0,
	currentInventory int not null default 0,
	retailPrice int not null,
	constraint brandSpecs_pk primary key(id));


	insert into brandspecsMETADATA  values (2000, 'AYAN', 80000, 0, 0, 250);
	insert into brandspecsMETADATA  values (2001, 'ARIM', 50000, 0, 0, 400);
	insert into brandspecsMETADATA  values (2002, 'BYTE', 80000, 0, 0, 250);
	insert into brandspecsMETADATA  values (2003, 'BROM', 50000, 0, 0, 400);

	CREATE TABLE GLOBAL_CONSTANTS
	(	ID int auto_increment, 
		NAME VARCHAR(1000), 
		VALUE VARCHAR(1000),
        constraint global_const_pk primary key(id) 
	);


     CREATE TABLE PERIOD_CONSTANTS
	(	ID int auto_increment,
        PERIOD INT,  
		NAME VARCHAR(1000), 
		VALUE VARCHAR(1000),
        constraint _const_pk primary key(id) 
	);

   insert into global_constants (NAME, VALUE) values ('CURRENT_PERIOD', '0');
   insert into global_constants (NAME, VALUE) values ('MINIMUM_PERIOD', '0');
   insert into global_constants (NAME, VALUE) values ('MAXIMUM_PERIOD', '12');
   insert into global_constants (NAME, VALUE) values ('INFLATION', '2');
   
   drop table period_constants;
   
   /*
   create table period_constants (
	id int auto_increment,
	constant_Name varchar(1000),
	period0 varchar(1000),
	period1 varchar(1000),
	period2 varchar(1000),
	period3 varchar(1000),
	period4 varchar(1000),
	period5 varchar(1000),
	period6 varchar(1000),
	period7 varchar(1000),
	period8 varchar(1000),
	period9 varchar(1000),
	period10 varchar(1000),
	period11 varchar(1000),
	period12 varchar(1000),
	constraint periodConst_pk primary key(id)
	);
	*/
	
	
	create table IAdv_SegmentExpense (
	id int auto_increment,
	brandId int not null,
	totalAdvExpense int not null,
	BlueBloods_SegExp int not null,
	Raffles_SegExp int not null,
	Wannabes_SegExp int not null,
	Strugglers_SegExp int not null,
	Deprived_SegExp int not null,
	constraint SegExp_pk primary key (id),
	constraint SegExp_fk foreign key (brandId) references brands(Id)
	);

	create table IAdv_EffectievSegExpense (
	id int auto_increment,
	brandId int not null,
	totalEffAdvExpense int not null,
	BlueBloods_EffSegExp int not null,
	Raffles_EffSegExp int not null,
	Wannabes_EffSegExp int not null,
	Strugglers_EffSegExp int not null,
	Deprived_EffSegExp int not null,
	constraint EffSegExp_pk primary key (id),
	constraint EffSegExp_fk foreign key (brandId) references brands(Id)
	);
	
	
	create table segment_constants (
	id int auto_increment,
	name varchar(100),
	period int,
	Seg_BlueBloods float(10,4) default 0,
	Seg_Raffles float(10,4) default 0,
	Seg_Wannabes float(10,4) default 0,
	Seg_Strugglers float(10,4) default 0,
	Seg_Deprived float(10,4) default 0,
	constraint seg_const_pk primary key(id)
	);
	
	
	insert into segment_constants (`name`, `period`, `Seg_BlueBloods`, `Seg_Raffles`, `Seg_Wannabes`, `Seg_Strugglers`, `Seg_Deprived`) values ('PRINT_REACH', 0, 1.23, 1.24, 1.45, 3.56, 6.45);


	create table iadv_brandAwareness (
	id int auto_increment,
	brandId int not null,
        total_ba float(10, 4) default 0,
	bluebloods_ba float(10, 4) default 0,
	raffles_ba float(10, 4) default 0,
	wannabes_ba float(10, 4) default 0,
	strugglers_ba float(10, 4) default 0,
	deprived_ba float(10, 4) default 0,
	constraint ba_pk primary key (id),
	constraint ba_fk foreign key (brandId) references brands(Id)
	);

	create table brandAwareness_metadata (
	id int auto_increment,
	brandName varchar(500) not null,
        total_ba float(10, 4) default 0,
	bluebloods_ba float(10, 4) default 0,
	raffles_ba float(10, 4) default 0,
	wannabes_ba float(10, 4) default 0,
	strugglers_ba float(10, 4) default 0,
	deprived_ba float(10, 4) default 0,
	constraint ba_pk primary key (id)
	);


	Alter table brands add period int not null;


	create table perceptualObj (
	id int auto_increment,
	scale varchar(100) not null,
	Dimension varchar(100) not null,
	objecive float(10, 4) not null,
	brandId int not null,
	constraint perceptualObj_pk primary key(id),
	constraint perceptualObj_fk foreign key(brandId) references Brands(id)
	);

	create table ISemanticValues (
	id int auto_increment,
	brandId int not null,
	designValue float(10, 4) not null,
	fragranceValue float(10, 4) not null,
	persistenceValue float(10, 4) not null,
	packagingValue float(10, 4) not null,
	safetyValue float(10, 4) not null,
    price float(10, 4) not null, 
	constraint ISemanticValues_pk primary key(id),
	constraint ISemanticValues_fk foreign key(brandId) references Brands(id)
	);


	create table FSemanticValues (
	id int auto_increment,
	brandId int not null,
	designValue float(10, 4) not null,
	fragranceValue float(10, 4) not null,
	persistenceValue float(10, 4) not null,
	packagingValue float(10, 4) not null,
	safetyValue float(10, 4) not null,
    price float(10, 4) not null, 
	constraint FSemanticValues_pk primary key(id),
	constraint FSemanticValues_fk foreign key(brandId) references Brands(id)
	);
	
	create table IMDSValues (
	id int auto_increment,
	brandId int not null,
	economicValue float(10, 4) not null,
	qualityValue float(10, 4) not null,
	appealValue float(10, 4) not null,
	price float(10, 4) not null, 
	constraint IMDSValues_pk primary key(id),
	constraint IMDSValues_fk foreign key(brandId) references Brands(id)
	);
	
	
	create table FMDSValues (
	id int auto_increment,
	brandId int not null,
	economicValue float(10, 4) not null,
	qualityValue float(10, 4) not null,
	appealValue float(10, 4) not null,
	price float(10, 4) not null, 
	constraint FMDSValues_pk primary key(id),
	constraint FMDSValues_fk foreign key(brandId) references Brands(id)
	);
	
	create table Semantic_MDS_Map(
	id int auto_increment,
	MDSScale varchar(100) not null,
	DesignEq float(10, 4) not null,
	fragranceEq float(10, 4) not null,
	persistenceEq float(10, 4) not null,
	packagingEq float(10, 4) not null,
	safetyEq float(10, 4) not null,
	priceEq float(10, 4) not null,
	constraint Semantic_MDS_Map_pk primary key (id)
	);
		
	insert into brandawareness_metadata (`brandName`, `total_ba`, `bluebloods_ba`, `raffles_ba`, `wannabes_ba`, `strugglers_ba`, `deprived_ba`) values ('AYAN', 0.452, 0.452, 0.452, 0.452, 0.452, 0.452);
	
	insert into brandawareness_metadata (`brandName`, `total_ba`, `bluebloods_ba`, `raffles_ba`, `wannabes_ba`, `strugglers_ba`, `deprived_ba`) values ('BYTE', 0.452, 0.452, 0.452, 0.452, 0.452, 0.452);
	
	insert into brandawareness_metadata (`brandName`, `total_ba`, `bluebloods_ba`, `raffles_ba`, `wannabes_ba`, `strugglers_ba`, `deprived_ba`) values ('ARIM', 0.479, 0.513, 0.6024, 0.427, 0.427, 0.427);
	
	insert into brandawareness_metadata (`brandName`, `total_ba`, `bluebloods_ba`, `raffles_ba`, `wannabes_ba`, `strugglers_ba`, `deprived_ba`) values ('BROM', 0.479, 0.513, 0.6024, 0.427, 0.427, 0.427);
	
	
	insert into semantic_mds_map (`MDSScale`, `DesignEq`, `fragranceEq`, `persistenceEq`, `packagingEq`, `safetyEq`, `priceEq`) values ('Economy', 0, 0, 0, 0, 0, 1);


insert into semantic_mds_map (`MDSScale`, `DesignEq`, `fragranceEq`, `persistenceEq`, `packagingEq`, `safetyEq`, `priceEq`) values ('Quality', 0, 0.2, 0.5, 0, 0.3, 0);


insert into semantic_mds_map (`MDSScale`, `DesignEq`, `fragranceEq`, `persistenceEq`, `packagingEq`, `safetyEq`, `priceEq`) values ('Appeal', 0.3, 0.3, 0, 0.4, 0, 0);

create table Semantic_Segment_IdealValueMap(
id int auto_increment,
segment varchar(200) not null,
period int not null,
designValue float(10, 4) not null,
fragranceValue float(10, 4) not null,
persistenceValue float(10, 4) not null,
packagingValue float(10, 4) not null,
safetyValue float(10, 4) not null,
constraint ss_idealVMap_pk primary key(id)
);

create table MDS_Segment_IdealValueMap(
id int auto_increment,
segment varchar(200) not null,
period int not null,
economyValue float(10, 4) not null,
qualityValue float(10, 4) not null,
appealValue float(10, 4) not null,
constraint ms_idealVMap_pk primary key(id)
);


create table MDS_Segment_relativeImp(
id int auto_increment,
segment varchar(200) not null,
period int not null,
economyValue float(10, 4) not null,
qualityValue float(10, 4) not null,
appealValue float(10, 4) not null,
constraint ms_relativeImp_pk primary key(id)
);


create table purchaseIntention_Brand (
id int auto_increment,
brandId int not null,
blueBloods_PI float(10, 4) not null,
raffles_PI float(10, 4) not null,
wannabes_PI float(10, 4) not null,
strugglers_PI float(10, 4) not null,
deprived_PI float(10, 4) not null,
constraint pi_pk primary key(id),
constraint pi_fk foreign key(brandId) references Brands(id)
);

insert into global_constants (`NAME`, `VALUE`) values ('BLUE_BLOODS', 'BlueBloods');
insert into global_constants (`NAME`, `VALUE`) values ('RAFFLES', 'Raffles');
insert into global_constants (`NAME`, `VALUE`) values ('WANNABES', 'Wannabes');
insert into global_constants (`NAME`, `VALUE`) values ('STRUGGLERS', 'Strugglers');
insert into global_constants (`NAME`, `VALUE`) values ('DEPRIVED', 'Deprived');

create table DistributionCoverageConstants (
id int(11) not null auto_increment,
constName varchar(1000) not null,
period int not null,
supermarket float(10, 4) not null,
generalStore float(10, 4) not null,
kiranaStore float(10, 4) not null,
constraint distributionCovConst_pk primary key(id)
);

create table Seg_BuyingBehaviourConstants (
	id int auto_increment,
	constName varchar(100),
	period int,
	Seg_BlueBloods float(10,4) default 0,
	Seg_Raffles float(10,4) default 0,
	Seg_Wannabes float(10,4) default 0,
	Seg_Strugglers float(10,4) default 0,
	Seg_Deprived float(10,4) default 0,
	constraint segBuyingBeh_const_pk primary key(id)
	);
	
create table salesforce (
id int not null auto_increment,
brandId int not null,
supermarket_sf float(10, 4) not null,
generalStore_sf float(10, 4) not null,
kiranaStore_sf float(10, 4) not null,
constraint salesForce_pk primary key (id),
constraint salesForcebrandId_fk foreign key(brandId) references brands(id)
);


create table marginOffered (
id int not null auto_increment,
brandId int not null,
supermarket_mo float(10, 4) not null,
generalStore_mo float(10, 4) not null,
kiranaStore_mo float(10, 4) not null,
constraint marginOff_pk primary key (id),
constraint marginOffbrandId_fk foreign key(brandId) references brands(id)
);

create table marketShare (
id int not null auto_increment,
brandId int not null,
supermarket_ms float(10, 4) not null,
generalStore_ms float(10, 4) not null,
kiranaStore_ms float(10, 4) not null,
constraint marketShare_pk primary key (id),
constraint marketSharebrandId_fk foreign key(brandId) references brands(id)
);

create table marketShare_metadata (
id int not null auto_increment,
brandName int not null,
supermarket_ms float(10, 4) not null,
generalStore_ms float(10, 4) not null,
kiranaStore_ms float(10, 4) not null,
constraint marketShareMetadata_pk primary key (id)
);

create table distributionCoverage (
id int not null auto_increment,
brandId int not null,
supermarket_dc float(10, 4) not null,
generalStore_dc float(10, 4) not null,
kiranaStore_dc float(10, 4) not null,
constraint distributionC_pk primary key (id),
constraint distributionCbrandId_fk foreign key(brandId) references brands(id)
);

create table salesForce_metadata (
id int not null auto_increment,
brandName int not null,
supermarket_sf float(10, 4) not null,
generalStore_sf float(10, 4) not null,
kiranaStore_sf float(10, 4) not null,
constraint salesForceMetadata_pk primary key (id)
);

create table marginOffered_metadata (
id int not null auto_increment,
brandName int not null,
supermarket_mo float(10, 4) not null,
generalStore_mo float(10, 4) not null,
kiranaStore_mo float(10, 4) not null,
constraint marginOfferedMetadata_pk primary key (id)
);

drop table Seg_BuyingBehaviourConstants;
drop table DistributionCoverageConstants;

create table Channel_Constants (
id int(11) not null auto_increment,
constName varchar(1000) not null,
period int not null,
supermarket float(10, 4) not null,
generalStore float(10, 4) not null,
kiranaStore float(10, 4) not null,
constraint channelConst_pk primary key(id)
);

create table purchaseIntention_Channel (
id int auto_increment,
brandId int not null,
superMarkets_pi float(10, 4) not null,
generalStores_pi float(10, 4) not null,
kiranaStores_pi float(10, 4) not null,
constraint channelpi_pk primary key(id),
constraint channelpi_fk foreign key(brandId) references Brands(id)
);

DROP TABLE marketshare_metadata;


create table channelAllocation(
id int auto_increment,
brandId int not null,
supermarketAllocation float(10, 4) not null,
generalStoreAllocation float(10, 4) not null,
kiranaStoreAllocation float(10, 4) not null,
constraint channelAllocat_pk primary key(id),
constraint channelAllocat_fk foreign key(brandId) references Brands(id)
);

create table channelAvailability(
id int auto_increment,
brandId int not null,
supermarketAvail float(10, 4) not null,
generalStoreAvail float(10, 4) not null,
kiranaStoreAvail float(10, 4) not null,
constraint channelAvail_pk primary key(id),
constraint channelAvail_fk foreign key(brandId) references Brands(id)
);

create table segmentAvailability_SuperMarket (
	id int auto_increment,
    brandId int not null,
	Seg_BlueBloods_Avail float(10,4) default 0,
	Seg_Raffles_Avail float(10,4) default 0,
	Seg_Wannabes_Avail float(10,4) default 0,
	Seg_Strugglers_Avail float(10,4) default 0,
	Seg_Deprived_Avail float(10,4) default 0,
	constraint segAvailMS_pk primary key(id),
    constraint segAvailMS_fk foreign key (brandId) references brands(Id)
	);
	
create table segmentAvailability_GenStore (
	id int auto_increment,
    brandId int not null,
	Seg_BlueBloods_Avail float(10,4) default 0,
	Seg_Raffles_Avail float(10,4) default 0,
	Seg_Wannabes_Avail float(10,4) default 0,
	Seg_Strugglers_Avail float(10,4) default 0,
	Seg_Deprived_Avail float(10,4) default 0,
	constraint segAvailGS_pk primary key(id),
    constraint segAvailGS_fk foreign key (brandId) references brands(Id)
	);
	
create table segmentAvailability_KiranaStore (
	id int auto_increment,
    brandId int not null,
	Seg_BlueBloods_Avail float(10,4) default 0,
	Seg_Raffles_Avail float(10,4) default 0,
	Seg_Wannabes_Avail float(10,4) default 0,
	Seg_Strugglers_Avail float(10,4) default 0,
	Seg_Deprived_Avail float(10,4) default 0,
	constraint segAvailKS_pk primary key(id),
    constraint segAvailKS_fk foreign key (brandId) references brands(Id)
	);

drop table marketShare;

create table channelMarketShare (
id int not null auto_increment,
brandId int not null,
supermarket_cms float(10, 4) not null,
generalStore_cms float(10, 4) not null,
kiranaStore_cms float(10, 4) not null,
constraint channelMarketShare_pk primary key (id),
constraint channelMarketSharebrandId_fk foreign key(brandId) references brands(id)
);

create table segmentMarketShare_SuperMarket (
	id int auto_increment,
    brandId int not null,
	Seg_BlueBloods_ms float(10,4) default 0,
	Seg_Raffles_ms float(10,4) default 0,
	Seg_Wannabes_ms float(10,4) default 0,
	Seg_Strugglers_ms float(10,4) default 0,
	Seg_Deprived_ms float(10,4) default 0,
	constraint segMsSupMar_pk primary key(id),
    constraint segMsSupMa_fk foreign key (brandId) references brands(Id)
	);

create table segmentMarketShare_GenStore (
	id int auto_increment,
    brandId int not null,
	Seg_BlueBloods_ms float(10,4) default 0,
	Seg_Raffles_ms float(10,4) default 0,
	Seg_Wannabes_ms float(10,4) default 0,
	Seg_Strugglers_ms float(10,4) default 0,
	Seg_Deprived_ms float(10,4) default 0,
	constraint segMsGen_pk primary key(id),
    constraint segMsGen_fk foreign key (brandId) references brands(Id)
	);
	
create table segmentMarketShare_KiranaStore (
	id int auto_increment,
    brandId int not null,
	Seg_BlueBloods_ms float(10,4) default 0,
	Seg_Raffles_ms float(10,4) default 0,
	Seg_Wannabes_ms float(10,4) default 0,
	Seg_Strugglers_ms float(10,4) default 0,
	Seg_Deprived_ms float(10,4) default 0,
	constraint segMsKir_pk primary key(id),
    constraint segMsKir_fk foreign key (brandId) references brands(Id)
	);