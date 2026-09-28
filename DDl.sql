/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2012                    */
/* Created on:     5/11/2026 1:01:10 PM                         */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ASSIGNEQUIPMENT') and o.name = 'FK_ASSIGNEQ_ASSIGNEQU_SESSION')
alter table ASSIGNEQUIPMENT
   drop constraint FK_ASSIGNEQ_ASSIGNEQU_SESSION
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ASSIGNEQUIPMENT') and o.name = 'FK_ASSIGNEQ_ASSIGNEQU_PROFESSI')
alter table ASSIGNEQUIPMENT
   drop constraint FK_ASSIGNEQ_ASSIGNEQU_PROFESSI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ASSIGNEQUIPMENT') and o.name = 'FK_ASSIGNEQ_ASSIGNEQU_PROJECT')
alter table ASSIGNEQUIPMENT
   drop constraint FK_ASSIGNEQ_ASSIGNEQU_PROJECT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('BOOKING') and o.name = 'FK_BOOKING_PLACES_CLIENT')
alter table BOOKING
   drop constraint FK_BOOKING_PLACES_CLIENT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('EXCUTE') and o.name = 'FK_EXCUTE_EXCUTE_PROJECT')
alter table EXCUTE
   drop constraint FK_EXCUTE_EXCUTE_PROJECT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('EXCUTE') and o.name = 'FK_EXCUTE_EXCUTE2_PROFESSI')
alter table EXCUTE
   drop constraint FK_EXCUTE_EXCUTE2_PROFESSI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('INVOLVE') and o.name = 'FK_INVOLVE_INVOLVE_PROFESSI')
alter table INVOLVE
   drop constraint FK_INVOLVE_INVOLVE_PROFESSI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('INVOLVE') and o.name = 'FK_INVOLVE_INVOLVE2_SESSION')
alter table INVOLVE
   drop constraint FK_INVOLVE_INVOLVE2_SESSION
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('MANAGE') and o.name = 'FK_MANAGE_MANAGE_STUDIO')
alter table MANAGE
   drop constraint FK_MANAGE_MANAGE_STUDIO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('MANAGE') and o.name = 'FK_MANAGE_MANAGE2_SUPERVIS')
alter table MANAGE
   drop constraint FK_MANAGE_MANAGE2_SUPERVIS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PROFESSIONAL') and o.name = 'FK_PROFESSI_REGISTER_SUPERVIS')
alter table PROFESSIONAL
   drop constraint FK_PROFESSI_REGISTER_SUPERVIS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PROJECT') and o.name = 'FK_PROJECT_IS_BOOKING')
alter table PROJECT
   drop constraint FK_PROJECT_IS_BOOKING
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SESSION') and o.name = 'FK_SESSION_RESERVE2_BOOKING')
alter table SESSION
   drop constraint FK_SESSION_RESERVE2_BOOKING
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TAKEPLACE') and o.name = 'FK_TAKEPLAC_TAKEPLACE_STUDIO')
alter table TAKEPLACE
   drop constraint FK_TAKEPLAC_TAKEPLACE_STUDIO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TAKEPLACE') and o.name = 'FK_TAKEPLAC_TAKEPLACE_SESSION')
alter table TAKEPLACE
   drop constraint FK_TAKEPLAC_TAKEPLACE_SESSION
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('USEDIN') and o.name = 'FK_USEDIN_USEDIN_SESSION')
alter table USEDIN
   drop constraint FK_USEDIN_USEDIN_SESSION
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('USEDIN') and o.name = 'FK_USEDIN_USEDIN2_EQUIPEME')
alter table USEDIN
   drop constraint FK_USEDIN_USEDIN2_EQUIPEME
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('WING') and o.name = 'FK_WING_RELATIONS_STUDIO')
alter table WING
   drop constraint FK_WING_RELATIONS_STUDIO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ASSIGNEQUIPMENT')
            and   name  = 'ASSIGNEQUIPMENT3_FK'
            and   indid > 0
            and   indid < 255)
   drop index ASSIGNEQUIPMENT.ASSIGNEQUIPMENT3_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ASSIGNEQUIPMENT')
            and   name  = 'ASSIGNEQUIPMENT2_FK'
            and   indid > 0
            and   indid < 255)
   drop index ASSIGNEQUIPMENT.ASSIGNEQUIPMENT2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ASSIGNEQUIPMENT')
            and   name  = 'ASSIGNEQUIPMENT_FK'
            and   indid > 0
            and   indid < 255)
   drop index ASSIGNEQUIPMENT.ASSIGNEQUIPMENT_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ASSIGNEQUIPMENT')
            and   type = 'U')
   drop table ASSIGNEQUIPMENT
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('BOOKING')
            and   name  = 'PLACES_F'
            and   indid > 0
            and   indid < 255)
   drop index BOOKING.PLACES_F
