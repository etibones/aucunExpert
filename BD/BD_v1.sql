/*==============================================================*/
/* Nom de SGBD :  PostgreSQL 9.x                                */
/* Date de création :  2018-05-24 13:15:07                      */
/*==============================================================*/

/*-----------------------------Creation Schémas-----------------------------*/
drop SCHEMA ProjetS3 CASCADE ;

CREATE SCHEMA ProjetS3 ;

set SEARCH_PATH = ProjetS3;
/*----------------------------------------------------------*/

drop index PEUT_AVOIR_FK CASCADE;

drop index CHAR_PK CASCADE;

drop table "CHAR" CASCADE;

drop index DROITS2_FK CASCADE;

drop index DROITS_FK CASCADE;

drop index DROITS_PK CASCADE;

drop table DROITS CASCADE;

drop index EVENEMENTS_PK CASCADE;

drop table EVENEMENTS CASCADE;

drop index LOG2_FK CASCADE;

drop index LOG_FK CASCADE;

drop index LOG_PK CASCADE;

drop table LOG CASCADE;

drop index FAIT_PARTIT_FK CASCADE;

drop index OFFRES_PK CASCADE;

drop table OFFRES CASCADE;

drop index PRIVILEGES_PK CASCADE;

drop table PRIVILEGES CASCADE;

drop index TRAGET2_FK CASCADE;

drop index TRAGET_FK CASCADE;

drop index TRAGET_PK CASCADE;

drop table TRAGET CASCADE;

drop index USAGER_PK CASCADE;

drop table USAGER CASCADE;

drop index VILLE_PK CASCADE;

drop table VILLE CASCADE;

/*==============================================================*/
/* Table : "CHAR"                                               */
/*==============================================================*/
create table "CHAR" (
   ID_CHAR              SERIAL               not null,
   CIP                  INT4                 null,
   LIBELLE_CHAR         TEXT                 null,
   MARQUE               TEXT                 null,
   NB_PLACES_CHAR       INT4                 null,
   BAGGAGES             TEXT                 null,
   constraint PK_CHAR primary key (ID_CHAR)
);

/*==============================================================*/
/* Index : CHAR_PK                                              */
/*==============================================================*/
create unique index CHAR_PK on "CHAR" (
   ID_CHAR
);

/*==============================================================*/
/* Index : PEUT_AVOIR_FK                                        */
/*==============================================================*/
create  index PEUT_AVOIR_FK on "CHAR" (
   CIP
);

/*==============================================================*/
/* Table : DROITS                                               */
/*==============================================================*/
create table DROITS (
   CIP                  INT4                 not null,
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
   ID_EVENEMENT         INT4                 not null,
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
   CIP                  INT4                 not null,
   ID_EVENEMENT         INT4                 not null,
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
   ID_CHAR              INT4                 not null,
   ID_OFFRE             SERIAL               not null,
   LIBELLE_OFFRE        TEXT                 null,
   DATEPRESENTEMENT     DATE                 null,
   DATEOFFRE            DATE                 null,
   constraint PK_OFFRES primary key (ID_CHAR, ID_OFFRE)
);

/*==============================================================*/
/* Index : OFFRES_PK                                            */
/*==============================================================*/
create unique index OFFRES_PK on OFFRES (
   ID_CHAR,
   ID_OFFRE
);

/*==============================================================*/
/* Index : FAIT_PARTIT_FK                                       */
/*==============================================================*/
create  index FAIT_PARTIT_FK on OFFRES (
   ID_CHAR
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
/* Table : TRAGET                                               */
/*==============================================================*/
create table TRAGET (
   ID_CHAR              INT4                 not null,
   ID_OFFRE             INT4                 not null,
   ID_VILLE             INT4                 not null,
   constraint PK_TRAGET primary key (ID_CHAR, ID_OFFRE, ID_VILLE)
);

/*==============================================================*/
/* Index : TRAGET_PK                                            */
/*==============================================================*/
create unique index TRAGET_PK on TRAGET (
   ID_CHAR,
   ID_OFFRE,
   ID_VILLE
);

/*==============================================================*/
/* Index : TRAGET_FK                                            */
/*==============================================================*/
create  index TRAGET_FK on TRAGET (
   ID_CHAR,
   ID_OFFRE
);

/*==============================================================*/
/* Index : TRAGET2_FK                                           */
/*==============================================================*/
create  index TRAGET2_FK on TRAGET (
   ID_VILLE
);

/*==============================================================*/
/* Table : USAGER                                               */
/*==============================================================*/
create table USAGER (
   CIP                  SERIAL               not null,
   NOM_USAGER           TEXT                 null,
   PRENOM_USAGER        TEXT                 null,
   constraint PK_USAGER primary key (CIP)
);

/*==============================================================*/
/* Index : USAGER_PK                                            */
/*==============================================================*/
create unique index USAGER_PK on USAGER (
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

alter table "CHAR"
   add constraint FK_CHAR_PEUT_AVOI_USAGER foreign key (CIP)
references USAGER (CIP)
on delete restrict on update restrict;

alter table DROITS
   add constraint FK_DROITS_DROITS_USAGER foreign key (CIP)
references USAGER (CIP)
on delete restrict on update restrict;

alter table DROITS
   add constraint FK_DROITS_DROITS2_PRIVILEG foreign key (ID_PRIVILEGE)
references PRIVILEGES (ID_PRIVILEGE)
on delete restrict on update restrict;

alter table LOG
   add constraint FK_LOG_LOG_USAGER foreign key (CIP)
references USAGER (CIP)
on delete restrict on update restrict;

alter table LOG
   add constraint FK_LOG_LOG2_EVENEMEN foreign key (ID_EVENEMENT)
references EVENEMENTS (ID_EVENEMENT)
on delete restrict on update restrict;

alter table OFFRES
   add constraint FK_OFFRES_FAIT_PART_CHAR foreign key (ID_CHAR)
references "CHAR" (ID_CHAR)
on delete restrict on update restrict;

alter table TRAGET
   add constraint FK_TRAGET_TRAGET_OFFRES foreign key (ID_CHAR, ID_OFFRE)
references OFFRES (ID_CHAR, ID_OFFRE)
on delete restrict on update restrict;

alter table TRAGET
   add constraint FK_TRAGET_TRAGET2_VILLE foreign key (ID_VILLE)
references VILLE (ID_VILLE)
on delete restrict on update restrict;
