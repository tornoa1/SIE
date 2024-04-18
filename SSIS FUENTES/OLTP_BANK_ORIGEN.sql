USE master;
go

IF( EXISTS ( SELECT name FROM master.sys.databases WHERE name = 'OLTP_BANK' ) )
BEGIN
	DROP DATABASE OLTP_BANK;
END;
go

CREATE DATABASE OLTP_BANK;
go

USE OLTP_BANK;
go

CREATE TABLE CLIENTE_CLASICO(
	codigo				VARCHAR(10),
	ape_paterno			VARCHAR(25),
	spe_materno			VARCHAR(25),
	nombre				VARCHAR(30),
	dni					VARCHAR(10),
	ciudad				VARCHAR(30),
	direccion			VARCHAR(50),
	telefono			VARCHAR(20),
	email				VARCHAR(50)
);
GO

INSERT INTO CLIENTE_CLASICO VALUES 
('CC-00001', 'GARCIA', 'MENDOZA', 'MARIA ELENA', '71012378', 'Lima', 'Av. Arenales 123', '912345678', 'maria.garcia@gmail.com'),
('CC-00002', 'SANCHEZ', 'TORRES', 'CARLOS ALBERTO', '71023456', 'Trujillo', 'Av. Mansiche 456', '923456789', 'carlos.sanchez@yahoo.com'),
('CC-00003', 'CASTILLO', 'ROJAS', 'JUAN MANUEL', '71034567', 'Arequipa', 'Av. Ejemplo 789', '934567890', 'juan.castillo@hotmail.com'),
('CC-00004', 'RAMIREZ', 'HUAMAN', 'ANA LUCIA', '71045678', 'Cajamarca', 'Av. Huacariz 234', '945678901', 'ana.ramirez@gmail.com'),
('CC-00005', 'RODRIGUEZ', 'ARROYO', 'PEDRO JESUS', '71056789', 'Sullana', 'Av. Circunvalacion 567', '956789012', 'pedro.rodriguez@yahoo.com'),
('CC-00006', 'VASQUEZ', 'SALAZAR', 'FERNANDO RAUL', '71067890', 'Piura', 'Av. Loreto 789', '967890123', 'fernando.vasquez@hotmail.com'),
('CC-00007', 'GOMEZ', 'VALDIVIESO', 'MARIA ISABEL', '71078901', 'Lima', 'Av. Bolognesi 901', '978901234', 'maria.gomez@gmail.com'),
('CC-00008', 'SOTO', 'GARCIA', 'LUIS EDUARDO', '71089012', 'Huancayo', 'Av. Real 123', '989012345', 'luis.soto@yahoo.com'),
('CC-00009', 'FLORES', 'MORALES', 'JUANA PATRICIA', '71090123', 'Iquitos', 'Av. Próceres 456', '991234567', 'juana.flores@hotmail.com'),
('CC-00010', 'CHAVEZ', 'FLORES', 'JORGE LUIS', '71012345', 'Tacna', 'Av. Bolognesi 678', '912345678', 'jorge.chavez@gmail.com'),
('CC-00011', 'TORRES', 'GOMEZ', 'ANA CARMEN', '71023456', 'Juliaca', 'Av. Arequipa 789', '923456789', 'ana.torres@yahoo.com'),
('CC-00012', 'SALINAS', 'ROMERO', 'CARLOS ALFREDO', '71034567', 'Pucallpa', 'Av. Brasil 234', '934567890', 'carlos.salinas@gmail.com'),
('CC-00013', 'ARROYO', 'ARCE', 'MARIA ELENA', '71045678', 'Chimbote', 'Av. Grau 567', '945678901', 'maria.arroyo@hotmail.com'),
('CC-00014', 'MENDOZA', 'QUISPE', 'JORGE ANTONIO', '71056789', 'Ica', 'Av. Independencia 890', '956789012', 'jorge.mendoza@yahoo.com'),
('CC-00015', 'CASTILLO', 'SOTO', 'SANDRA ELIZABETH', '71067890', 'Ayacucho', 'Av. 28 de Julio 901', '967890123', 'sandra.castillo@gmail.com'),
('CC-00016', 'RAMIREZ', 'ARROYO', 'LUIS FERNANDO', '71078901', 'Cusco', 'Av. El Sol 234', '978901234', 'luis.ramirez@yahoo.com'),
('CC-00017', 'ROJAS', 'SALINAS', 'MARIA FERNANDA', '71089012', 'Lima', 'Av. Grau 567', '989012345', 'maria.rojas@hotmail.com'),
('CC-00018', 'GARCIA', 'RAMIREZ', 'CARLOS EDUARDO', '71090123', 'Huánuco', 'Av. 28 de Julio 901', '991234567', 'carlos.garcia@gmail.com'),
('CC-00019', 'SANCHEZ', 'GOMEZ', 'ROSA ANGELICA', '71012345', 'Tarapoto', 'Av. Circunvalacion 678', '912345678', 'rosa.sanchez@yahoo.com'),
('CC-00020', 'VALDIVIESO', 'TORRES', 'JORGE ANTONIO', '71023456', 'Trujillo', 'Av. España 789', '923456789', 'jorge.valdivieso@hotmail.com'),
('CC-00021', 'CASTILLO', 'SALINAS', 'ANA ISABEL', '71034567', 'Arequipa', 'Av. Independencia 123', '934567890', 'ana.castillo@gmail.com'),
('CC-00022', 'RODRIGUEZ', 'GARCIA', 'CARLOS ALBERTO', '71045678', 'Cajamarca', 'Av. Atahualpa 456', '945678901', 'carlos.rodriguez@yahoo.com'),
('CC-00023', 'SOTO', 'ROMERO', 'MARIA ELENA', '71056789', 'Sullana', 'Av. Bolognesi 678', '956789012', 'maria.soto@hotmail.com'),
('CC-00024', 'GOMEZ', 'RAMIREZ', 'JORGE LUIS', '71067890', 'Piura', 'Av. Loreto 901', '967890123', 'jorge.gomez@gmail.com'),
('CC-00025', 'FLORES', 'SALAZAR', 'ANA MARIA', '71078901', 'Chiclayo', 'Av. San Martín 234', '978901234', 'ana.flores@yahoo.com'),
('CC-00026', 'CHAVEZ', 'ROMERO', 'JUAN MANUEL', '71089012', 'Huancayo', 'Av. Real 567', '989012345', 'juan.chavez@hotmail.com'),
('CC-00027', 'TORRES', 'ARROYO', 'ROSA ANGELICA', '71090123', 'Iquitos', 'Av. Próceres 890', '991234567', 'rosa.torres@gmail.com'),
('CC-00028', 'SANCHEZ', 'TORRES', 'LUIS FERNANDO', '71012378', 'Tacna', 'Av. Bolognesi 123', '912345678', 'luis.sanchez@gmail.com'),
('CC-00029', 'ROMERO', 'GOMEZ', 'ANA MARIA', '71023456', 'Juliaca', 'Av. Arequipa 456', '923456789', 'ana.romero@yahoo.com'),
('CC-00030', 'CASTILLO', 'SOTO', 'PEDRO JESUS', '71034567', 'Pucallpa', 'Av. Brasil 789', '934567890', 'pedro.castillo@hotmail.com');