go

if exists (select 1
            from  sysobjects
           where  id = object_id('BOOKING')
            and   type = 'U')
   drop table BOOKING
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CLIENT')
            and   type = 'U')
   drop table CLIENT
go

if exists (select 1
            from  sysobjects
           where  id = object_id('EQUIPEMENT')
            and   type = 'U')
   drop table EQUIPEMENT
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('EXCUTE')
            and   name  = 'EXCUTE2_FK'
            and   indid > 0
            and   indid < 255)
   drop index EXCUTE.EXCUTE2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('EXCUTE')
            and   name  = 'EXCUTE_FK'
            and   indid > 0
            and   indid < 255)
   drop index EXCUTE.EXCUTE_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('EXCUTE')
            and   type = 'U')
   drop table EXCUTE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('INVOLVE')
            and   name  = 'INVOLVE2_FK'
            and   indid > 0
            and   indid < 255)
   drop index INVOLVE.INVOLVE2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('INVOLVE')
            and   name  = 'INVOLVE_FK'
            and   indid > 0
            and   indid < 255)
   drop index INVOLVE.INVOLVE_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('INVOLVE')
            and   type = 'U')
   drop table INVOLVE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('MANAGE')
            and   name  = 'MANAGE2_FK'
            and   indid > 0
            and   indid < 255)
   drop index MANAGE.MANAGE2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('MANAGE')
            and   name  = 'MANAGE_FK'
            and   indid > 0
            and   indid < 255)
   drop index MANAGE.MANAGE_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('MANAGE')
            and   type = 'U')
   drop table MANAGE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PROFESSIONAL')
            and   name  = 'REGISTER_FK'
            and   indid > 0
            and   indid < 255)
   drop index PROFESSIONAL.REGISTER_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PROFESSIONAL')
            and   type = 'U')
   drop table PROFESSIONAL
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PROJECT')
            and   name  = 'IS_FK'
            and   indid > 0
            and   indid < 255)
   drop index PROJECT.IS_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PROJECT')
            and   type = 'U')
   drop table PROJECT
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SESSION')
            and   name  = 'RESERVE2_FK'
            and   indid > 0
            and   indid < 255)
   drop index SESSION.RESERVE2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SESSION')
            and   type = 'U')
   drop table SESSION
go

if exists (select 1
            from  sysobjects
           where  id = object_id('STUDIO')
            and   type = 'U')
   drop table STUDIO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SUPERVISOR')
            and   type = 'U')
   drop table SUPERVISOR
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TAKEPLACE')
            and   name  = 'TAKEPLACE2_FK'
            and   indid > 0
            and   indid < 255)
   drop index TAKEPLACE.TAKEPLACE2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TAKEPLACE')
            and   name  = 'TAKEPLACE_FK'
            and   indid > 0
            and   indid < 255)
   drop index TAKEPLACE.TAKEPLACE_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TAKEPLACE')
            and   type = 'U')
   drop table TAKEPLACE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('USEDIN')
            and   name  = 'USEDIN2_FK'
            and   indid > 0
            and   indid < 255)
   drop index USEDIN.USEDIN2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('USEDIN')
            and   name  = 'USEDIN_FK'
            and   indid > 0
            and   indid < 255)
   drop index USEDIN.USEDIN_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('USEDIN')
            and   type = 'U')
   drop table USEDIN
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('WING')
            and   name  = 'RELATIONSHIP_5_FK'
            and   indid > 0
            and   indid < 255)
   drop index WING.RELATIONSHIP_5_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('WING')
            and   type = 'U')
   drop table WING
