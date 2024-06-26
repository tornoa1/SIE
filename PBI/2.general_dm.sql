USE DM_HE;

truncate table DIM_SP
insert into DIM_SP values ('SP0','SIN AFP')
insert into DIM_SP values ('SP1','AFP-1')
insert into DIM_SP values ('SP2','AFP-2')
insert into DIM_SP values ('SP3','AFP-3')
insert into DIM_SP values ('SP4','AFP-4')

truncate table DIM_SEDE
insert into DIM_SEDE values ('U1','Sede Central San Isidro')
insert into DIM_SEDE values ('U2','Sede de Producción')
insert into DIM_SEDE values ('U3','Sede de Distribución')

truncate table DIM_RECLUTA
insert into DIM_RECLUTA values ('R1','Portal Web')
insert into DIM_RECLUTA values ('R2','Referencia Interna')
insert into DIM_RECLUTA values ('R3','Agencia')
insert into DIM_RECLUTA values ('R4','Bolsa de Trabajo')

