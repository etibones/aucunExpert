/*==============================================================*/
/* Nom de SGBD :  PostgreSQL 9.x                                */
/* Date de création :  2018-05-24 13:15:07                      */
/*==============================================================*/

/*-----------------------------Creation Schémas-----------------------------*/
drop SCHEMA ProjetS3 CASCADE ;

CREATE SCHEMA ProjetS3 ;

set SEARCH_PATH = ProjetS3;
/*----------------------------------------------------------*

drop index PEUT_AVOIR_FK;

drop index AUTOMOBILE_PK;

drop table AUTOMOBILES;

drop index CAMPUS_PK;

drop table CAMPUS;

drop index DROITS2_FK;

drop index DROITS_FK;

drop index DROITS_PK;

drop table DROITS;

drop index EVENEMENTS_PK;

drop table EVENEMENTS;

drop index LOG2_FK;

drop index LOG_FK;

drop index LOG_PK;

drop table LOG;

drop index DEPART_FK;

drop index ARRIVE_FK;

drop index FAIT_PARTIT_FK;

drop index OFFRES_PK;

drop table OFFRES;

drop index PRIVILEGES_PK;

drop table PRIVILEGES;

drop index RESERVER3_FK;

drop index RESERVER2_FK;

drop index RESERVER_FK;

drop index RESERVER_PK;

drop table RESERVER;

drop index USAGER_PK;

drop table USAGERS;

drop index VILLE_PK;

drop table VILLE;
*/
/*==============================================================*/
/* Table : AUTOMOBILES                                          */
/*==============================================================*/
create table AUTOMOBILES (
   CIP                  VARCHAR(8)           not null,
   NOM_CAR              TEXT                 not null,
   ANNEE_CAR            INT4                 null,
   MARQUE               TEXT                 null,
   constraint PK_AUTOMOBILES primary key (CIP, NOM_CAR)
);

/*==============================================================*/
/* Index : AUTOMOBILE_PK                                        */
/*==============================================================*/
create unique index AUTOMOBILE_PK on AUTOMOBILES (
CIP,
NOM_CAR
);

/*==============================================================*/
/* Index : PEUT_AVOIR_FK                                        */
/*==============================================================*/
create  index PEUT_AVOIR_FK on AUTOMOBILES (
CIP
);

/*==============================================================*/
/* Table : CAMPUS                                               */
/*==============================================================*/
create table CAMPUS (
   ID_CAMPUS            SERIAL               not null,
   NOM_CAMPUS           TEXT                 null,
   constraint PK_CAMPUS primary key (ID_CAMPUS)
);

/*==============================================================*/
/* Index : CAMPUS_PK                                            */
/*==============================================================*/
create unique index CAMPUS_PK on CAMPUS (
ID_CAMPUS
);

/*==============================================================*/
/* Table : DROITS                                               */
/*==============================================================*/
create table DROITS (
   CIP                  VARCHAR(8)           not null,
   ID_PRIVILEGE         INT4                 not null,
   STATUT               TEXT                 null,
   constraint PK_DROITS primary key (CIP, ID_PRIVILEGE)
);

/*==============================================================*/
/* Index : DROITS_PK                                            */
/*==============================================================*/
create unique index DROITS_PK on DROITS (
CIP,
ID_PRIVILEGE
);

/*==============================================================*/
/* Index : DROITS_FK                                            */
/*==============================================================*/
create  index DROITS_FK on DROITS (
CIP
);

/*==============================================================*/
/* Index : DROITS2_FK                                           */
/*==============================================================*/
create  index DROITS2_FK on DROITS (
ID_PRIVILEGE
);

/*==============================================================*/
/* Table : EVENEMENTS                                           */
/*==============================================================*/
create table EVENEMENTS (
   ID_EVENEMENT         serial                 not null,
   LIBELLE_EVENEMENT    TEXT                 null,
   constraint PK_EVENEMENTS primary key (ID_EVENEMENT)
);

/*==============================================================*/
/* Index : EVENEMENTS_PK                                        */
/*==============================================================*/
create unique index EVENEMENTS_PK on EVENEMENTS (
ID_EVENEMENT
);