go

/*==============================================================*/
/* Table: ASSIGNEQUIPMENT                                       */
/*==============================================================*/
create table ASSIGNEQUIPMENT (
   SESSIONID            int                  not null,
   ASSIGNID             int                  not null,
   TITLE                varchar(255)         not null,
   constraint PK_ASSIGNEQUIPMENT primary key (SESSIONID, ASSIGNID, TITLE)
)
go

/*==============================================================*/
/* Index: ASSIGNEQUIPMENT_FK                                    */
/*==============================================================*/
create index ASSIGNEQUIPMENT_FK on ASSIGNEQUIPMENT (
SESSIONID ASC
)
go

/*==============================================================*/
/* Index: ASSIGNEQUIPMENT2_FK                                   */
/*==============================================================*/
create index ASSIGNEQUIPMENT2_FK on ASSIGNEQUIPMENT (
ASSIGNID ASC
)
go

/*==============================================================*/
/* Index: ASSIGNEQUIPMENT3_FK                                   */
/*==============================================================*/
create index ASSIGNEQUIPMENT3_FK on ASSIGNEQUIPMENT (
TITLE ASC
)
go

/*==============================================================*/
/* Table: BOOKING                                               */
/*==============================================================*/
create table BOOKING (
   CLIENTID             int                  not null,
   BOOKID               int                  not null,
   BOOKERNAME           varchar(255)         null,
   BOOKDATE             datetime             null,
   DEPOSITEAMOUNT       float                null,
   BOOKSTATUS           varchar(255)         null,
   constraint PK_BOOKING primary key (BOOKID)
)
go

/*==============================================================*/
/* Index: PLACES_F                                              */
/*==============================================================*/
create index PLACES_F on BOOKING (
CLIENTID ASC
)
go

/*==============================================================*/
/* Table: CLIENT                                                */
/*==============================================================*/
create table CLIENT (
   NAME                 varchar(255)         null,
   CLIENTID             int                  not null,
   COMPANYNAME          varchar(255)         null,
   CONTACTNAME          varchar(255)         null,
   CLIENTEMAIL          varchar(255)         null,
   PHONE                varchar(255)         null,
   constraint PK_CLIENT primary key nonclustered (CLIENTID)
)
go

/*==============================================================*/
/* Table: EQUIPEMENT                                            */
/*==============================================================*/
create table EQUIPEMENT (
   SERIALNUMBER         int                  not null,
   CONDITION            varchar(255)         null,
   RESPONSIBILTY        varchar(255)         null,
   CATEGORY             varchar(255)         null,
   MODEL                varchar(255)         null,
   constraint PK_EQUIPEMENT primary key nonclustered (SERIALNUMBER)
)
go

/*==============================================================*/
/* Table: EXCUTE                                                */
/*==============================================================*/
create table EXCUTE (
   TITLE                varchar(255)         not null,
   EXCUTEID             int                  not null,
   constraint PK_EXCUTE primary key (TITLE, EXCUTEID)
)
go

/*==============================================================*/
/* Index: EXCUTE_FK                                             */
/*==============================================================*/
create index EXCUTE_FK on EXCUTE (
TITLE ASC
)
go

/*==============================================================*/
/* Index: EXCUTE2_FK                                            */
/*==============================================================*/
create index EXCUTE2_FK on EXCUTE (
EXCUTEID ASC
)
go

/*==============================================================*/
/* Table: INVOLVE                                               */
/*==============================================================*/
create table INVOLVE (
   INVOLVEID            int                  not null,
   SESSIONID            int                  not null,
   SET_DATE             datetime             null,
   constraint PK_INVOLVE primary key (INVOLVEID, SESSIONID)
)
go

/*==============================================================*/
/* Index: INVOLVE_FK                                            */
/*==============================================================*/
create index INVOLVE_FK on INVOLVE (
INVOLVEID ASC
)
go

