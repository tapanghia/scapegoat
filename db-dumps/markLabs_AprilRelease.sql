create table teams (id number(19), teamName varchar2(255) not null, 
teamUserName varchar2(255) not null, 
teamPassword varchar2(255) not null,
constraint teams_pk primary key(id),
constraint teamUserName_unq unique(teamUserName),
constraint teamName_unq unique(teamName)
);

create table researchProject (id number(19), projectName varchar2(255) not null, 
design number(10) not null, fragrance number(10) not null, persistence number(10) not null, 
packaging number(10) not null, safety number(10) not null, 
minimumBaseCost number(19) not null, requestedBaseCost number(19) not null,
requiredBudget number(19) not null, allocatedBudget number(19) not null, 
currentPeriod number(10) not null, isAvailable varchar2(1) not null,
budgetDeficit number(10) not null, projectFinishPeriod number(10),
teamID number(19) not null,
constraint researchProj_pk primary key(id),
constraint projectName_unq unique(projectName),
constraint teamID_fk foreign key(teamID) references teams(id)
);

create table brands (id number(19), brandName varchar2(255) not null, deleteflag varchar2(1) not null,
researchProjectID number(19) not null,
constraint brands_pk primary key(id),
constraint brandName_unq unique(brandName),
constraint researchProj_fk foreign key(researchProjectID) references researchProject(id)
);

create table user_table(userId number(19), userName varchar2(255) not null,
userPassword varchar2(255) not null, userTypeId number(1) not null,
constraint userTable_pk primary key(userId),
constraint userName_unq unique(userName));

CREATE SEQUENCE  HIBERNATE_SEQUENCE  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 100 CACHE 20 NOORDER  NOCYCLE ;

insert into user_table values (hibernate_sequence.nextVal,'admin', 'admin', 1);

alter table user_table rename column userpassword to password;

create table team_metadata (id number(19), teamName varchar2(255) not null,
constraint id_pk primary key(id),
constraint teamMetadat_unq unique(teamName));

-- This data needs to copied from the link: http://www.osric.com/chris/phonetic.html
insert into team_metadata values (hibernate_sequence.nextVal, 'Alpha');
insert into team_metadata values (hibernate_sequence.nextVal, 'Bravo');
insert into team_metadata values (hibernate_sequence.nextVal, 'Charlie');


create table researchProject_metadata (id number(19), projectName varchar2(255) not null, 
design number(10) not null, fragrance number(10) not null, persistence number(10) not null, 
packaging number(10) not null, safety number(10) not null, 
teamName varchar2(255) not null, scenario number(10), 
constraint researchProjMD_pk primary key(id),
constraint projectNameMD_unq unique(projectName),
constraint teamName_fk foreign key(teamName) references team_metadata(teamName)
);


insert into researchProject_metadata values (hibernate_sequence.nextVal, 'ARYAN', '25', '30', '38', '15', '15', 'Alpha', '1' );
insert into researchProject_metadata values (hibernate_sequence.nextVal, 'ARMAN', '55', '60', '72', '40', '40', 'Alpha', '1' );
insert into researchProject_metadata values (hibernate_sequence.nextVal, 'BRYAN', '25', '30', '38', '15', '15', 'Bravo', '1' );
insert into researchProject_metadata values (hibernate_sequence.nextVal, 'BRMAN', '55', '60', '72', '40', '40', 'Bravo', '1' );


create table brands_metadata (id number(19), brandName varchar2(255) not null, 
researchProjectName varchar2(255) not null,
constraint brandsMD_pk primary key(id), 
constraint brandNameMD_unq unique(brandName),
constraint researchProjNameMD_fk foreign key(researchProjectName) references researchProject_metadata(projectName));


insert into brands_metadata values (hibernate_sequence.nextVal, 'AYAN', 'ARYAN');
insert into brands_metadata values (hibernate_sequence.nextVal, 'ARIM', 'ARMAN');
insert into brands_metadata values (hibernate_sequence.nextVal, 'BYTE', 'BRYAN');
insert into brands_metadata values (hibernate_sequence.nextVal, 'BROM', 'BRMAN');