/*==============================================================*/
/* Table : LOG                                                  */
/*==============================================================*/
create table LOG (
   CIP                  VARCHAR(8)           not null,
   ID_EVENEMENT         serial                 not null,
   DESCRIPTION          TEXT                 not null,
   constraint PK_LOG primary key (CIP, ID_EVENEMENT)
);

/*==============================================================*/
/* Index : LOG_PK                                               */
/*==============================================================*/
create unique index LOG_PK on LOG (
CIP,
ID_EVENEMENT
);

/*==============================================================*/
/* Index : LOG_FK                                               */
/*==============================================================*/
create  index LOG_FK on LOG (
CIP
);

/*==============================================================*/
/* Index : LOG2_FK                                              */
/*==============================================================*/
create  index LOG2_FK on LOG (
ID_EVENEMENT
);

/*==============================================================*/
/* Table : OFFRES                                               */
/*==============================================================*/
create table OFFRES (
   CIP                  VARCHAR(8)           not null,
   NOM_CAR              TEXT                 not null,
   ID_VILLE             INT4                 not null,
   ID_CAMPUS            INT4                 not null,
   ID_OFFRE             SERIAL               not null,
   LIBELLE_OFFRE        TEXT                 null,
   DATEPRESENTEMENT     TIMESTAMP            default now(),
   DATEOFFRE            TIMESTAMP            null,
   NOMBRE_DE_PLACE      int4                 null,
   BAGAGE               CHAR(10)             null,
   constraint PK_OFFRES primary key (CIP, NOM_CAR, ID_VILLE, ID_CAMPUS, ID_OFFRE)
);

/*==============================================================*/
/* Index : OFFRES_PK                                            */
/*==============================================================*/
create unique index OFFRES_PK on OFFRES (
CIP,
NOM_CAR,
ID_VILLE,
ID_CAMPUS,
ID_OFFRE
);

/*==============================================================*/
/* Index : FAIT_PARTIT_FK                                       */
/*==============================================================*/
create  index FAIT_PARTIT_FK on OFFRES (
CIP,
NOM_CAR
);

/*==============================================================*/
/* Index : ARRIVE_FK                                            */
/*==============================================================*/
create  index ARRIVE_FK on OFFRES (
ID_VILLE
);

/*==============================================================*/
/* Index : DEPART_FK                                            */
/*==============================================================*/
create  index DEPART_FK on OFFRES (
ID_CAMPUS
);

/*==============================================================*/
/* Table : PRIVILEGES                                           */
/*==============================================================*/
create table PRIVILEGES (
   ID_PRIVILEGE         SERIAL               not null,
   LIBELLE_PRIVILEGE    TEXT                 null,
   constraint PK_PRIVILEGES primary key (ID_PRIVILEGE)
);

/*==============================================================*/
/* Index : PRIVILEGES_PK                                        */
/*==============================================================*/
create unique index PRIVILEGES_PK on PRIVILEGES (
ID_PRIVILEGE
);

/*==============================================================*/
/* Table : RESERVER                                             */
/*==============================================================*/
create table RESERVER (
   CIP                  VARCHAR(8)           not null,
   OFF_CIP              VARCHAR(8)           not null,
   OFF_NOM_CAR          TEXT                 not null,
   ID_VILLE             INT4                 not null,
   ID_CAMPUS            INT4                 not null,
   ID_OFFRE             INT4                 not null,
   AUT_CIP              VARCHAR(8)           not null,
   NOM_CAR              TEXT                 not null,
   DATE_RESERVATION     DATE                 not null,
   CONFIRMATION         BOOL                 not null,
   constraint PK_RESERVER primary key (OFF_CIP, OFF_NOM_CAR, AUT_CIP, ID_VILLE, ID_CAMPUS, CIP, ID_OFFRE, NOM_CAR)
);

/*==============================================================*/
/* Index : RESERVER_PK                                          */
/*==============================================================*/
create unique index RESERVER_PK on RESERVER (
OFF_CIP,
OFF_NOM_CAR,
AUT_CIP,
ID_VILLE,
ID_CAMPUS,
CIP,
ID_OFFRE,
NOM_CAR
);