/*==============================================================*/
/* Index: INVOLVE2_FK                                           */
/*==============================================================*/
create index INVOLVE2_FK on INVOLVE (
SESSIONID ASC
)
go

/*==============================================================*/
/* Table: MANAGE                                                */
/*==============================================================*/
create table MANAGE (
   STUDIOID             int                  not null,
   SUPERID              int                  not null,
   constraint PK_MANAGE primary key (STUDIOID, SUPERID)
)
go

/*==============================================================*/
/* Index: MANAGE_FK                                             */
/*==============================================================*/
create index MANAGE_FK on MANAGE (
STUDIOID ASC
)
go

/*==============================================================*/
/* Index: MANAGE2_FK                                            */
/*==============================================================*/
create index MANAGE2_FK on MANAGE (
SUPERID ASC
)
go

/*==============================================================*/
/* Table: PROFESSIONAL                                          */
/*==============================================================*/
create table PROFESSIONAL (
   PROFNAME             varchar(255)         null,
   PRODID               int                  not null,
   SUPERID              int                  not null,
   PROFEMAIL            varchar(255)         null,
   ROLE                 varchar(255)         null,
   constraint PK_PROFESSIONAL primary key nonclustered (PRODID)
)
go

/*==============================================================*/
/* Index: REGISTER_FK                                           */
/*==============================================================*/
create index REGISTER_FK on PROFESSIONAL (
SUPERID ASC
)
go

/*==============================================================*/
/* Table: PROJECT                                               */
/*==============================================================*/
create table PROJECT (
   TITLE                varchar(255)         not null,
   BOOKID               int                  null,
   BUDGET               float                null,
   DEADLINE             datetime             null,
   STATUSPROJECT        varchar(255)         null,
   constraint PK_PROJECT primary key nonclustered (TITLE)
)
go

/*==============================================================*/
/* Index: IS_FK                                                 */
/*==============================================================*/
create index IS_FK on PROJECT (
BOOKID ASC
)
go

/*==============================================================*/
/* Table: SESSION                                               */
/*==============================================================*/
create table SESSION (
   SESSIONID            int                  not null,
   BOOKID               int                  null,
   DATE                 datetime             null,
   SESSION_STATUS       varchar(255)         null,
   START_TIME           datetime             null,
   END_TIME             datetime             null,
   DURATION             datetime             null,
   constraint PK_SESSION primary key nonclustered (SESSIONID)
)
go

/*==============================================================*/
/* Index: RESERVE2_FK                                           */
/*==============================================================*/
create index RESERVE2_FK on SESSION (
BOOKID ASC
)
go

/*==============================================================*/
/* Table: STUDIO                                                */
/*==============================================================*/
create table STUDIO (
   STUDIOID             int                  not null,
   SOUNDRECORDTYPE      varchar(255)         null,
   GREENSCREEN          varchar(255)         null,
   TYPE                 varchar(255)         null,
   IS_AVALIABLE         varchar(255)         null,
   constraint PK_STUDIO primary key nonclustered (STUDIOID)
)
go

/*==============================================================*/
/* Table: SUPERVISOR                                            */
/*==============================================================*/
create table SUPERVISOR (
   SUPERID              int                  not null,
   RESPONSIBILITY       varchar(255)         null,
   SUPERVISORNAME       varchar(255)         null,
   EMPLOYEEID           int                  null,
   constraint PK_SUPERVISOR primary key nonclustered (SUPERID)
)
go

/*==============================================================*/
/* Table: TAKEPLACE                                             */
/*==============================================================*/
create table TAKEPLACE (
   STUDIOID             int                  not null,
   SESSIONID            int                  not null,
   constraint PK_TAKEPLACE primary key (STUDIOID, SESSIONID)
)
go

/*==============================================================*/
/* Index: TAKEPLACE_FK                                          */
/*==============================================================*/
create index TAKEPLACE_FK on TAKEPLACE (
STUDIOID ASC
)
go

/*==============================================================*/
/* Index: TAKEPLACE2_FK                                         */
/*==============================================================*/
create index TAKEPLACE2_FK on TAKEPLACE (
SESSIONID ASC
)
go

