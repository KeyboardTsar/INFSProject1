--------------------------------------------------------
--  File created - Saturday-May-05-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence DEPARTMENTS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."DEPARTMENTS_SEQ"  MINVALUE 1 MAXVALUE 9990 INCREMENT BY 10 START WITH 280 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence EMPLOYEES_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."EMPLOYEES_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 207 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence LOCATIONS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."LOCATIONS_SEQ"  MINVALUE 1 MAXVALUE 9900 INCREMENT BY 100 START WITH 3300 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table APP_USER
--------------------------------------------------------

  CREATE TABLE "HR"."APP_USER" 
   (	"EMAIL" VARCHAR2(50), 
	"PASSWORD" VARCHAR2(20), 
	"ZID" CHAR(7), 
	"MOBILE_NUMBER" CHAR(10), 
	"FIRST_NAME" VARCHAR2(25), 
	"LAST_NAME" VARCHAR2(25), 
	"DEGREE" VARCHAR2(50), 
	"GRADUATION_YEAR" VARCHAR2(5), 
	"ACCOUNT_TYPE" VARCHAR2(10), 
	"POSITION" VARCHAR2(25), 
	"SOCIETY_ID" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ATTENDANCE
--------------------------------------------------------

  CREATE TABLE "HR"."ATTENDANCE" 
   (	"EVENT_ID" NUMBER(*,0), 
	"EMAIL" VARCHAR2(50), 
	"EVENT_ACTUAL_ATTENDANCE" CHAR(1), 
	"EVENT_THEORETICAL_ATTENDANCE" CHAR(1), 
	"GENERATED_CODE" VARCHAR2(6)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CAMPUS
--------------------------------------------------------

  CREATE TABLE "HR"."CAMPUS" 
   (	"BUILDING_CODE" VARCHAR2(10), 
	"BUILDING_NAME" VARCHAR2(50), 
	"ROOM_NO" VARCHAR2(10)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table COMMENTS
--------------------------------------------------------

  CREATE TABLE "HR"."COMMENTS" 
   (	"COMMENT_ID" NUMBER(*,0), 
	"COMMENT_CONTENT" VARCHAR2(300), 
	"EVENT_ID" NUMBER(*,0), 
	"EMAIL" VARCHAR2(50)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table EVENT
--------------------------------------------------------

  CREATE TABLE "HR"."EVENT" 
   (	"EVENT_ID" NUMBER(*,0), 
	"EVENT_TITLE" VARCHAR2(50), 
	"LOCATION_TYPE" VARCHAR2(20), 
	"EVENT_TEXT" VARCHAR2(4000), 
	"EVENT_START" TIMESTAMP (6), 
	"EVENT_END" TIMESTAMP (6), 
	"STREET_NO" VARCHAR2(4), 
	"STREET_NAME" VARCHAR2(50), 
	"POSTCODE" CHAR(4), 
	"SUBURB" VARCHAR2(50), 
	"SOCIETY_ID" NUMBER(*,0), 
	"EVENT_TYPE" VARCHAR2(20), 
	"BUILDING_CODE" VARCHAR2(10), 
	"ROOM_NO" VARCHAR2(10)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table FAVOURITES
--------------------------------------------------------

  CREATE TABLE "HR"."FAVOURITES" 
   (	"EMAIL" VARCHAR2(50), 
	"SOCIETY_ID" NUMBER(*,0), 
	"PROMO_CODE" VARCHAR2(6)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table FEEDBACK
--------------------------------------------------------

  CREATE TABLE "HR"."FEEDBACK" 
   (	"EMAIL" VARCHAR2(50), 
	"QUESTION_ID" NUMBER(*,0), 
	"EVENT_ID" NUMBER(*,0), 
	"FEEDBACK_ANSWER" VARCHAR2(500)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table FEEDBACK_QUESTION
--------------------------------------------------------

  CREATE TABLE "HR"."FEEDBACK_QUESTION" 
   (	"QUESTION_ID" NUMBER(*,0), 
	"QUESTION_WORDING" VARCHAR2(100)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MESSAGE
--------------------------------------------------------

  CREATE TABLE "HR"."MESSAGE" 
   (	"MESSAGE_ID" NUMBER(*,0), 
	"CHAT_ID" NUMBER(*,0), 
	"MESSAGE_TEXT" VARCHAR2(500), 
	"EMAIL" VARCHAR2(50)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ORGANISE
--------------------------------------------------------

  CREATE TABLE "HR"."ORGANISE" 
   (	"EVENT_ID" NUMBER(*,0), 
	"SOCIETY_ID" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SECURITY_FEATURE
--------------------------------------------------------

  CREATE TABLE "HR"."SECURITY_FEATURE" 
   (	"SECURITYQUESTION_ID" NUMBER(*,0), 
	"EMAIL" VARCHAR2(50), 
	"SECURITY_ANSWER" VARCHAR2(50)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SECURITY_QUESTION
--------------------------------------------------------

  CREATE TABLE "HR"."SECURITY_QUESTION" 
   (	"SECURITYQUESTION_ID" NUMBER(*,0), 
	"SECURITYQUESTION_WORDING" VARCHAR2(100)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SOCIETY
--------------------------------------------------------

  CREATE TABLE "HR"."SOCIETY" 
   (	"SOCIETY_ID" NUMBER(*,0), 
	"SOCIETY_NAME" VARCHAR2(100), 
	"SOCIETY_DESCRIPTION" VARCHAR2(500)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SPONSOR
--------------------------------------------------------

  CREATE TABLE "HR"."SPONSOR" 
   (	"SPONSOR_ID" NUMBER(*,0), 
	"SPONSOR_NAME" VARCHAR2(50), 
	"SPONSOR_DESCRIPTION" VARCHAR2(300)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SPONSORED_BY
--------------------------------------------------------

  CREATE TABLE "HR"."SPONSORED_BY" 
   (	"SOCIETY_ID" NUMBER(*,0), 
	"SPONSOR_ID" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for View EMP_DETAILS_VIEW
--------------------------------------------------------

  CREATE OR REPLACE VIEW "HR"."EMP_DETAILS_VIEW" ("EMPLOYEE_ID", "JOB_ID", "MANAGER_ID", "DEPARTMENT_ID", "LOCATION_ID", "COUNTRY_ID", "FIRST_NAME", "LAST_NAME", "SALARY", "COMMISSION_PCT", "DEPARTMENT_NAME", "JOB_TITLE", "CITY", "STATE_PROVINCE", "COUNTRY_NAME", "REGION_NAME") AS 
  SELECT
  e.employee_id,
  e.job_id,
  e.manager_id,
  e.department_id,
  d.location_id,
  l.country_id,
  e.first_name,
  e.last_name,
  e.salary,
  e.commission_pct,
  d.department_name,
  j.job_title,
  l.city,
  l.state_province,
  c.country_name,
  r.region_name
FROM
  employees e,
  departments d,
  jobs j,
  locations l,
  countries c,
  regions r
WHERE e.department_id = d.department_id
  AND d.location_id = l.location_id
  AND l.country_id = c.country_id
  AND c.region_id = r.region_id
  AND j.job_id = e.job_id
WITH READ ONLY;
REM INSERTING into HR.APP_USER
SET DEFINE OFF;
Insert into HR.APP_USER (EMAIL,PASSWORD,ZID,MOBILE_NUMBER,FIRST_NAME,LAST_NAME,DEGREE,GRADUATION_YEAR,ACCOUNT_TYPE,POSITION,SOCIETY_ID) values ('daphneblake@gmail.com','Password1','1234567','0412345678','Daphne','Blake','Information Systems','3','Personal',null,null);
Insert into HR.APP_USER (EMAIL,PASSWORD,ZID,MOBILE_NUMBER,FIRST_NAME,LAST_NAME,DEGREE,GRADUATION_YEAR,ACCOUNT_TYPE,POSITION,SOCIETY_ID) values ('fredjones@lawsoc.org.au','Password2','7654321','0498765432','Fred','Jones','Law','1','Society','President',4);
Insert into HR.APP_USER (EMAIL,PASSWORD,ZID,MOBILE_NUMBER,FIRST_NAME,LAST_NAME,DEGREE,GRADUATION_YEAR,ACCOUNT_TYPE,POSITION,SOCIETY_ID) values ('chair@arc.unsw.edu.au','Password3','1357642','0413468573','Velma','Dinkley','Engineering','2','ARC','Chair of the Board',null);
Insert into HR.APP_USER (EMAIL,PASSWORD,ZID,MOBILE_NUMBER,FIRST_NAME,LAST_NAME,DEGREE,GRADUATION_YEAR,ACCOUNT_TYPE,POSITION,SOCIETY_ID) values ('shaggyrogers@gmail.com','Password4','2468753','0468375964','Shaggy','Rogers','Arts','3','Personal',null,null);
Insert into HR.APP_USER (EMAIL,PASSWORD,ZID,MOBILE_NUMBER,FIRST_NAME,LAST_NAME,DEGREE,GRADUATION_YEAR,ACCOUNT_TYPE,POSITION,SOCIETY_ID) values ('scoobertdoo@outlook.com','Password5','1928374','0424689647','Scoobert','Doo','Medicine','2','Personal',null,null);
REM INSERTING into HR.ATTENDANCE
SET DEFINE OFF;
Insert into HR.ATTENDANCE (EVENT_ID,EMAIL,EVENT_ACTUAL_ATTENDANCE,EVENT_THEORETICAL_ATTENDANCE,GENERATED_CODE) values (1,'daphneblake@gmail.com','Y','Y','123456');
Insert into HR.ATTENDANCE (EVENT_ID,EMAIL,EVENT_ACTUAL_ATTENDANCE,EVENT_THEORETICAL_ATTENDANCE,GENERATED_CODE) values (2,'daphneblake@gmail.com','N','Y','654321');
Insert into HR.ATTENDANCE (EVENT_ID,EMAIL,EVENT_ACTUAL_ATTENDANCE,EVENT_THEORETICAL_ATTENDANCE,GENERATED_CODE) values (3,'scoobertdoo@outlook.com','N','Y','135796');
Insert into HR.ATTENDANCE (EVENT_ID,EMAIL,EVENT_ACTUAL_ATTENDANCE,EVENT_THEORETICAL_ATTENDANCE,GENERATED_CODE) values (1,'shaggyrogers@gmail.com','N','Y','147957');
Insert into HR.ATTENDANCE (EVENT_ID,EMAIL,EVENT_ACTUAL_ATTENDANCE,EVENT_THEORETICAL_ATTENDANCE,GENERATED_CODE) values (4,'scoobertdoo@outlook.com','N','Y','236744');
REM INSERTING into HR.CAMPUS
SET DEFINE OFF;
Insert into HR.CAMPUS (BUILDING_CODE,BUILDING_NAME,ROOM_NO) values ('E12','ASB','G24');
Insert into HR.CAMPUS (BUILDING_CODE,BUILDING_NAME,ROOM_NO) values ('C27','Wallace Wurth','G04');
Insert into HR.CAMPUS (BUILDING_CODE,BUILDING_NAME,ROOM_NO) values ('E15','Quadrangle','G13');
REM INSERTING into HR.COMMENTS
SET DEFINE OFF;
Insert into HR.COMMENTS (COMMENT_ID,COMMENT_CONTENT,EVENT_ID,EMAIL) values (1,'What is the dress code?',1,'scoobertdoo@outlook.com');
Insert into HR.COMMENTS (COMMENT_ID,COMMENT_CONTENT,EVENT_ID,EMAIL) values (2,'Can I come late to this event?',1,'shaggyrogers@gmail.com');
Insert into HR.COMMENTS (COMMENT_ID,COMMENT_CONTENT,EVENT_ID,EMAIL) values (3,'Where can I buy a ticket?',3,'daphneblake@gmail.com');
Insert into HR.COMMENTS (COMMENT_ID,COMMENT_CONTENT,EVENT_ID,EMAIL) values (4,'Will there be food?',4,'scoobertdoo@outlook.com');
Insert into HR.COMMENTS (COMMENT_ID,COMMENT_CONTENT,EVENT_ID,EMAIL) values (5,'This event will now be held in ASB G21.',1,'fredjones@lawsoc.org.au');
REM INSERTING into HR.EVENT
SET DEFINE OFF;
Insert into HR.EVENT (EVENT_ID,EVENT_TITLE,LOCATION_TYPE,EVENT_TEXT,EVENT_START,EVENT_END,STREET_NO,STREET_NAME,POSTCODE,SUBURB,SOCIETY_ID,EVENT_TYPE,BUILDING_CODE,ROOM_NO) values (1,'Lawsoc Networking Event','On Campus','An opportunity for Lawsoc member to meet representatives from a number of firms.',to_timestamp('05/MAR/18 09:00:00.000000000 AM','DD/MON/RR HH12:MI:SSXFF AM'),to_timestamp('05/MAR/18 11:00:00.000000000 AM','DD/MON/RR HH12:MI:SSXFF AM'),null,null,null,null,4,'Networking',null,null);
Insert into HR.EVENT (EVENT_ID,EVENT_TITLE,LOCATION_TYPE,EVENT_TEXT,EVENT_START,EVENT_END,STREET_NO,STREET_NAME,POSTCODE,SUBURB,SOCIETY_ID,EVENT_TYPE,BUILDING_CODE,ROOM_NO) values (2,'BITSA Trivia Night','Off Campus','BITSA’s annual trivia night.',to_timestamp('23/JUL/18 12:00:00.000000000 PM','DD/MON/RR HH12:MI:SSXFF AM'),to_timestamp('23/JUL/18 12:00:00.000000000 PM','DD/MON/RR HH12:MI:SSXFF AM'),'818','George St','2008','Darlington',1,'Social',null,null);
Insert into HR.EVENT (EVENT_ID,EVENT_TITLE,LOCATION_TYPE,EVENT_TEXT,EVENT_START,EVENT_END,STREET_NO,STREET_NAME,POSTCODE,SUBURB,SOCIETY_ID,EVENT_TYPE,BUILDING_CODE,ROOM_NO) values (3,'Engsoc Sports Day','On Campus','A chance for members to have some social fun featuring several different sports.',to_timestamp('15/APR/18 02:00:00.000000000 PM','DD/MON/RR HH12:MI:SSXFF AM'),to_timestamp('15/APR/18 03:00:00.000000000 PM','DD/MON/RR HH12:MI:SSXFF AM'),null,null,null,null,3,'Social',null,null);
Insert into HR.EVENT (EVENT_ID,EVENT_TITLE,LOCATION_TYPE,EVENT_TEXT,EVENT_START,EVENT_END,STREET_NO,STREET_NAME,POSTCODE,SUBURB,SOCIETY_ID,EVENT_TYPE,BUILDING_CODE,ROOM_NO) values (4,'CoopSoc Ball','Off Campus','The UNSW CoopSoc annual ball.',to_timestamp('28/AUG/18 06:00:00.000000000 PM','DD/MON/RR HH12:MI:SSXFF AM'),to_timestamp('28/AUG/18 08:30:00.000000000 PM','DD/MON/RR HH12:MI:SSXFF AM'),null,'Wheat Rd','2000','Sydney',2,'Social',null,null);
Insert into HR.EVENT (EVENT_ID,EVENT_TITLE,LOCATION_TYPE,EVENT_TEXT,EVENT_START,EVENT_END,STREET_NO,STREET_NAME,POSTCODE,SUBURB,SOCIETY_ID,EVENT_TYPE,BUILDING_CODE,ROOM_NO) values (5,'UNSW Management AGM','On Campus','UNSW Management Society’s Annual General Meeting',to_timestamp('31/OCT/18 10:30:00.000000000 AM','DD/MON/RR HH12:MI:SSXFF AM'),to_timestamp('31/OCT/18 12:30:00.000000000 PM','DD/MON/RR HH12:MI:SSXFF AM'),null,null,null,null,5,'Education',null,null);
REM INSERTING into HR.FAVOURITES
SET DEFINE OFF;
Insert into HR.FAVOURITES (EMAIL,SOCIETY_ID,PROMO_CODE) values ('daphneblake@gmail.com',4,'Free1');
Insert into HR.FAVOURITES (EMAIL,SOCIETY_ID,PROMO_CODE) values ('scoobertdoo@outlook.com',3,'Happy3');
Insert into HR.FAVOURITES (EMAIL,SOCIETY_ID,PROMO_CODE) values ('scoobertdoo@outlook.com',2,'Bonus1');
Insert into HR.FAVOURITES (EMAIL,SOCIETY_ID,PROMO_CODE) values ('shaggyrogers@gmail.com',2,'Ty1');
Insert into HR.FAVOURITES (EMAIL,SOCIETY_ID,PROMO_CODE) values ('scoobertdoo@outlook.com',1,'Free2');
REM INSERTING into HR.FEEDBACK
SET DEFINE OFF;
Insert into HR.FEEDBACK (EMAIL,QUESTION_ID,EVENT_ID,FEEDBACK_ANSWER) values ('shaggyrogers@gmail.com',1,1,'3');
Insert into HR.FEEDBACK (EMAIL,QUESTION_ID,EVENT_ID,FEEDBACK_ANSWER) values ('shaggyrogers@gmail.com',2,1,'Speakers were very engaging. Also, sufficient time was provided to network.');
Insert into HR.FEEDBACK (EMAIL,QUESTION_ID,EVENT_ID,FEEDBACK_ANSWER) values ('shaggyrogers@gmail.com',3,1,'Bigger venue should have been provided.');
Insert into HR.FEEDBACK (EMAIL,QUESTION_ID,EVENT_ID,FEEDBACK_ANSWER) values ('shaggyrogers@gmail.com',4,1,'Yes');
Insert into HR.FEEDBACK (EMAIL,QUESTION_ID,EVENT_ID,FEEDBACK_ANSWER) values ('shaggyrogers@gmail.com',5,1,'Yes');
Insert into HR.FEEDBACK (EMAIL,QUESTION_ID,EVENT_ID,FEEDBACK_ANSWER) values ('scoobertdoo@outlook.com',1,2,'4');
Insert into HR.FEEDBACK (EMAIL,QUESTION_ID,EVENT_ID,FEEDBACK_ANSWER) values ('scoobertdoo@outlook.com',2,2,'Great opportunity to meet people. Trivia questions were interesting and challenging.');
Insert into HR.FEEDBACK (EMAIL,QUESTION_ID,EVENT_ID,FEEDBACK_ANSWER) values ('scoobertdoo@outlook.com',3,2,'Providing food and drinks.');
Insert into HR.FEEDBACK (EMAIL,QUESTION_ID,EVENT_ID,FEEDBACK_ANSWER) values ('scoobertdoo@outlook.com',4,2,'Yes');
Insert into HR.FEEDBACK (EMAIL,QUESTION_ID,EVENT_ID,FEEDBACK_ANSWER) values ('scoobertdoo@outlook.com',5,2,'Yes');
Insert into HR.FEEDBACK (EMAIL,QUESTION_ID,EVENT_ID,FEEDBACK_ANSWER) values ('daphneblake@gmail.com',1,1,'4');
Insert into HR.FEEDBACK (EMAIL,QUESTION_ID,EVENT_ID,FEEDBACK_ANSWER) values ('daphneblake@gmail.com',2,1,'Meeting industry leaders and getting to network with them.');
Insert into HR.FEEDBACK (EMAIL,QUESTION_ID,EVENT_ID,FEEDBACK_ANSWER) values ('daphneblake@gmail.com',3,1,'Some people were unable to attend the event because it was held during the day. Holding the event after work hours would cater for more people.');
Insert into HR.FEEDBACK (EMAIL,QUESTION_ID,EVENT_ID,FEEDBACK_ANSWER) values ('daphneblake@gmail.com',4,1,'Yes');
Insert into HR.FEEDBACK (EMAIL,QUESTION_ID,EVENT_ID,FEEDBACK_ANSWER) values ('daphneblake@gmail.com',5,1,'Yes');
REM INSERTING into HR.FEEDBACK_QUESTION
SET DEFINE OFF;
Insert into HR.FEEDBACK_QUESTION (QUESTION_ID,QUESTION_WORDING) values (1,'How would you rate your experience at this event? (out of 5)');
Insert into HR.FEEDBACK_QUESTION (QUESTION_ID,QUESTION_WORDING) values (2,'What did you enjoy?');
Insert into HR.FEEDBACK_QUESTION (QUESTION_ID,QUESTION_WORDING) values (3,'What can be improved?');
Insert into HR.FEEDBACK_QUESTION (QUESTION_ID,QUESTION_WORDING) values (4,'Would you recommend this event to a friend?');
Insert into HR.FEEDBACK_QUESTION (QUESTION_ID,QUESTION_WORDING) values (5,'Would you attend future events held by this society?');
REM INSERTING into HR.MESSAGE
SET DEFINE OFF;
Insert into HR.MESSAGE (MESSAGE_ID,CHAT_ID,MESSAGE_TEXT,EMAIL) values (1,1,'Hi','fredjones@lawsoc.org.au');
Insert into HR.MESSAGE (MESSAGE_ID,CHAT_ID,MESSAGE_TEXT,EMAIL) values (2,1,'Hello','shaggyrogers@gmail.com');
Insert into HR.MESSAGE (MESSAGE_ID,CHAT_ID,MESSAGE_TEXT,EMAIL) values (3,2,'Greetings!','daphneblake@gmail.com');
Insert into HR.MESSAGE (MESSAGE_ID,CHAT_ID,MESSAGE_TEXT,EMAIL) values (4,2,'How are you?','chair@arc.unsw.edu.au');
Insert into HR.MESSAGE (MESSAGE_ID,CHAT_ID,MESSAGE_TEXT,EMAIL) values (5,2,'Good thank you','daphneblake@gmail.com');
REM INSERTING into HR.ORGANISE
SET DEFINE OFF;
Insert into HR.ORGANISE (EVENT_ID,SOCIETY_ID) values (1,4);
Insert into HR.ORGANISE (EVENT_ID,SOCIETY_ID) values (2,1);
Insert into HR.ORGANISE (EVENT_ID,SOCIETY_ID) values (3,3);
Insert into HR.ORGANISE (EVENT_ID,SOCIETY_ID) values (4,2);
Insert into HR.ORGANISE (EVENT_ID,SOCIETY_ID) values (5,5);
REM INSERTING into HR.SECURITY_FEATURE
SET DEFINE OFF;
Insert into HR.SECURITY_FEATURE (SECURITYQUESTION_ID,EMAIL,SECURITY_ANSWER) values (1,'fredjones@lawsoc.org.au','Smith');
Insert into HR.SECURITY_FEATURE (SECURITYQUESTION_ID,EMAIL,SECURITY_ANSWER) values (2,'fredjones@lawsoc.org.au','Jimmy');
Insert into HR.SECURITY_FEATURE (SECURITYQUESTION_ID,EMAIL,SECURITY_ANSWER) values (3,'scoobertdoo@outlook.com','George Crescent');
Insert into HR.SECURITY_FEATURE (SECURITYQUESTION_ID,EMAIL,SECURITY_ANSWER) values (4,'scoobertdoo@outlook.com','Mountain View Primary');
Insert into HR.SECURITY_FEATURE (SECURITYQUESTION_ID,EMAIL,SECURITY_ANSWER) values (1,'daphneblake@gmail.com','Richards');
Insert into HR.SECURITY_FEATURE (SECURITYQUESTION_ID,EMAIL,SECURITY_ANSWER) values (5,'daphneblake@gmail.com','Pizza Delivery Driver');
Insert into HR.SECURITY_FEATURE (SECURITYQUESTION_ID,EMAIL,SECURITY_ANSWER) values (4,'shaggyrogers@gmail.com','Carlingford Public');
Insert into HR.SECURITY_FEATURE (SECURITYQUESTION_ID,EMAIL,SECURITY_ANSWER) values (1,'shaggyrogers@gmail.com','Adams');
Insert into HR.SECURITY_FEATURE (SECURITYQUESTION_ID,EMAIL,SECURITY_ANSWER) values (5,'chair@arc.unsw.edu.au','ARC Member');
Insert into HR.SECURITY_FEATURE (SECURITYQUESTION_ID,EMAIL,SECURITY_ANSWER) values (4,'chair@arc.unsw.edu.au','St Johns Primary');
REM INSERTING into HR.SECURITY_QUESTION
SET DEFINE OFF;
Insert into HR.SECURITY_QUESTION (SECURITYQUESTION_ID,SECURITYQUESTION_WORDING) values (1,'What is your mother’s maiden name?');
Insert into HR.SECURITY_QUESTION (SECURITYQUESTION_ID,SECURITYQUESTION_WORDING) values (2,'What was your childhood nickname?');
Insert into HR.SECURITY_QUESTION (SECURITYQUESTION_ID,SECURITYQUESTION_WORDING) values (3,'What street did you grow up on?');
Insert into HR.SECURITY_QUESTION (SECURITYQUESTION_ID,SECURITYQUESTION_WORDING) values (4,'What was the name of your primary school?');
Insert into HR.SECURITY_QUESTION (SECURITYQUESTION_ID,SECURITYQUESTION_WORDING) values (5,'What was your first job?');
REM INSERTING into HR.SOCIETY
SET DEFINE OFF;
Insert into HR.SOCIETY (SOCIETY_ID,SOCIETY_NAME,SOCIETY_DESCRIPTION) values (1,'BITSA','BITSA is a student body representing and supporting the Information Systems undergraduate students of UNSW''s Australian School of Business.');
Insert into HR.SOCIETY (SOCIETY_ID,SOCIETY_NAME,SOCIETY_DESCRIPTION) values (2,'UNSW CoopSoc','The UNSW Co-operative Society, otherwise known as the wonderful CoopSoc, is a non-profit organisation dedicated to providing a social and support network to all UNSW Co-op Scholars.');
Insert into HR.SOCIETY (SOCIETY_ID,SOCIETY_NAME,SOCIETY_DESCRIPTION) values (3,'UNSW Engineering Society','UNSW EngSoc is the constituent engineering society at UNSW and our member base consists of all students within the nine schools of the UNSW Faculty of Engineering.');
Insert into HR.SOCIETY (SOCIETY_ID,SOCIETY_NAME,SOCIETY_DESCRIPTION) values (4,'UNSW Law Society','The UNSW Law Society is the peak representative body for all students in the UNSW Faculty of Law.');
Insert into HR.SOCIETY (SOCIETY_ID,SOCIETY_NAME,SOCIETY_DESCRIPTION) values (5,'UNSW Management Society','MSOC is a constituent student society of UNSW’s School of Management.');
REM INSERTING into HR.SPONSOR
SET DEFINE OFF;
Insert into HR.SPONSOR (SPONSOR_ID,SPONSOR_NAME,SPONSOR_DESCRIPTION) values (1,'Microsoft','Microsoft Corporation is an American multinational technology company with headquarters in Redmond, Washington. It develops, manufactures, licenses, supports and sells computer software, consumer electronics, personal computers, and services.');
Insert into HR.SPONSOR (SPONSOR_ID,SPONSOR_NAME,SPONSOR_DESCRIPTION) values (2,'Google','Google LLC is an American multinational technology company that specializes in Internet-related services and products, which include online advertising technologies, search engine, cloud computing, software, and hardware.');
Insert into HR.SPONSOR (SPONSOR_ID,SPONSOR_NAME,SPONSOR_DESCRIPTION) values (3,'Tesla','Tesla, Inc. is an American company that specializes in electric vehicles, energy storage and solar panel manufacturing based in Palo Alto, California.');
Insert into HR.SPONSOR (SPONSOR_ID,SPONSOR_NAME,SPONSOR_DESCRIPTION) values (4,'AT Kearney','A.T. Kearney is an American global management consulting firm that focuses on strategic and operational CEO-agenda issues facing businesses, governments and institutions around the globe.');
Insert into HR.SPONSOR (SPONSOR_ID,SPONSOR_NAME,SPONSOR_DESCRIPTION) values (5,'CBA','The Commonwealth Bank of Australia is an Australian multinational bank with businesses across New Zealand, Asia, the United States and the United Kingdom.');
REM INSERTING into HR.SPONSORED_BY
SET DEFINE OFF;
Insert into HR.SPONSORED_BY (SOCIETY_ID,SPONSOR_ID) values (1,1);
Insert into HR.SPONSORED_BY (SOCIETY_ID,SPONSOR_ID) values (1,2);
Insert into HR.SPONSORED_BY (SOCIETY_ID,SPONSOR_ID) values (1,5);
Insert into HR.SPONSORED_BY (SOCIETY_ID,SPONSOR_ID) values (3,3);
Insert into HR.SPONSORED_BY (SOCIETY_ID,SPONSOR_ID) values (4,4);
--------------------------------------------------------
--  Constraints for Table SPONSOR
--------------------------------------------------------

  ALTER TABLE "HR"."SPONSOR" ADD PRIMARY KEY ("SPONSOR_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."SPONSOR" MODIFY ("SPONSOR_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FEEDBACK_QUESTION
--------------------------------------------------------

  ALTER TABLE "HR"."FEEDBACK_QUESTION" ADD PRIMARY KEY ("QUESTION_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."FEEDBACK_QUESTION" MODIFY ("QUESTION_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table APP_USER
--------------------------------------------------------

  ALTER TABLE "HR"."APP_USER" ADD PRIMARY KEY ("EMAIL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."APP_USER" MODIFY ("EMAIL" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MESSAGE
--------------------------------------------------------

  ALTER TABLE "HR"."MESSAGE" ADD PRIMARY KEY ("MESSAGE_ID", "CHAT_ID", "EMAIL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."MESSAGE" MODIFY ("CHAT_ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."MESSAGE" MODIFY ("MESSAGE_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ORGANISE
--------------------------------------------------------

  ALTER TABLE "HR"."ORGANISE" ADD PRIMARY KEY ("EVENT_ID", "SOCIETY_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."ORGANISE" MODIFY ("SOCIETY_ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."ORGANISE" MODIFY ("EVENT_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COMMENTS
--------------------------------------------------------

  ALTER TABLE "HR"."COMMENTS" ADD PRIMARY KEY ("COMMENT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."COMMENTS" MODIFY ("COMMENT_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ATTENDANCE
--------------------------------------------------------

  ALTER TABLE "HR"."ATTENDANCE" ADD PRIMARY KEY ("EVENT_ID", "EMAIL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."ATTENDANCE" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "HR"."ATTENDANCE" MODIFY ("EVENT_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FAVOURITES
--------------------------------------------------------

  ALTER TABLE "HR"."FAVOURITES" ADD PRIMARY KEY ("EMAIL", "SOCIETY_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CAMPUS
--------------------------------------------------------

  ALTER TABLE "HR"."CAMPUS" MODIFY ("ROOM_NO" NOT NULL ENABLE);
  ALTER TABLE "HR"."CAMPUS" ADD PRIMARY KEY ("BUILDING_CODE", "ROOM_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."CAMPUS" MODIFY ("BUILDING_CODE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EVENT
--------------------------------------------------------

  ALTER TABLE "HR"."EVENT" ADD PRIMARY KEY ("EVENT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."EVENT" MODIFY ("EVENT_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SOCIETY
--------------------------------------------------------

  ALTER TABLE "HR"."SOCIETY" ADD PRIMARY KEY ("SOCIETY_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."SOCIETY" MODIFY ("SOCIETY_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SECURITY_FEATURE
--------------------------------------------------------

  ALTER TABLE "HR"."SECURITY_FEATURE" ADD PRIMARY KEY ("EMAIL", "SECURITYQUESTION_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."SECURITY_FEATURE" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "HR"."SECURITY_FEATURE" MODIFY ("SECURITYQUESTION_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FEEDBACK
--------------------------------------------------------

  ALTER TABLE "HR"."FEEDBACK" ADD PRIMARY KEY ("EMAIL", "QUESTION_ID", "EVENT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."FEEDBACK" MODIFY ("EMAIL" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SECURITY_QUESTION
--------------------------------------------------------

  ALTER TABLE "HR"."SECURITY_QUESTION" ADD PRIMARY KEY ("SECURITYQUESTION_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."SECURITY_QUESTION" MODIFY ("SECURITYQUESTION_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SPONSORED_BY
--------------------------------------------------------

  ALTER TABLE "HR"."SPONSORED_BY" ADD PRIMARY KEY ("SOCIETY_ID", "SPONSOR_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."SPONSORED_BY" MODIFY ("SPONSOR_ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."SPONSORED_BY" MODIFY ("SOCIETY_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table APP_USER
--------------------------------------------------------

  ALTER TABLE "HR"."APP_USER" ADD FOREIGN KEY ("SOCIETY_ID")
	  REFERENCES "HR"."SOCIETY" ("SOCIETY_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ATTENDANCE
--------------------------------------------------------

  ALTER TABLE "HR"."ATTENDANCE" ADD FOREIGN KEY ("EVENT_ID")
	  REFERENCES "HR"."EVENT" ("EVENT_ID") ENABLE;
  ALTER TABLE "HR"."ATTENDANCE" ADD FOREIGN KEY ("EMAIL")
	  REFERENCES "HR"."APP_USER" ("EMAIL") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COMMENTS
--------------------------------------------------------

  ALTER TABLE "HR"."COMMENTS" ADD FOREIGN KEY ("EVENT_ID")
	  REFERENCES "HR"."EVENT" ("EVENT_ID") ENABLE;
  ALTER TABLE "HR"."COMMENTS" ADD FOREIGN KEY ("EMAIL")
	  REFERENCES "HR"."APP_USER" ("EMAIL") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EVENT
--------------------------------------------------------

  ALTER TABLE "HR"."EVENT" ADD FOREIGN KEY ("SOCIETY_ID")
	  REFERENCES "HR"."SOCIETY" ("SOCIETY_ID") ENABLE;
  ALTER TABLE "HR"."EVENT" ADD FOREIGN KEY ("BUILDING_CODE", "ROOM_NO")
	  REFERENCES "HR"."CAMPUS" ("BUILDING_CODE", "ROOM_NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table FAVOURITES
--------------------------------------------------------

  ALTER TABLE "HR"."FAVOURITES" ADD FOREIGN KEY ("EMAIL")
	  REFERENCES "HR"."APP_USER" ("EMAIL") ENABLE;
  ALTER TABLE "HR"."FAVOURITES" ADD FOREIGN KEY ("SOCIETY_ID")
	  REFERENCES "HR"."SOCIETY" ("SOCIETY_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table FEEDBACK
--------------------------------------------------------

  ALTER TABLE "HR"."FEEDBACK" ADD FOREIGN KEY ("QUESTION_ID")
	  REFERENCES "HR"."FEEDBACK_QUESTION" ("QUESTION_ID") ENABLE;
  ALTER TABLE "HR"."FEEDBACK" ADD FOREIGN KEY ("EMAIL")
	  REFERENCES "HR"."APP_USER" ("EMAIL") ENABLE;
  ALTER TABLE "HR"."FEEDBACK" ADD FOREIGN KEY ("EVENT_ID")
	  REFERENCES "HR"."EVENT" ("EVENT_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MESSAGE
--------------------------------------------------------

  ALTER TABLE "HR"."MESSAGE" ADD FOREIGN KEY ("EMAIL")
	  REFERENCES "HR"."APP_USER" ("EMAIL") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ORGANISE
--------------------------------------------------------

  ALTER TABLE "HR"."ORGANISE" ADD FOREIGN KEY ("EVENT_ID")
	  REFERENCES "HR"."EVENT" ("EVENT_ID") ENABLE;
  ALTER TABLE "HR"."ORGANISE" ADD FOREIGN KEY ("SOCIETY_ID")
	  REFERENCES "HR"."SOCIETY" ("SOCIETY_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SECURITY_FEATURE
--------------------------------------------------------

  ALTER TABLE "HR"."SECURITY_FEATURE" ADD FOREIGN KEY ("SECURITYQUESTION_ID")
	  REFERENCES "HR"."SECURITY_QUESTION" ("SECURITYQUESTION_ID") ENABLE;
  ALTER TABLE "HR"."SECURITY_FEATURE" ADD FOREIGN KEY ("EMAIL")
	  REFERENCES "HR"."APP_USER" ("EMAIL") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SPONSORED_BY
--------------------------------------------------------

  ALTER TABLE "HR"."SPONSORED_BY" ADD FOREIGN KEY ("SPONSOR_ID")
	  REFERENCES "HR"."SPONSOR" ("SPONSOR_ID") ENABLE;
  ALTER TABLE "HR"."SPONSORED_BY" ADD FOREIGN KEY ("SOCIETY_ID")
	  REFERENCES "HR"."SOCIETY" ("SOCIETY_ID") ENABLE;
--------------------------------------------------------
--  DDL for Procedure ADD_JOB_HISTORY
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "HR"."ADD_JOB_HISTORY" 
  (  p_emp_id          job_history.employee_id%type
   , p_start_date      job_history.start_date%type
   , p_end_date        job_history.end_date%type
   , p_job_id          job_history.job_id%type
   , p_department_id   job_history.department_id%type
   )
IS
BEGIN
  INSERT INTO job_history (employee_id, start_date, end_date,
                           job_id, department_id)
    VALUES(p_emp_id, p_start_date, p_end_date, p_job_id, p_department_id);
END add_job_history;

/
--------------------------------------------------------
--  DDL for Procedure SECURE_DML
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "HR"."SECURE_DML" 
IS
BEGIN
  IF TO_CHAR (SYSDATE, 'HH24:MI') NOT BETWEEN '08:00' AND '18:00'
        OR TO_CHAR (SYSDATE, 'DY') IN ('SAT', 'SUN') THEN
	RAISE_APPLICATION_ERROR (-20205,
		'You may only make changes during normal office hours');
  END IF;
END secure_dml;

/
