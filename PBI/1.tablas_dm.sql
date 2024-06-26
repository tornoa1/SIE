USE DM_HE

IF OBJECT_ID('DIM_SP') IS NOT NULL
BEGIN
  drop table DIM_SP;
END;

create table DIM_SP (
cod_sp varchar(3) NOT NULL,	
nombre varchar(30) NULL				
);

IF OBJECT_ID('DIM_SEDE') IS NOT NULL
BEGIN
  drop table DIM_SEDE;
END

create table DIM_SEDE (
cod_sede char(2) NOT NULL,
nombre_sede varchar(30)
);

IF OBJECT_ID('DIM_RECLUTA') IS NOT NULL
BEGIN
  drop table DIM_RECLUTA;
END

create table DIM_RECLUTA (
cod_recluta char(2) NOT NULL,
nombre_recluta varchar(30)
);

IF OBJECT_ID('DIM_PERSONAL') IS NOT NULL
BEGIN
  drop table DIM_PERSONAL;
END

create table DIM_PERSONAL(
codigo char(5) NOT NULL,
apellido_pat varchar(30) NULL,
apellido_mat varchar(30) NULL,
nombres varchar(30) NULL,
fec_inicio date NULL,
cod_sede char(2) NOT NULL,
cargo varchar(100),
cod_recluta char(2),
genero char(1),
nombre_sp char(15)
)

IF OBJECT_ID('DIM_TIEMPO') IS NOT NULL
BEGIN
  drop table DIM_TIEMPO;
END

create table DIM_TIEMPO (
fecha date not null,
anho  int,
nromes int,
nrodia int,
nombre_mes varchar(20),
mes_corto char(3),
trimestre int,
nombre_dia varchar(20),
fecha_id varchar(8)
);

IF OBJECT_ID('FACT_HE') IS NOT NULL
BEGIN
  drop table FACT_HE;
END

create table FACT_HE (
cod_empleado varchar(5) not null,
mes_pagado varchar(8) null,
mes_laborado varchar(8) null,
cod_sede varchar(2) null,
cargo varchar(100) null,
cod_spx varchar(3) null,
un_he_25 decimal(10,2) null,
un_he_35 decimal(10,2) null,
un_he_100 decimal(10,2) null,
un_he_btn decimal(10,2) null,
mon_he_25 decimal(10,2) null,
mon_he_35 decimal(10,2) null,
mon_he_100 decimal(10,2) null,
mon_he_btn decimal(10,2) null,
dias_ausente int
)

