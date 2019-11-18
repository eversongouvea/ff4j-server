CREATE TABLE "ff4j_audit"(
  "EVT_UUID" varchar(40) NOT NULL,
  "EVT_TIME" datetime NOT NULL,
  "EVT_TYPE" varchar(30) NOT NULL,
  "EVT_NAME" varchar(30) NOT NULL,
  "EVT_ACTION" varchar(30) NOT NULL,
  "EVT_HOSTNAME" varchar(100) NOT NULL,
  "EVT_SOURCE" varchar(30) NOT NULL,
  "EVT_DURATION" Integer DEFAULT NULL,
  "EVT_USER" varchar(30) DEFAULT NULL,
  "EVT_VALUE" varchar(100) DEFAULT NULL,
  "EVT_KEYS" varchar(255) DEFAULT NULL,
  PRIMARY KEY ("EVT_UUID","EVT_TIME")
);

INSERT INTO [ff4j_audit] VALUES ('001f7ce7-1e7b-424e-92b2-c084f0554d79',GETDATE(),'feature','Beta-Feature-1','checkOn','LOH068ND447GLYF','JAVA_API',0,'sasi',NULL,'')


CREATE TABLE "ff4j_custom_properties" (
  "PROPERTY_ID" varchar(100) NOT NULL,
  "CLAZZ" varchar(255) NOT NULL,
  "CURRENTVALUE" varchar(255) DEFAULT NULL,
  "FIXEDVALUES" varchar(1000) DEFAULT NULL,
  "DESCRIPTION" varchar(1000) DEFAULT NULL,
  "FEAT_UID" varchar(100) NOT NULL,
  PRIMARY KEY ("PROPERTY_ID","FEAT_UID")
);

CREATE TABLE "ff4j_features" (
  "FEAT_UID" varchar(100) NOT NULL,
  "ENABLE" Integer NOT NULL,
  "DESCRIPTION" varchar(1000) DEFAULT NULL,
  "STRATEGY" varchar(1000) DEFAULT NULL,
  "EXPRESSION" varchar(255) DEFAULT NULL,
  "GROUPNAME" varchar(100) DEFAULT NULL,
  PRIMARY KEY ("FEAT_UID")
); 

INSERT INTO [ff4j_features] VALUES ('Beta-Feature-1',1,'User story -1 for R1',NULL,NULL,'R1'),('Beta-Feature-2',1,'User story 2 for R1',NULL,NULL,'R1'),('client-feature',1,NULL,'org.ff4j.strategy.ClientFilterStrategy','grantedClients=dwebnetv01,10.228.18.35',NULL),('exp-sasi',0,NULL,'org.ff4j.strategy.el.ExpressionFlipStrategy','expression=sasi-f1 | sasi-f2',NULL),('office-hour-normal',0,NULL,'org.ff4j.strategy.time.OfficeHourStrategy','tuesday=08:00-12:00,13:30-18:00&monday=08:00-12:00,13:30-18:00',NULL),('office-hour-public-holiday',0,NULL,'org.ff4j.strategy.time.OfficeHourStrategy','publicHolidays=2015-01-01,2015-05-01,2015-12-25',NULL),('office-hour-special-opening',0,NULL,'org.ff4j.strategy.time.OfficeHourStrategy','specialOpenings=[08:00-12:00]@2015-01-01',NULL),('poderation',0,NULL,'org.ff4j.strategy.PonderationStrategy','weight=0.5',NULL),('Release-date',1,NULL,'org.ff4j.strategy.time.ReleaseDateFlipStrategy','releaseDate=2018-10-18-14:00',NULL),('sasi-f1',1,'',NULL,NULL,NULL),('sasi-f2',1,'',NULL,NULL,NULL),('system-binary',1,'Enables binary system',NULL,NULL,NULL);


CREATE TABLE "ff4j_properties" (
  "PROPERTY_ID" varchar(100) NOT NULL,
  "CLAZZ" varchar(255) NOT NULL,
  "CURRENTVALUE" varchar(255) DEFAULT NULL,
  "FIXEDVALUES" varchar(1000) DEFAULT NULL,
  "DESCRIPTION" varchar(1000) DEFAULT NULL,
  PRIMARY KEY ("PROPERTY_ID")
);

INSERT INTO [ff4j_properties] VALUES ('a','org.ff4j.property.PropertyString','AMER','AMER, EAST',NULL),('b','org.ff4j.property.PropertyString','12',NULL,NULL),('c','org.ff4j.property.PropertyString','12.5',NULL,NULL),('d','org.ff4j.property.PropertyString','true',NULL,NULL),('e','org.ff4j.property.PropertyString','hello',NULL,NULL),('f','org.ff4j.property.PropertyString','12,13,14',NULL,NULL),('g','org.ff4j.property.PropertyLogLevel','DEBUG','WARN, ERROR, FATAL, INFO, DEBUG, TRACE',NULL),('SampleProperty','org.ff4j.property.PropertyString','go-sasi!',NULL,NULL),('SamplePropertyIn','org.ff4j.property.PropertyInt','12',NULL,NULL);

CREATE TABLE [ff4j_roles] (
  "FEAT_UID" varchar(100) NOT NULL,
  "ROLE_NAME" varchar(100) NOT NULL,
  PRIMARY KEY ("FEAT_UID","ROLE_NAME")
);


INSERT INTO [ff4j_roles] VALUES ('Beta-Feature-1','ROLE_BETA-TESTER'),('Beta-Feature-2','ROLE_BETA-TESTER');