SELECT*FROM CLIENTE_CLASICO;

CREATE TABLE CLIENTE_ORO(
	codigo				VARCHAR(10),
	ape_paterno			VARCHAR(25),
	spe_materno			VARCHAR(25),
	nombre				VARCHAR(30),
	dni					VARCHAR(10),
	ciudad				VARCHAR(30),
	direccion			VARCHAR(50),
	telefono			VARCHAR(20),
	email				VARCHAR(50)
);
GO

INSERT INTO CLIENTE_ORO VALUES 
('CO-00001', 'RAMIREZ', 'ARROYO', 'MARIA ELENA', '71045678', 'Chimbote', 'Av. Grau 123', '945678901', 'maria.ramirez@yahoo.com'),
('CO-00002', 'RODRIGUEZ', 'GARCIA', 'JORGE ANTONIO', '71056789', 'Ica', 'Av. Independencia 456', '956789012', 'jorge.rodriguez@hotmail.com'),
('CO-00003', 'SOTO', 'SALINAS', 'CARLOS ALBERTO', '71067890', 'Ayacucho', 'Av. 28 de Julio 789', '967890123', 'carlos.soto@gmail.com'),
('CO-00004', 'GOMEZ', 'RAMIREZ', 'ANA CARMEN', '71078901', 'Cusco', 'Av. El Sol 234', '978901234', 'ana.gomez@yahoo.com'),
('CO-00005', 'GARCIA', 'SALINAS', 'LUIS FERNANDO', '71089012', 'Chincha Alta', 'Av. Grau 567', '989012345', 'luis.garcia@hotmail.com'),
('CO-00006', 'SANCHEZ', 'GOMEZ', 'MARIA FERNANDA', '71090123', 'Huánuco', 'Av. 28 de Julio 890', '991234567', 'maria.sanchez@gmail.com'),
('CO-00007', 'VALDIVIESO', 'TORRES', 'CARLOS EDUARDO', '71012345', 'Lima', 'Av. Circunvalacion 123', '912345678', 'carlos.valdivieso@yahoo.com'),
('CO-00008', 'CASTILLO', 'SALINAS', 'ANA ISABEL', '71023456', 'Trujillo', 'Av. España 456', '923456789', 'ana.castillo@hotmail.com'),
('CO-00009', 'RODRIGUEZ', 'GARCIA', 'CARLOS ALBERTO', '71034567', 'Arequipa', 'Av. Independencia 789', '934567890', 'carlos.rodriguez@gmail.com'),
('CO-00010', 'SOTO', 'ROMERO', 'MARIA ELENA', '71045678', 'Cajamarca', 'Av. Atahualpa 234', '945678901', 'maria.soto@yahoo.com'),
('CO-00011', 'GOMEZ', 'RAMIREZ', 'JORGE LUIS', '71056789', 'Sullana', 'Av. Bolognesi 567', '956789012', 'jorge.gomez@hotmail.com'),
('CO-00012', 'FLORES', 'SALAZAR', 'ANA MARIA', '71067890', 'Lima', 'Av. Loreto 678', '967890123', 'ana.flores@gmail.com'),
('CO-00013', 'CHAVEZ', 'ROMERO', 'JUAN MANUEL', '71078901', 'Chiclayo', 'Av. San Martín 901', '978901234', 'juan.chavez@yahoo.com'),
('CO-00014', 'TORRES', 'ARROYO', 'ROSA ANGELICA', '71089012', 'Huancayo', 'Av. Real 123', '989012345', 'rosa.torres@hotmail.com'),
('CO-00015', 'SANCHEZ', 'GOMEZ', 'LUIS FERNANDO', '71090123', 'Iquitos', 'Av. Próceres 456', '991234567', 'luis.sanchez@gmail.com'),
('CO-00016', 'ROMERO', 'GARCIA', 'MARIA ELENA', '71012345', 'Tacna', 'Av. Bolognesi 789', '912345678', 'maria.romero@yahoo.com'),
('CO-00017', 'CASTILLO', 'SOTO', 'PEDRO JESUS', '71023456', 'Juliaca', 'Av. Arequipa 123', '923456789', 'pedro.castillo@hotmail.com'),
('CO-00018', 'RAMIREZ', 'ARROYO', 'ANA MARIA', '71034567', 'Lima', 'Av. Brasil 456', '934567890', 'ana.ramirez@gmail.com'),
('CO-00019', 'RODRIGUEZ', 'GARCIA', 'JORGE ANTONIO', '71045678', 'Chimbote', 'Av. Grau 789', '945678901', 'jorge.rodriguez@yahoo.com'),
('CO-00020', 'SOTO', 'SALINAS', 'CARLOS ALBERTO', '71056789', 'Ica', 'Av. Independencia 234', '956789012', 'carlos.soto@hotmail.com'),
('CO-00021', 'MARTINEZ', 'SALINAS', 'MARIA FERNANDA', '71012345', 'Trujillo', 'Av. España 123', '912345678', 'maria.martinez@gmail.com'),
('CO-00022', 'SANCHEZ', 'GOMEZ', 'LUIS EDUARDO', '71023456', 'Arequipa', 'Av. Independencia 456', '923456789', 'luis.sanchez@yahoo.com'),
('CO-00023', 'RAMIREZ', 'ROMERO', 'ANA ISABEL', '71034567', 'Chiclayo', 'Av. San Martín 789', '934567890', 'ana.ramirez@hotmail.com'),
('CO-00024', 'RODRIGUEZ', 'GARCIA', 'CARLOS ALBERTO', '71045678', 'Piura', 'Av. Loreto 123', '945678901', 'carlos.rodriguez@gmail.com'),
('CO-00025', 'SOTO', 'SALAZAR', 'MARIA ELENA', '71056789', 'Cajamarca', 'Av. Atahualpa 456', '956789012', 'maria.soto@hotmail.com');

