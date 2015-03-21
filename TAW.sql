--------------------------------------------------------
-- Archivo creado  - sábado-marzo-21-2015   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table COMMENTS
--------------------------------------------------------

  CREATE TABLE "TAW23"."COMMENTS" 
   (	"ID" NUMBER(*,0), 
	"USER_ID" NUMBER(*,0), 
	"POST_ID" NUMBER(*,0), 
	"CONTENT" VARCHAR2(1500 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "TS_ALUMNOS" ;
--------------------------------------------------------
--  DDL for Table FRIENDS
--------------------------------------------------------

  CREATE TABLE "TAW23"."FRIENDS" 
   (	"USER_ID" NUMBER(*,0), 
	"FRIEND_ID" NUMBER(*,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "TS_ALUMNOS" ;
--------------------------------------------------------
--  DDL for Table GROUPS
--------------------------------------------------------

  CREATE TABLE "TAW23"."GROUPS" 
   (	"ID" NUMBER(*,0), 
	"ADMIN" NUMBER(*,0), 
	"NAME" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "TS_ALUMNOS" ;
--------------------------------------------------------
--  DDL for Table POST
--------------------------------------------------------

  CREATE TABLE "TAW23"."POST" 
   (	"ID" NUMBER(*,0), 
	"USER_ID" NUMBER(*,0), 
	"GROUP_ID" NUMBER(*,0), 
	"CONTENT" VARCHAR2(3000 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "TS_ALUMNOS" ;
--------------------------------------------------------
--  DDL for Table USERS
--------------------------------------------------------

  CREATE TABLE "TAW23"."USERS" 
   (	"ID" NUMBER(*,0), 
	"PASSWORD" VARCHAR2(32 BYTE), 
	"EMAIL" VARCHAR2(80 BYTE), 
	"NAME" VARCHAR2(30 BYTE), 
	"LASTNAME" VARCHAR2(50 BYTE), 
	"TYPE" NUMBER(*,0), 
	"BLOCKED" NUMBER(*,0), 
	"NOTIFICATIONS" NUMBER(*,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "TS_ALUMNOS" ;
 

   COMMENT ON COLUMN "TAW23"."USERS"."TYPE" IS 'If 1 -> admin 
If 0 -> user';
 
   COMMENT ON COLUMN "TAW23"."USERS"."BLOCKED" IS 'If 1 -> can''t login 
If 0 -> can login';
 
   COMMENT ON COLUMN "TAW23"."USERS"."NOTIFICATIONS" IS 'If 1 -> have notifications 
If 0 -> don''t have';
--------------------------------------------------------
--  DDL for Table USERS_GROUP
--------------------------------------------------------

  CREATE TABLE "TAW23"."USERS_GROUP" 
   (	"USER_ID" NUMBER(*,0), 
	"GROUP_ID" NUMBER(*,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "TS_ALUMNOS" ;
REM INSERTING into TAW23.COMMENTS
SET DEFINE OFF;
REM INSERTING into TAW23.FRIENDS
SET DEFINE OFF;
REM INSERTING into TAW23.GROUPS
SET DEFINE OFF;
REM INSERTING into TAW23.POST
SET DEFINE OFF;
REM INSERTING into TAW23.USERS
SET DEFINE OFF;
REM INSERTING into TAW23.USERS_GROUP
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index FRIENDS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TAW23"."FRIENDS_PK" ON "TAW23"."FRIENDS" ("USER_ID", "FRIEND_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "TS_ALUMNOS" ;
--------------------------------------------------------
--  DDL for Index COMMENTS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TAW23"."COMMENTS_PK" ON "TAW23"."COMMENTS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "TS_ALUMNOS" ;
--------------------------------------------------------
--  DDL for Index USERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TAW23"."USERS_PK" ON "TAW23"."USERS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "TS_ALUMNOS" ;
--------------------------------------------------------
--  DDL for Index POST_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TAW23"."POST_PK" ON "TAW23"."POST" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "TS_ALUMNOS" ;
--------------------------------------------------------
--  DDL for Index GROUPS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TAW23"."GROUPS_PK" ON "TAW23"."GROUPS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "TS_ALUMNOS" ;
--------------------------------------------------------
--  DDL for Index USERS_GROUP_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TAW23"."USERS_GROUP_PK" ON "TAW23"."USERS_GROUP" ("USER_ID", "GROUP_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "TS_ALUMNOS" ;
--------------------------------------------------------
--  Constraints for Table USERS_GROUP
--------------------------------------------------------

  ALTER TABLE "TAW23"."USERS_GROUP" MODIFY ("USER_ID" NOT NULL ENABLE);
 
  ALTER TABLE "TAW23"."USERS_GROUP" MODIFY ("GROUP_ID" NOT NULL ENABLE);
 
  ALTER TABLE "TAW23"."USERS_GROUP" ADD CONSTRAINT "USERS_GROUP_PK" PRIMARY KEY ("USER_ID", "GROUP_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "TS_ALUMNOS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table USERS
--------------------------------------------------------

  ALTER TABLE "TAW23"."USERS" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "TAW23"."USERS" MODIFY ("PASSWORD" NOT NULL ENABLE);
 
  ALTER TABLE "TAW23"."USERS" MODIFY ("EMAIL" NOT NULL ENABLE);
 
  ALTER TABLE "TAW23"."USERS" MODIFY ("NAME" NOT NULL ENABLE);
 
  ALTER TABLE "TAW23"."USERS" MODIFY ("LASTNAME" NOT NULL ENABLE);
 
  ALTER TABLE "TAW23"."USERS" MODIFY ("TYPE" NOT NULL ENABLE);
 
  ALTER TABLE "TAW23"."USERS" MODIFY ("BLOCKED" NOT NULL ENABLE);
 
  ALTER TABLE "TAW23"."USERS" MODIFY ("NOTIFICATIONS" NOT NULL ENABLE);
 
  ALTER TABLE "TAW23"."USERS" ADD CONSTRAINT "USERS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "TS_ALUMNOS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table FRIENDS
--------------------------------------------------------

  ALTER TABLE "TAW23"."FRIENDS" ADD CONSTRAINT "FRIENDS_PK" PRIMARY KEY ("USER_ID", "FRIEND_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "TS_ALUMNOS"  ENABLE;
 
  ALTER TABLE "TAW23"."FRIENDS" MODIFY ("USER_ID" NOT NULL ENABLE);
 
  ALTER TABLE "TAW23"."FRIENDS" MODIFY ("FRIEND_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COMMENTS
--------------------------------------------------------

  ALTER TABLE "TAW23"."COMMENTS" ADD CONSTRAINT "COMMENTS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "TS_ALUMNOS"  ENABLE;
 
  ALTER TABLE "TAW23"."COMMENTS" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "TAW23"."COMMENTS" MODIFY ("USER_ID" NOT NULL ENABLE);
 
  ALTER TABLE "TAW23"."COMMENTS" MODIFY ("POST_ID" NOT NULL ENABLE);
 
  ALTER TABLE "TAW23"."COMMENTS" MODIFY ("CONTENT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table POST
--------------------------------------------------------

  ALTER TABLE "TAW23"."POST" ADD CONSTRAINT "POST_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "TS_ALUMNOS"  ENABLE;
 
  ALTER TABLE "TAW23"."POST" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "TAW23"."POST" MODIFY ("USER_ID" NOT NULL ENABLE);
 
  ALTER TABLE "TAW23"."POST" MODIFY ("GROUP_ID" NOT NULL ENABLE);
 
  ALTER TABLE "TAW23"."POST" MODIFY ("CONTENT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table GROUPS
--------------------------------------------------------

  ALTER TABLE "TAW23"."GROUPS" ADD CONSTRAINT "GROUPS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "TS_ALUMNOS"  ENABLE;
 
  ALTER TABLE "TAW23"."GROUPS" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "TAW23"."GROUPS" MODIFY ("ADMIN" NOT NULL ENABLE);
 
  ALTER TABLE "TAW23"."GROUPS" MODIFY ("NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table COMMENTS
--------------------------------------------------------

  ALTER TABLE "TAW23"."COMMENTS" ADD CONSTRAINT "POST_FKC" FOREIGN KEY ("POST_ID")
	  REFERENCES "TAW23"."POST" ("ID") ENABLE;
 
  ALTER TABLE "TAW23"."COMMENTS" ADD CONSTRAINT "USER_FKC" FOREIGN KEY ("USER_ID")
	  REFERENCES "TAW23"."USERS" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table FRIENDS
--------------------------------------------------------

  ALTER TABLE "TAW23"."FRIENDS" ADD CONSTRAINT "FRIEND_FKF" FOREIGN KEY ("FRIEND_ID")
	  REFERENCES "TAW23"."USERS" ("ID") ENABLE;
 
  ALTER TABLE "TAW23"."FRIENDS" ADD CONSTRAINT "USER_FKF" FOREIGN KEY ("USER_ID")
	  REFERENCES "TAW23"."USERS" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table GROUPS
--------------------------------------------------------

  ALTER TABLE "TAW23"."GROUPS" ADD CONSTRAINT "GROUPS_FKG" FOREIGN KEY ("ADMIN")
	  REFERENCES "TAW23"."USERS" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table POST
--------------------------------------------------------

  ALTER TABLE "TAW23"."POST" ADD CONSTRAINT "GROUP_FKP" FOREIGN KEY ("GROUP_ID")
	  REFERENCES "TAW23"."GROUPS" ("ID") ENABLE;
 
  ALTER TABLE "TAW23"."POST" ADD CONSTRAINT "USERS_FKP" FOREIGN KEY ("USER_ID")
	  REFERENCES "TAW23"."USERS" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table USERS_GROUP
--------------------------------------------------------

  ALTER TABLE "TAW23"."USERS_GROUP" ADD CONSTRAINT "USERS_GROUP_FK1" FOREIGN KEY ("USER_ID")
	  REFERENCES "TAW23"."USERS" ("ID") ENABLE;
 
  ALTER TABLE "TAW23"."USERS_GROUP" ADD CONSTRAINT "USERS_GROUP_FK2" FOREIGN KEY ("GROUP_ID")
	  REFERENCES "TAW23"."GROUPS" ("ID") ENABLE;
