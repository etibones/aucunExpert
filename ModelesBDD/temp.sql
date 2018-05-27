/*==============================================================*/
/* Nom de SGBD :  PostgreSQL 9.x                                */
/* Date de création :  2018-05-25 11:05:01                      */
/*==============================================================*/


drop index PEUT_AVOIR_FK;

drop index AUTOMOBILE_PK;

drop table AUTOMOBILE;

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

drop index TRAGET2_FK;

drop index TRAGET_FK;

drop index TRAGET_PK;

drop table TRAGET;

drop index USAGER_PK;

drop table USAGER;

drop index VILLE_PK;

drop table VILLE;

/*==============================================================*/
/* Table : AUTOMOBILE                                           */
/*==============================================================*/
create table AUTOMOBILE (
   CIP                  INT4                 not null,
   ID_CHAR              SERIAL               not null,
   LIBELLE_CHAR         TEXT                 null,
   MARQUE               TEXT                 null,
   NB_PLACES_CHAR       INT4                 null,
   BAGGAGES             TEXT                 null,
   constraint PK_AUTOMOBILE primary key (CIP, ID_CHAR)
);

/*==============================================================*/
/* Index : AUTOMOBILE_PK                                        */
/*==============================================================*/
create unique index AUTOMOBILE_PK on AUTOMOBILE (
CIP,
ID_CHAR
);

/*==============================================================*/
/* Index : PEUT_AVOIR_FK                                        */
/*==============================================================*/
create  index PEUT_AVOIR_FK on AUTOMOBILE (
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
   CIP                  INT4                 not null,
   ID_CHAR              INT4                 not null,
   ID_OFFRE             SERIAL               not null,
   LIBELLE_OFFRE        TEXT                 null,
   DATEPRESENTEMENT     DATE                 null,
   DATEOFFRE            DATE                 null,
   constraint PK_OFFRES primary key (CIP, ID_CHAR, ID_OFFRE)
);

/*==============================================================*/
/* Index : OFFRES_PK                                            */
/*==============================================================*/
create unique index OFFRES_PK on OFFRES (
CIP,
ID_CHAR,
ID_OFFRE
);

/*==============================================================*/
/* Index : FAIT_PARTIT_FK                                       */
/*==============================================================*/
create  index FAIT_PARTIT_FK on OFFRES (
CIP,
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
/* Table : RESERVER                                             */
/*==============================================================*/
create table RESERVER (
   CIP                  INT4                 not null,
   OFF_CIP              INT4                 not null,
   OFF_ID_CHAR          INT4                 not null,
   ID_OFFRE             INT4                 not null,
   AUT_CIP              INT4                 not null,
   ID_CHAR              INT4                 not null,
   DATE_RESERVATION     DATE                 not null,
   CONFIRMATION         BOOL                 not null,
   constraint PK_RESERVER primary key (OFF_CIP, OFF_ID_CHAR, AUT_CIP, CIP, ID_OFFRE, ID_CHAR)
);

/*==============================================================*/
/* Index : RESERVER_PK                                          */
/*==============================================================*/
create unique index RESERVER_PK on RESERVER (
OFF_CIP,
OFF_ID_CHAR,
AUT_CIP,
CIP,
ID_OFFRE,
ID_CHAR
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
OFF_ID_CHAR,
ID_OFFRE
);

/*==============================================================*/
/* Index : RESERVER3_FK                                         */
/*==============================================================*/
create  index RESERVER3_FK on RESERVER (
AUT_CIP,
ID_CHAR
);

/*==============================================================*/
/* Table : TRAGET                                               */
/*==============================================================*/
create table TRAGET (
   CIP                  INT4                 not null,
   ID_CHAR              INT4                 not null,
   ID_OFFRE             INT4                 not null,
   ID_VILLE             INT4                 not null,
   constraint PK_TRAGET primary key (CIP, ID_CHAR, ID_OFFRE, ID_VILLE)
);

/*==============================================================*/
/* Index : TRAGET_PK                                            */
/*==============================================================*/
create unique index TRAGET_PK on TRAGET (
CIP,
ID_CHAR,
ID_OFFRE,
ID_VILLE
);

/*==============================================================*/
/* Index : TRAGET_FK                                            */
/*==============================================================*/
create  index TRAGET_FK on TRAGET (
CIP,
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

alter table AUTOMOBILE
   add constraint FK_AUTOMOBI_PEUT_AVOI_USAGER foreign key (CIP)
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
   add constraint FK_OFFRES_FAIT_PART_AUTOMOBI foreign key (CIP, ID_CHAR)
      references AUTOMOBILE (CIP, ID_CHAR)
      on delete restrict on update restrict;

alter table RESERVER
   add constraint FK_RESERVER_RESERVER_USAGER foreign key (CIP)
      references USAGER (CIP)
      on delete restrict on update restrict;

alter table RESERVER
   add constraint FK_RESERVER_RESERVER2_OFFRES foreign key (OFF_CIP, OFF_ID_CHAR, ID_OFFRE)
      references OFFRES (CIP, ID_CHAR, ID_OFFRE)
      on delete restrict on update restrict;

alter table RESERVER
   add constraint FK_RESERVER_RESERVER3_AUTOMOBI foreign key (AUT_CIP, ID_CHAR)
      references AUTOMOBILE (CIP, ID_CHAR)
      on delete restrict on update restrict;

alter table TRAGET
   add constraint FK_TRAGET_TRAGET_OFFRES foreign key (CIP, ID_CHAR, ID_OFFRE)
      references OFFRES (CIP, ID_CHAR, ID_OFFRE)
      on delete restrict on update restrict;

alter table TRAGET
   add constraint FK_TRAGET_TRAGET2_VILLE foreign key (ID_VILLE)
      references VILLE (ID_VILLE)
      on delete restrict on update restrict;