SELECT*FROM CLIENTE_ORO;

CREATE TABLE CLIENTE_PLATINO(
	codigo				VARCHAR(10),
	ape_paterno			VARCHAR(25),
	spe_materno			VARCHAR(25),
	nombre				VARCHAR(30),
	dni					VARCHAR(10),
	ciudad				VARCHAR(30),
	direccion			VARCHAR(50),
	telefono			VARCHAR(20),
	email				VARCHAR(50)
);
GO

INSERT INTO CLIENTE_PLATINO VALUES 
('CP-00001', 'ROMERO', 'GARCIA', 'MARIA ELENA', '71012345', 'Juliaca', 'Av. Arequipa 456', '912345678', 'maria.romero@yahoo.com'),
('CP-00002', 'CASTILLO', 'SOTO', 'PEDRO JESUS', '71023456', 'Pucallpa', 'Av. Brasil 789', '923456789', 'pedro.castillo@hotmail.com'),
('CP-00003', 'RAMIREZ', 'ARROYO', 'ANA MARIA', '71034567', 'Lima', 'Av. Grau 123', '934567890', 'ana.ramirez@gmail.com'),
('CP-00004', 'RODRIGUEZ', 'GARCIA', 'JORGE ANTONIO', '71045678', 'Ica', 'Av. Independencia 456', '945678901', 'jorge.rodriguez@yahoo.com'),
('CP-00005', 'SOTO', 'SALINAS', 'CARLOS ALBERTO', '71056789', 'Ayacucho', 'Av. 28 de Julio 789', '956789012', 'carlos.soto@hotmail.com'),
('CP-00006', 'GOMEZ', 'RAMIREZ', 'ANA CARMEN', '71067890', 'Cusco', 'Av. El Sol 234', '967890123', 'ana.gomez@yahoo.com'),
('CP-00007', 'GARCIA', 'SALINAS', 'LUIS FERNANDO', '71078901', 'Chincha Alta', 'Av. Grau 567', '978901234', 'luis.garcia@hotmail.com'),
('CP-00008', 'SANCHEZ', 'GOMEZ', 'MARIA FERNANDA', '71089012', 'Huánuco', 'Av. 28 de Julio 890', '989012345', 'maria.sanchez@gmail.com'),
('CP-00009', 'VALDIVIESO', 'TORRES', 'CARLOS EDUARDO', '71090123', 'Tarapoto', 'Av. Circunvalacion 123', '991234567', 'carlos.valdivieso@yahoo.com'),
('CP-00010', 'CASTILLO', 'SALINAS', 'ANA ISABEL', '71001234', 'Trujillo', 'Av. España 456', '901234567', 'ana.castillo@hotmail.com'),
('CP-00011', 'GOMEZ', 'RAMIREZ', 'JORGE LUIS', '71067890', 'Sullana', 'Av. Bolognesi 789', '967890123', 'jorge.gomez@yahoo.com'),
('CP-00012', 'FLORES', 'SALINAS', 'ANA MARIA', '71078901', 'Pucallpa', 'Av. Brasil 234', '978901234', 'ana.flores@gmail.com'),
('CP-00013', 'CHAVEZ', 'ROMERO', 'JUAN MANUEL', '71089012', 'Chimbote', 'Av. Grau 567', '989012345', 'juan.chavez@yahoo.com'),
('CP-00014', 'TORRES', 'ARROYO', 'ROSA ANGELICA', '71090123', 'Huancayo', 'Av. Real 789', '991234567', 'rosa.torres@hotmail.com'),
('CP-00015', 'SANCHEZ', 'GOMEZ', 'LUIS FERNANDO', '71001234', 'Tacna', 'Av. Bolognesi 123', '901234567', 'luis.sanchez@gmail.com');

