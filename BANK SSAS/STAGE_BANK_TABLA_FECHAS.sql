create table STG_Fechas
(
        Sk_Fecha int not null primary key,
		Fecha date not null, 
	    Anio smallint not null,
	    Semestre nvarchar(30),
	    Trimestre nvarchar(30),
		Mes nvarchar(30),
	    DiaSemana nvarchar(30),
		NumSemestreAnio smallint,
		NumTrimestreAnio smallint,
		NumMesAnio smallint,
		NumDiaSemana smallint,
		NumDiaMes smallint
)
GO