/*==============================================================*/
/* Table: USEDIN                                                */
/*==============================================================*/
create table USEDIN (
   SESSIONID            int                  not null,
   SERIALNUMBER         int                  not null,
   constraint PK_USEDIN primary key (SESSIONID, SERIALNUMBER)
)
go

/*==============================================================*/
/* Index: USEDIN_FK                                             */
/*==============================================================*/
create index USEDIN_FK on USEDIN (
SESSIONID ASC
)
go

/*==============================================================*/
/* Index: USEDIN2_FK                                            */
/*==============================================================*/
create index USEDIN2_FK on USEDIN (
SERIALNUMBER ASC
)
go

/*==============================================================*/
/* Table: WING                                                  */
/*==============================================================*/
create table WING (
   WINGID               int                  not null,
   STUDIOID             int                  not null,
   WINGNAME             varchar(255)         null,
   constraint PK_WING primary key nonclustered (WINGID)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_5_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_5_FK on WING (
STUDIOID ASC
)
go

alter table ASSIGNEQUIPMENT
   add constraint FK_ASSIGNEQ_ASSIGNEQU_SESSION foreign key (SESSIONID)
      references SESSION (SESSIONID)
go

alter table ASSIGNEQUIPMENT
   add constraint FK_ASSIGNEQ_ASSIGNEQU_PROFESSI foreign key (ASSIGNID)
      references PROFESSIONAL (PRODID)
go

alter table ASSIGNEQUIPMENT
   add constraint FK_ASSIGNEQ_ASSIGNEQU_PROJECT foreign key (TITLE)
      references PROJECT (TITLE)
go

alter table BOOKING
   add constraint FK_BOOKING_PLACES_CLIENT foreign key (CLIENTID)
      references CLIENT (CLIENTID)
go

alter table EXCUTE
   add constraint FK_EXCUTE_EXCUTE_PROJECT foreign key (TITLE)
      references PROJECT (TITLE)
go

alter table EXCUTE
   add constraint FK_EXCUTE_EXCUTE2_PROFESSI foreign key (EXCUTEID)
      references PROFESSIONAL (PRODID)
go

alter table INVOLVE
   add constraint FK_INVOLVE_INVOLVE_PROFESSI foreign key (INVOLVEID)
      references PROFESSIONAL (PRODID)
go

alter table INVOLVE
   add constraint FK_INVOLVE_INVOLVE2_SESSION foreign key (SESSIONID)
      references SESSION (SESSIONID)
go

alter table MANAGE
   add constraint FK_MANAGE_MANAGE_STUDIO foreign key (STUDIOID)
      references STUDIO (STUDIOID)
go

alter table MANAGE
   add constraint FK_MANAGE_MANAGE2_SUPERVIS foreign key (SUPERID)
      references SUPERVISOR (SUPERID)
go

alter table PROFESSIONAL
   add constraint FK_PROFESSI_REGISTER_SUPERVIS foreign key (SUPERID)
      references SUPERVISOR (SUPERID)
go

alter table PROJECT
   add constraint FK_PROJECT_IS_BOOKING foreign key (BOOKID)
      references BOOKING (BOOKID)
go

alter table SESSION
   add constraint FK_SESSION_RESERVE2_BOOKING foreign key (BOOKID)
      references BOOKING (BOOKID)
go

alter table TAKEPLACE
   add constraint FK_TAKEPLAC_TAKEPLACE_STUDIO foreign key (STUDIOID)
      references STUDIO (STUDIOID)
go

alter table TAKEPLACE
   add constraint FK_TAKEPLAC_TAKEPLACE_SESSION foreign key (SESSIONID)
      references SESSION (SESSIONID)
go

alter table USEDIN
   add constraint FK_USEDIN_USEDIN_SESSION foreign key (SESSIONID)
      references SESSION (SESSIONID)
go

alter table USEDIN
   add constraint FK_USEDIN_USEDIN2_EQUIPEME foreign key (SERIALNUMBER)
      references EQUIPEMENT (SERIALNUMBER)
go

alter table WING
   add constraint FK_WING_RELATIONS_STUDIO foreign key (STUDIOID)
      references STUDIO (STUDIOID)
go