SELECT*FROM CLIENTE_PLATINO;

CREATE TABLE SUCURSAL (
	codigo       VARCHAR(10),
	nombre       VARCHAR(50),
	ciudad       VARCHAR(30),
	direccion    VARCHAR(50)
);
go

INSERT INTO SUCURSAL VALUES 
('SU-001', 'Sipan', 'Chiclayo', 'Av. Balta 1456'),
('SU-002', 'Chan Chan', 'Trujillo', 'Jr. Independencia 456'),
('SU-003', 'Los Olivos', 'Lima', 'Av. Central 1234'),
('SU-004', 'Pardo', 'Lima', 'Av. Pardo 345 - Miraflores'),
('SU-005', 'Misti', 'Arequipa', 'Bolivar 546'),
('SU-006', 'Machupicchu', 'Cusco', 'Calle El Sol 534'),
('SU-007', 'Grau', 'Piura', 'Av. Grau 1528'),
('SU-008', 'Nazca', 'Ica', 'Av. Los Libertadores 789'),
('SU-009', 'Huanchaco', 'Trujillo', 'Av. El Sol 345'),
('SU-010', 'Tumbes', 'Tumbes', 'Jr. San Martín 678'),
('SU-011', 'Cajamarca', 'Cajamarca', 'Jr. Ayacucho 901'),
('SU-012', 'Chachapoyas', 'Amazonas', 'Av. Amazonas 234'),
('SU-013', 'Huaraz', 'Ancash', 'Av. Huaraz 567'),
('SU-014', 'Tarapoto', 'San Martín', 'Jr. Pizarro 890'),
('SU-015', 'Iquitos', 'Loreto', 'Av. Mariscal Cáceres 123'),
('SU-016', 'Pucallpa', 'Ucayali', 'Av. Centenario 456'),
('SU-017', 'Ayacucho', 'Ayacucho', 'Jr. Ayacucho 789'),
('SU-018', 'Huaral', 'Lima', 'Av. Huando 012'),
('SU-019', 'Ica', 'Ica', 'Av. Grau 345'),
('SU-020', 'Huánuco', 'Huánuco', 'Jr. Huánuco 678'),
('SU-021', 'Tarma', 'Junín', 'Av. Tarma 901'),
('SU-022', 'Tacna', 'Tacna', 'Jr. Tacna 234'),
('SU-023', 'Moquegua', 'Moquegua', 'Av. Moquegua 567'),
('SU-024', 'Abancay', 'Apurímac', 'Jr. Abancay 890'),
('SU-025', 'Cerro de Pasco', 'Pasco', 'Av. Cerro de Pasco 123');

SELECT*FROM SUCURSAL



--------------------------------------------------------------------

CREATE TABLE MOVIMIENTO (
	codigo_movimiento			VARCHAR(10),
	codigo_cliente				VARCHAR(10),
	codigo_empleado				VARCHAR(10),
	codigo_sucursal				VARCHAR(10),
	codigo_tipomovimiento		VARCHAR(10),
	fecha_movimiento		    DATE,
	moneda						VARCHAR(10),
	importe_movimiento			FLOAT,
	estado						VARCHAR(10)
);
go

