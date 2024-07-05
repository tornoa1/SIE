-- Tabla de Staging para Logística
CREATE TABLE STG_LOGISTICA (
    LOGISTICS_ID INT,
    ORDER_ID INT,
    WAREHOUSE_ID INT,
    SHIPPING_METHOD NVARCHAR(50),
    TRACKING_NUMBER NVARCHAR(50),
    SHIPPING_DATE NVARCHAR(8),
    DELIVERY_DATE NVARCHAR(8),
    STATUS NVARCHAR(20)
);

-- Dimensiones
CREATE TABLE DimFecha (
    FechaKey INT PRIMARY KEY,
    Fecha DATE NOT NULL,
    Anho INT NOT NULL,
    Mes INT NOT NULL,
    Dia INT NOT NULL,
    NombreMes NVARCHAR(20) NOT NULL,
    MesCorto NVARCHAR(10) NOT NULL,
    Trimestre NVARCHAR(10) NOT NULL,
    NombreDia NVARCHAR(20) NOT NULL
);

CREATE TABLE DimPais (
    PaisKey INT PRIMARY KEY,
    CountryName NVARCHAR(255) NOT NULL,
    CityName NVARCHAR(255) NOT NULL
);

CREATE TABLE DimUsuario (
    UsuarioKey INT PRIMARY KEY,
    Email NVARCHAR(255) NOT NULL,
    UserType NVARCHAR(10) NOT NULL,
    PaisKey INT FOREIGN KEY REFERENCES DimPais(PaisKey),
    Nombre NVARCHAR(255),
    Apellido NVARCHAR(255),
    RUC NVARCHAR(20),
    NombreEmpresa NVARCHAR(255)
);

CREATE TABLE DimProducto (
    ProductoKey NVARCHAR(20) PRIMARY KEY,
    CategoryID INT,
    BrandID INT,
    NombreProducto NVARCHAR(255) NOT NULL,
    Precio DECIMAL(10, 2) NOT NULL,
    FechaKey INT FOREIGN KEY REFERENCES DimFecha(FechaKey)
);

CREATE TABLE DimAlmacen (
    AlmacenKey INT PRIMARY KEY,
    NombreAlmacen NVARCHAR(255) NOT NULL,
    PaisKey INT FOREIGN KEY REFERENCES DimPais(PaisKey)
);

CREATE TABLE DimMetodoPago (
    MetodoPagoKey INT PRIMARY KEY,
    NombreMetodo NVARCHAR(255) NOT NULL
);

CREATE TABLE DimMotivoDevolucion (
    MotivoDevolucionKey INT PRIMARY KEY,
    Descripcion NVARCHAR(255) NOT NULL
);

-- Tablas de Hechos
CREATE TABLE FactPedido (
    PedidoKey INT PRIMARY KEY IDENTITY,
    BuyerKey INT FOREIGN KEY REFERENCES DimUsuario(UsuarioKey),
    SellerKey INT FOREIGN KEY REFERENCES DimUsuario(UsuarioKey),
    ProductoKey NVARCHAR(20) FOREIGN KEY REFERENCES DimProducto(ProductoKey),
    FechaPedidoKey INT FOREIGN KEY REFERENCES DimFecha(FechaKey),
    Cantidad INT NOT NULL,
    MetodoPagoKey INT FOREIGN KEY REFERENCES DimMetodoPago(MetodoPagoKey)
);

CREATE TABLE FactComentarioResena (
    ComentarioResenaKey NVARCHAR(12) PRIMARY KEY,
    ProductoKey NVARCHAR(20) FOREIGN KEY REFERENCES DimProducto(ProductoKey),
    UsuarioKey INT FOREIGN KEY REFERENCES DimUsuario(UsuarioKey),
    Rating DECIMAL(3, 1) NOT NULL,
    FechaComentarioKey INT FOREIGN KEY REFERENCES DimFecha(FechaKey)
);

CREATE TABLE FactDevolucion (
    DevolucionKey INT PRIMARY KEY,
    PedidoKey INT FOREIGN KEY REFERENCES FactPedido(PedidoKey),
    FechaDevolucionKey INT FOREIGN KEY REFERENCES DimFecha(FechaKey),
    AlmacenKey INT FOREIGN KEY REFERENCES DimAlmacen(AlmacenKey),
    MotivoDevolucionKey INT FOREIGN KEY REFERENCES DimMotivoDevolucion(MotivoDevolucionKey),
    Estado NVARCHAR(20) NOT NULL
);

CREATE TABLE FACT_LOGISTICA (
    LogisticaKey INT PRIMARY KEY,
    PedidoKey INT FOREIGN KEY REFERENCES FactPedido(PedidoKey),
    AlmacenKey INT FOREIGN KEY REFERENCES DimAlmacen(AlmacenKey),
    MetodoEnvio NVARCHAR(50),
    NumeroSeguimiento NVARCHAR(50),
    FechaEnvioKey INT FOREIGN KEY REFERENCES DimFecha(FechaKey),
    FechaEntregaKey INT FOREIGN KEY REFERENCES DimFecha(FechaKey),
    Estado NVARCHAR(20) NOT NULL
);
