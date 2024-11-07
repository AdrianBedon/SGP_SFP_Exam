CREATE DATABASE SGP_SFP;
GO

USE SGP_SFP;
GO

-- Table: Proveedores
CREATE TABLE Proveedores (
    id_proveedor INT PRIMARY KEY IDENTITY(1,1),
    nombre VARCHAR(100) NOT NULL,
    contacto VARCHAR(10),
);

-- Table: Facturas
CREATE TABLE Facturas (
    id_factura INT PRIMARY KEY IDENTITY(1,1),
    id_proveedor INT NOT NULL,
    fecha DATETIME NOT NULL,
    monto DECIMAL(18, 2) NOT NULL,
    estado BIT NOT NULL DEFAULT 1,
    FOREIGN KEY (id_proveedor) REFERENCES Proveedores(id_proveedor)
);

-- Table: Pagos
CREATE TABLE Pagos (
    id_pago INT PRIMARY KEY IDENTITY(1,1),
    id_factura INT NOT NULL,
    fecha_pago DATE NOT NULL,
    estado BIT NOT NULL DEFAULT 1,
    FOREIGN KEY (id_factura) REFERENCES Facturas(id_factura)
);

GO