INSERT INTO MOVIMIENTO VALUES 
('MO-00001', 'CC-00001', 'EM-00001', 'SU-001', '001', '2023-01-01', 'soles', 3000.50, 'Aceptado'),
('MO-00002', 'CC-00002', 'EM-00002', 'SU-002', '002', '2023-02-02', 'dolares', 4000.75, 'Rechazado'),
('MO-00003', 'CC-00003', 'EM-00003', 'SU-003', '003', '2023-03-03', 'euros', 5000.25, 'Evaluado'),
('MO-00004', 'CC-00004', 'EM-00004', 'SU-004', '004', '2023-04-04', 'soles', 6000.50, 'Aceptado'),
('MO-00005', 'CC-00005', 'EM-00005', 'SU-005', '001', '2023-05-05', 'dolares', 7000.75, 'Rechazado'),
('MO-00006', 'CC-00006', 'EM-00006', 'SU-006', '006', '2023-06-06', 'euros', 8000.25, 'Evaluado'),
('MO-00007', 'CC-00007', 'EM-00007', 'SU-007', '002', '2023-07-07', 'soles', 9000.50, 'Aceptado'),
('MO-00008', 'CC-00008', 'EM-00008', 'SU-008', '008', '2023-08-08', 'dolares', 10000.75, 'Rechazado'),
('MO-00009', 'CC-00009', 'EM-00009', 'SU-009', '009', '2023-09-09', 'euros', 1100.25, 'Evaluado'),
('MO-00010', 'CC-00010', 'EM-00010', 'SU-010', '001', '2023-10-10', 'soles', 1200.50, 'Aceptado'),
('MO-00011', 'CC-00011', 'EM-00011', 'SU-011', '002', '2023-11-11', 'dolares', 1300.75, 'Rechazado'),
('MO-00012', 'CC-00012', 'EM-00012', 'SU-012', '003', '2023-12-12', 'euros', 1400.25, 'Evaluado'),
('MO-00013', 'CC-00013', 'EM-00013', 'SU-013', '004', '2024-01-01', 'soles', 1500.50, 'Aceptado'),
('MO-00014', 'CC-00014', 'EM-00014', 'SU-014', '003', '2024-02-02', 'dolares', 1600.75, 'Rechazado'),
('MO-00015', 'CC-00015', 'EM-00015', 'SU-015', '006', '2024-03-03', 'euros', 1700.25, 'Evaluado'),
('MO-00016', 'CC-00016', 'EM-00016', 'SU-016', '004', '2024-04-04', 'soles', 1800.50, 'Aceptado'),
('MO-00017', 'CC-00017', 'EM-00017', 'SU-017', '008', '2024-05-05', 'dolares', 1900.75, 'Rechazado'),
('MO-00018', 'CC-00018', 'EM-00018', 'SU-018', '009', '2024-06-06', 'euros', 2000.25, 'Evaluado'),
('MO-00019', 'CC-00019', 'EM-00019', 'SU-019', '001', '2024-07-07', 'soles', 2100.50, 'Aceptado'),
('MO-00020', 'CC-00020', 'EM-00020', 'SU-020', '002', '2024-08-08', 'dolares', 2200.75, 'Rechazado'),
('MO-00021', 'CC-00021', 'EM-00021', 'SU-021', '003', '2024-09-09', 'euros', 2300.25, 'Evaluado'),
('MO-00022', 'CC-00022', 'EM-00022', 'SU-022', '004', '2024-10-10', 'soles', 2400.50, 'Aceptado'),
('MO-00023', 'CC-00023', 'EM-00023', 'SU-023', '006', '2024-10-10', 'soles', 2400.50, 'Aceptado'),
('MO-00024', 'CC-00024', 'EM-00024', 'SU-024', '006', '2024-11-11', 'dolares', 2500.75, 'Rechazado'),
('MO-00025', 'CC-00025', 'EM-00025', 'SU-025', '008', '2024-12-12', 'euros', 2600.25, 'Evaluado'),
('MO-00026', 'CO-00001', 'EM-00026', 'SU-001', '008', '2025-01-01', 'soles', 2700.50, 'Aceptado'),
('MO-00027', 'CO-00002', 'EM-00027', 'SU-002', '009', '2025-02-02', 'dolares', 2800.75, 'Rechazado'),
('MO-00028', 'CO-00003', 'EM-00028', 'SU-003', '001', '2025-03-03', 'euros', 2900.25, 'Evaluado'),
('MO-00029', 'CO-00004', 'EM-00029', 'SU-004', '002', '2025-04-04', 'soles', 3000.50, 'Aceptado'),
('MO-00030', 'CO-00005', 'EM-00030', 'SU-005', '003', '2025-05-05', 'dolares', 3100.75, 'Rechazado'),
('MO-00031', 'CO-00006', 'EM-00001', 'SU-006', '004', '2025-06-06', 'euros', 3200.25, 'Evaluado'),
('MO-00032', 'CO-00007', 'EM-00002', 'SU-007', '009', '2025-07-07', 'soles', 3300.50, 'Aceptado'),
('MO-00033', 'CO-00008', 'EM-00003', 'SU-008', '006', '2025-08-08', 'dolares', 3400.75, 'Rechazado'),
('MO-00034', 'CO-00009', 'EM-00004', 'SU-009', '001', '2025-09-09', 'euros', 3500.25, 'Evaluado'),
('MO-00035', 'CO-00010', 'EM-00005', 'SU-010', '008', '2025-10-10', 'soles', 3600.50, 'Aceptado'),
('MO-00036', 'CO-00011', 'EM-00006', 'SU-011', '009', '2025-11-11', 'dolares', 3700.75, 'Rechazado'),
('MO-00037', 'CO-00012', 'EM-00007', 'SU-012', '001', '2025-12-12', 'euros', 3800.25, 'Evaluado'),
('MO-00038', 'CO-00013', 'EM-00008', 'SU-013', '002', '2026-01-01', 'soles', 3900.50, 'Aceptado'),
('MO-00039', 'CO-00014', 'EM-00009', 'SU-014', '003', '2026-02-02', 'dolares', 4000.75, 'Rechazado'),
('MO-00040', 'CO-00015', 'EM-00010', 'SU-015', '004', '2026-03-03', 'euros', 4100.25, 'Evaluado'),
('MO-00041', 'CP-00001', 'EM-00011', 'SU-016', '002', '2026-04-04', 'soles', 4200.50, 'Aceptado'),
('MO-00042', 'CP-00002', 'EM-00012', 'SU-017', '006', '2026-05-05', 'dolares', 4300.75, 'Rechazado'),
('MO-00043', 'CP-00003', 'EM-00013', 'SU-018', '003', '2026-06-06', 'euros', 4400.25, 'Evaluado'),
('MO-00044', 'CP-00004', 'EM-00014', 'SU-019', '008', '2026-07-07', 'soles', 4500.50, 'Aceptado'),
('MO-00045', 'CP-00005', 'EM-00015', 'SU-020', '009', '2026-08-08', 'dolares', 4600.75, 'Rechazado'),
('MO-00046', 'CP-00006', 'EM-00016', 'SU-021', '001', '2026-09-09', 'euros', 4700.25, 'Evaluado'),
('MO-00047', 'CP-00007', 'EM-00017', 'SU-022', '002', '2026-10-10', 'soles', 4800.50, 'Aceptado'),
('MO-00048', 'CP-00008', 'EM-00018', 'SU-023', '003', '2026-11-11', 'dolares', 4900.75, 'Rechazado'),
('MO-00049', 'CP-00009', 'EM-00019', 'SU-024', '004', '2026-12-12', 'euros', 5000.25, 'Evaluado'),
('MO-00050', 'CP-00010', 'EM-00020', 'SU-025', '004', '2027-01-01', 'soles', 5100.50, 'Aceptado'),
('MO-00051', 'CP-00011', 'EM-00021', 'SU-001', '006', '2027-02-02', 'dolares', 5200.75, 'Rechazado'),
('MO-00052', 'CP-00012', 'EM-00022', 'SU-002', '006', '2027-03-03', 'euros', 5300.25, 'Evaluado'),
('MO-00053', 'CP-00013', 'EM-00023', 'SU-003', '008', '2027-04-04', 'soles', 5400.50, 'Aceptado'),
('MO-00054', 'CP-00014', 'EM-00024', 'SU-004', '009', '2027-05-05', 'dolares', 5500.75, 'Rechazado'),
('MO-00055', 'CP-00015', 'EM-00025', 'SU-005', '001', '2027-06-06', 'euros', 5600.25, 'Evaluado'),
('MO-00056', 'CC-00001', 'EM-00026', 'SU-006', '002', '2027-07-07', 'soles', 5700.50, 'Aceptado'),
('MO-00057', 'CC-00002', 'EM-00027', 'SU-007', '003', '2027-08-08', 'dolares', 5800.75, 'Rechazado'),
('MO-00058', 'CC-00003', 'EM-00028', 'SU-008', '004', '2027-09-09', 'euros', 5900.25, 'Evaluado'),
('MO-00059', 'CC-00004', 'EM-00029', 'SU-009', '008', '2027-10-10', 'soles', 6000.50, 'Aceptado'),
('MO-00060', 'CC-00005', 'EM-00030', 'SU-010', '006', '2027-11-11', 'dolares', 6100.75, 'Rechazado'),
('MO-00061', 'CC-00006', 'EM-00001', 'SU-011', '009', '2027-12-12', 'euros', 6200.25, 'Evaluado'),
('MO-00062', 'CC-00007', 'EM-00002', 'SU-012', '008', '2028-01-01', 'soles', 6300.50, 'Aceptado'),
('MO-00063', 'CC-00008', 'EM-00003', 'SU-013', '009', '2028-02-02', 'dolares', 6400.75, 'Rechazado'),
('MO-00064', 'CC-00009', 'EM-00004', 'SU-014', '001', '2028-03-03', 'euros', 6500.25, 'Evaluado'),
('MO-00065', 'CC-00010', 'EM-00005', 'SU-015', '002', '2028-04-04', 'soles', 6600.50, 'Aceptado'),
('MO-00066', 'CC-00011', 'EM-00006', 'SU-016', '003', '2028-05-05', 'dolares', 6700.75, 'Rechazado'),
('MO-00067', 'CC-00012', 'EM-00007', 'SU-017', '004', '2028-06-06', 'euros', 6800.25, 'Evaluado'),
('MO-00068', 'CC-00013', 'EM-00008', 'SU-018', '001', '2028-07-07', 'soles', 6900.50, 'Aceptado'),
('MO-00069', 'CC-00014', 'EM-00009', 'SU-019', '006', '2028-08-08', 'dolares', 7000.75, 'Rechazado'),
('MO-00070', 'CC-00015', 'EM-00010', 'SU-020', '002', '2028-09-09', 'euros', 7100.25, 'Evaluado'),
('MO-00071', 'CO-00001', 'EM-00011', 'SU-021', '008', '2028-10-10', 'soles', 7200.50, 'Aceptado'),
('MO-00072', 'CO-00002', 'EM-00012', 'SU-022', '009', '2028-11-11', 'dolares', 7300.75, 'Rechazado'),
('MO-00073', 'CO-00003', 'EM-00013', 'SU-023', '001', '2028-12-12', 'euros', 7400.25, 'Evaluado'),
('MO-00074', 'CO-00004', 'EM-00014', 'SU-024', '002', '2029-01-01', 'soles', 7500.50, 'Aceptado'),
('MO-00075', 'CO-00005', 'EM-00015', 'SU-025', '003', '2029-02-02', 'dolares', 7600.75, 'Rechazado'),
('MO-00076', 'CO-00006', 'EM-00016', 'SU-001', '004', '2029-03-03', 'euros', 7700.25, 'Evaluado'),
('MO-00077', 'CO-00007', 'EM-00017', 'SU-002', '003', '2029-04-04', 'soles', 7800.50, 'Aceptado'),
('MO-00078', 'CO-00008', 'EM-00018', 'SU-003', '006', '2029-05-05', 'dolares', 7900.75, 'Rechazado'),
('MO-00079', 'CO-00009', 'EM-00019', 'SU-004', '004', '2029-06-06', 'euros', 8000.25, 'Evaluado'),
('MO-00080', 'CO-00010', 'EM-00020', 'SU-005', '008', '2029-07-07', 'soles', 8100.50, 'Aceptado'),
('MO-00081', 'CO-00011', 'EM-00021', 'SU-006', '009', '2029-08-08', 'dolares', 8200.75, 'Rechazado'),
('MO-00082', 'CO-00012', 'EM-00022', 'SU-007', '001', '2029-09-09', 'euros', 8300.25, 'Evaluado'),
('MO-00083', 'CO-00013', 'EM-00023', 'SU-008', '002', '2029-10-10', 'soles', 8400.50, 'Aceptado'),
('MO-00084', 'CO-00014', 'EM-00024', 'SU-009', '003', '2029-11-11', 'dolares', 8500.75, 'Rechazado'),
('MO-00085', 'CO-00015', 'EM-00025', 'SU-010', '004', '2029-12-12', 'euros', 8600.25, 'Evaluado'),
('MO-00086', 'CP-00001', 'EM-00026', 'SU-011', '006', '2030-01-01', 'soles', 8700.50, 'Aceptado'),
('MO-00087', 'CP-00002', 'EM-00027', 'SU-012', '006', '2030-02-02', 'dolares', 8800.75, 'Rechazado'),
('MO-00088', 'CP-00003', 'EM-00028', 'SU-013', '008', '2030-03-03', 'euros', 8900.25, 'Evaluado'),
('MO-00089', 'CP-00004', 'EM-00029', 'SU-014', '008', '2030-04-04', 'soles', 9000.50, 'Aceptado'),
('MO-00090', 'CP-00005', 'EM-00030', 'SU-015', '009', '2030-05-05', 'dolares', 9100.75, 'Rechazado'),
('MO-00091', 'CP-00006', 'EM-00001', 'SU-016', '001', '2030-06-06', 'euros', 9200.25, 'Evaluado'),
('MO-00092', 'CP-00007', 'EM-00002', 'SU-017', '002', '2030-07-07', 'soles', 9300.50, 'Aceptado'),
('MO-00093', 'CP-00008', 'EM-00003', 'SU-018', '003', '2030-08-08', 'dolares', 9400.75, 'Rechazado'),
('MO-00094', 'CP-00009', 'EM-00004', 'SU-019', '004', '2030-09-09', 'euros', 9500.25, 'Evaluado'),
('MO-00095', 'CP-00010', 'EM-00005', 'SU-020', '009', '2030-10-10', 'soles', 9600.50, 'Aceptado'),
('MO-00096', 'CP-00011', 'EM-00006', 'SU-021', '006', '2030-11-11', 'dolares', 9700.75, 'Rechazado'),
('MO-00097', 'CP-00012', 'EM-00007', 'SU-022', '001', '2030-12-12', 'euros', 9800.25, 'Evaluado'),
('MO-00098', 'CP-00013', 'EM-00008', 'SU-023', '008', '2031-01-01', 'soles', 9900.50, 'Aceptado'),
('MO-00099', 'CP-00014', 'EM-00009', 'SU-024', '009', '2031-02-02', 'dolares', 1000.75, 'Rechazado'),
('MO-00100', 'CP-00015', 'EM-00010', 'SU-025', '001', '2031-03-03', 'euros', 1010.25, 'Evaluado'),
('MO-00101', 'CC-00001', 'EM-00011', 'SU-001', '002', '2031-04-04', 'soles', 1020.50, 'Aceptado'),
('MO-00102', 'CC-00002', 'EM-00012', 'SU-002', '003', '2031-05-05', 'dolares', 1030.75, 'Rechazado'),
('MO-00103', 'CC-00003', 'EM-00013', 'SU-003', '004', '2031-06-06', 'euros', 1040.25, 'Evaluado'),
('MO-00104', 'CC-00004', 'EM-00014', 'SU-004', '002', '2031-07-07', 'soles', 1050.50, 'Aceptado'),
('MO-00105', 'CC-00005', 'EM-00015', 'SU-005', '006', '2031-08-08', 'dolares', 1000.75, 'Rechazado'),
('MO-00106', 'CC-00006', 'EM-00016', 'SU-001', '003', '2031-09-09', 'euros', 1070.25, 'Evaluado'),
('MO-00107', 'CC-00007', 'EM-00017', 'SU-002', '008', '2031-10-10', 'soles', 1080.50, 'Aceptado'),
('MO-00108', 'CC-00008', 'EM-00018', 'SU-003', '009', '2031-11-11', 'dolares', 1090.75, 'Rechazado'),
('MO-00109', 'CC-00009', 'EM-00019', 'SU-004', '001', '2031-12-12', 'euros', 1100.25, 'Evaluado'),
('MO-00110', 'CC-00010', 'EM-00020', 'SU-005', '002', '2032-01-01', 'soles', 1110.50, 'Aceptado'),
('MO-00111', 'CC-00011', 'EM-00021', 'SU-006', '003', '2032-02-02', 'dolares', 1120.75, 'Rechazado'),
('MO-00112', 'CC-00012', 'EM-00022', 'SU-007', '004', '2032-03-03', 'euros', 1130.25, 'Evaluado'),
('MO-00113', 'CC-00013', 'EM-00023', 'SU-008', '004', '2032-04-04', 'soles', 1140.50, 'Aceptado'),
('MO-00114', 'CC-00014', 'EM-00024', 'SU-009', '006', '2032-05-05', 'dolares', 1150.75, 'Rechazado'),
('MO-00115', 'CC-00015', 'EM-00025', 'SU-010', '006', '2032-06-06', 'euros', 1160.25, 'Evaluado'),
('MO-00116', 'CO-00001', 'EM-00026', 'SU-011', '008', '2032-07-07', 'soles', 1170.50, 'Aceptado'),
('MO-00117', 'CO-00002', 'EM-00027', 'SU-012', '009', '2032-08-08', 'dolares', 1180.75, 'Rechazado'),
('MO-00118', 'CO-00003', 'EM-00028', 'SU-013', '001', '2032-09-09', 'euros', 1190.25, 'Evaluado'),
('MO-00119', 'CO-00004', 'EM-00029', 'SU-014', '002', '2032-10-10', 'soles', 1200.50, 'Aceptado'),
('MO-00120', 'CO-00005', 'EM-00030', 'SU-015', '003', '2032-11-11', 'dolares', 1200.75, 'Rechazado'),
('MO-00121', 'CO-00006', 'EM-00001', 'SU-016', '004', '2032-12-12', 'euros', 12200.25, 'Evaluado'),
('MO-00122', 'CO-00007', 'EM-00002', 'SU-017', '005', '2033-01-01', 'soles', 1230.50, 'Aceptado'),
('MO-00123', 'CO-00008', 'EM-00003', 'SU-018', '006', '2033-02-02', 'dolares', 1240.75, 'Rechazado'),
('MO-00124', 'CO-00009', 'EM-00004', 'SU-019', '008', '2033-03-03', 'euros', 1250.25, 'Evaluado'),
('MO-00125', 'CO-00010', 'EM-00005', 'SU-020', '008', '2033-04-04', 'soles', 1260.50, 'Aceptado'),
('MO-00126', 'CO-00011', 'EM-00006', 'SU-021', '009', '2033-05-05', 'dolares', 1270.75, 'Rechazado'),
('MO-00127', 'CO-00012', 'EM-00007', 'SU-022', '001', '2033-06-06', 'euros', 1280.25, 'Evaluado'),
('MO-00128', 'CO-00013', 'EM-00008', 'SU-023', '002', '2033-07-07', 'soles', 1290.50, 'Aceptado'),
('MO-00129', 'CO-00014', 'EM-00009', 'SU-024', '003', '2033-08-08', 'dolares', 1300.75, 'Rechazado'),
('MO-00130', 'CO-00015', 'EM-00010', 'SU-025', '004', '2033-09-09','euros', 1280.25, 'Evaluado');