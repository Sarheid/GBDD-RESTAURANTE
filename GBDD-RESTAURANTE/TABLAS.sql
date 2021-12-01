/*==============================================================*/
/* Table: CHEF                                                  */
/*==============================================================*/
create table CHEF (
ID_CHEF serial not null,
ID_RESTAURANTE int4 null,
CI_CHEF varchar(10) not null,
NOMBRE_CHEF varchar(60) not null,
APELLIDO_CHEF varchar(60) not null,
TELF_CHEF varchar(10) not null,
DIRECCION_CHEF varchar(60) not null,
constraint PK_CHEF primary key (ID_CHEF)
);

/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE (
ID_CLIENTE serial not null,
NOMBRE_CLIENTE varchar(60) not null,
APELLIDO_CLIENTE varchar(60) not null,
CI_CLIENTE varchar(60) not null,
TELF_CLIENTE varchar(10),
CORREO_CLIENTE varchar(60),
constraint PK_CLIENTE primary key (ID_CLIENTE)
);


/*==============================================================*/
/* Table: DETALLE                                               */
/*==============================================================*/
create table DETALLE (
ID_FACTURA int4 null,
ID_MENU int4 null,
CANT_PRODUCTO integer not null,
PRECIO_PRODUCTO float,
TOTAL_PRODUCTO float,
DETALLLE_FACTURA varchar(100) not null
);

/*==============================================================*/
/* Table: FACTURA                                               */
/*==============================================================*/
create table FACTURA (
ID_FACTURA serial not null,
ID_CLIENTE int4 null,
ID_RESTAURANTE int4 null,
TOTAL_FACTURA float null,
FECHA_FACTURA date not null,
constraint PK_FACTURA primary key (ID_FACTURA)
);

/*==============================================================*/
/* Table: MATERIAL                                              */
/*==============================================================*/
create table MATERIAL (
ID_MATERIAL serial not null,
ID_RESTAURANTE int4 null,
NOMBRE_MATERIAL varchar(60) not null,
CANTIDAD_MATERIAL varchar(60) not null,
FECHA_MATERIAL date not null,
constraint PK_MATERIAL primary key (ID_MATERIAL)
);

/*==============================================================*/
/* Table: MENU                                                  */
/*==============================================================*/
create table MENU (
ID_MENU serial not null,
NOMBRE_MENU varchar(60) not null,
PRECIOPROPIO_MENU float not null,
COSTO_MENU float not null,
DESCRIPCION_MENU varchar(200),
constraint PK_MENU primary key (ID_MENU)
);

/*==============================================================*/
/* Table: MESAS                                                 */
/*==============================================================*/
create table MESAS (
ID_MESAS serial not null,
ID_MESERO int4 null,
ID_RESERVACION int4 null,
constraint PK_MESAS primary key (ID_MESAS)
);

/*==============================================================*/
/* Table: MESERO                                                */
/*==============================================================*/
create table MESERO (
ID_MESERO serial not null,
ID_RESTAURANTE int4 null,
CI_MESERO varchar(10) not null,
NOMBRE_MESERO varchar(60) not null,
APELLIDO_MESERO varchar(60) not null,
TELF_MESERO varchar(10) not null,
DIRECCION_MESERO varchar(60) not null,
constraint PK_MESERO primary key (ID_MESERO)
);

/*==============================================================*/
/* Table: RESERVACION                                           */
/*==============================================================*/
create table RESERVACION (
ID_RESERVACION serial not null,
ID_CLIENTE int4 null,
EST_RESERVACION varchar(10) not null,
ANTI_RESERVACION boolean not null,
ID_MESAS serial not null, 
MESA_RESERVACION varchar(100) not null,
constraint PK_RESERVACION primary key (ID_RESERVACION)
);

/*==============================================================*/
/* Table: RESTAURANTE                                           */
/*==============================================================*/
create table RESTAURANTE (
ID_RESTAURANTE serial not null,
NOMBRE_RESTAURANTE varchar(60) not null,
UBI_RESTAURANTE varchar(60) not null,
GER_RESTAURANTE varchar(60) not null,
TELF_RESTAURANTE varchar(60) not null,
constraint PK_RESTAURANTE primary key (ID_RESTAURANTE)
);