/*==============================================================*/
/* Index : RESERVER_FK                                          */
/*==============================================================*/
create  index RESERVER_FK on RESERVER (
CIP
);

/*==============================================================*/
/* Index : RESERVER2_FK                                         */
/*==============================================================*/
create  index RESERVER2_FK on RESERVER (
OFF_CIP,
OFF_NOM_CAR,
ID_VILLE,
ID_CAMPUS,
ID_OFFRE
);

/*==============================================================*/
/* Index : RESERVER3_FK                                         */
/*==============================================================*/
create  index RESERVER3_FK on RESERVER (
AUT_CIP,
NOM_CAR
);

/*==============================================================*/
/* Table : USAGERS                                              */
/*==============================================================*/
create table USAGERS (
   CIP                  VARCHAR(8)           not null,
   NOM_USAGER           TEXT                 null,
   PRENOM_USAGER        TEXT                 null,
   constraint PK_USAGERS primary key (CIP)
);

/*==============================================================*/
/* Index : USAGER_PK                                            */
/*==============================================================*/
create unique index USAGER_PK on USAGERS (
CIP
);

/*==============================================================*/
/* Table : VILLE                                                */
/*==============================================================*/
create table VILLE (
   ID_VILLE             SERIAL               not null,
   LIBELLE_VILLE        TEXT                 null,
   constraint PK_VILLE primary key (ID_VILLE)
);

/*==============================================================*/
/* Index : VILLE_PK                                             */
/*==============================================================*/
create unique index VILLE_PK on VILLE (
ID_VILLE
);

alter table AUTOMOBILES
   add constraint FK_AUTOMOBI_PEUT_AVOI_USAGERS foreign key (CIP)
      references USAGERS (CIP)
      on delete restrict on update restrict;

alter table DROITS
   add constraint FK_DROITS_DROITS_USAGERS foreign key (CIP)
      references USAGERS (CIP)
      on delete restrict on update restrict;

alter table DROITS
   add constraint FK_DROITS_DROITS2_PRIVILEG foreign key (ID_PRIVILEGE)
      references PRIVILEGES (ID_PRIVILEGE)
      on delete restrict on update restrict;

alter table LOG
   add constraint FK_LOG_LOG_USAGERS foreign key (CIP)
      references USAGERS (CIP)
      on delete restrict on update restrict;

alter table LOG
   add constraint FK_LOG_LOG2_EVENEMEN foreign key (ID_EVENEMENT)
      references EVENEMENTS (ID_EVENEMENT)
      on delete restrict on update restrict;

alter table OFFRES
   add constraint FK_OFFRES_ARRIVE_VILLE foreign key (ID_VILLE)
      references VILLE (ID_VILLE)
      on delete restrict on update restrict;

alter table OFFRES
   add constraint FK_OFFRES_DEPART_CAMPUS foreign key (ID_CAMPUS)
      references CAMPUS (ID_CAMPUS)
      on delete restrict on update restrict;

alter table OFFRES
   add constraint FK_OFFRES_FAIT_PART_AUTOMOBI foreign key (CIP, NOM_CAR)
      references AUTOMOBILES (CIP, NOM_CAR)
      on delete restrict on update restrict;

alter table RESERVER
   add constraint FK_RESERVER_RESERVER_USAGERS foreign key (CIP)
      references USAGERS (CIP)
      on delete restrict on update restrict;

alter table RESERVER
   add constraint FK_RESERVER_RESERVER2_OFFRES foreign key (OFF_CIP, OFF_NOM_CAR, ID_VILLE, ID_CAMPUS, ID_OFFRE)
      references OFFRES (CIP, NOM_CAR, ID_VILLE, ID_CAMPUS, ID_OFFRE)
      on delete restrict on update restrict;

alter table RESERVER
   add constraint FK_RESERVER_RESERVER3_AUTOMOBI foreign key (AUT_CIP, NOM_CAR)
      references AUTOMOBILES (CIP, NOM_CAR)
      on delete restrict on update restrict;

