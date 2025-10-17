CREATE DATABASE datosgenerales;
GO

USE datosgenerales;
GO

CREATE TABLE datospersonales (
    ID INT PRIMARY KEY IDENTITY(1,1),
    Nombre VARCHAR(50),
    Direccion VARCHAR(100),
    Ciudad VARCHAR(50),
    NumTelefono VARCHAR(15),
    Email VARCHAR(50),
    Genero VARCHAR(10)
);

CREATE TABLE Sucursal (
    ID INT PRIMARY KEY IDENTITY(1,1),
    NombreSucursal VARCHAR(50),
    Ciudad VARCHAR(50),
    Direccion VARCHAR(100),
    Cantidad_ventas_anuales DECIMAL(12,2)
);

CREATE TABLE datosempleado (
    Codigo INT PRIMARY KEY IDENTITY(1,1),
    FK_datospersonales INT,
    FK_Sucursal INT,
    Cargo VARCHAR(50),
    Horario VARCHAR(50),
    Salario DECIMAL(10,2),
    FOREIGN KEY (FK_datospersonales) REFERENCES datospersonales(ID),
    FOREIGN KEY (FK_Sucursal) REFERENCES Sucursal(ID)
);

INSERT INTO datospersonales (Nombre, Direccion, Ciudad, NumTelefono, Email, Genero)
VALUES
('Ana López', 'Av. Reforma 100', 'Ciudad de México', '5512345678', 'ana.lopez@compuventas.mx', 'Femenino'),
('Carlos Pérez', 'Calle Juárez 45', 'Guadalajara', '3334567890', 'carlos.perez@compuventas.mx', 'Masculino'),
('Laura Gómez', 'Col. Centro 120', 'Monterrey', '8187654321', 'laura.gomez@compuventas.mx', 'Femenino'),
('Jorge Ramírez', 'Av. Hidalgo 77', 'Puebla', '2229876543', 'jorge.ramirez@compuventas.mx', 'Masculino'),
('María Torres', 'Calle Real 18', 'León', '4772233445', 'maria.torres@compuventas.mx', 'Femenino'),
('Luis Martínez', 'Blvd. Universitario 25', 'Tijuana', '6649988776', 'luis.martinez@compuventas.mx', 'Masculino'),
('Sofía Herrera', 'Av. Las Palmas 5', 'Querétaro', '4423344556', 'sofia.herrera@compuventas.mx', 'Femenino'),
('Diego Cruz', 'Calle 2 #89', 'Toluca', '7221122334', 'diego.cruz@compuventas.mx', 'Masculino'),
('Elena Díaz', 'Av. Morelos 20', 'Mérida', '9994455667', 'elena.diaz@compuventas.mx', 'Femenino'),
('Andrés Flores', 'Callejón Hidalgo 9', 'Cancún', '9988877665', 'andres.flores@compuventas.mx', 'Masculino');

INSERT INTO Sucursal (NombreSucursal, Ciudad, Direccion, Cantidad_ventas_anuales)
VALUES
('Sucursal Centro', 'Ciudad de México', 'Av. Reforma 120', 850000.00),
('Sucursal Guadalajara', 'Guadalajara', 'Av. Juárez 300', 750000.00),
('Sucursal Monterrey', 'Monterrey', 'Av. Constitución 50', 900000.00),
('Sucursal Puebla', 'Puebla', 'Calle 10 Oriente 250', 670000.00),
('Sucursal León', 'León', 'Blvd. Delta 90', 720000.00),
('Sucursal Tijuana', 'Tijuana', 'Av. Revolución 180', 640000.00),
('Sucursal Querétaro', 'Querétaro', 'Av. Universidad 45', 560000.00),
('Sucursal Toluca', 'Toluca', 'Av. Las Torres 110', 580000.00),
('Sucursal Mérida', 'Mérida', 'Paseo Montejo 77', 690000.00),
('Sucursal Cancún', 'Cancún', 'Av. Bonampak 250', 810000.00);

INSERT INTO datosempleado (FK_datospersonales, FK_Sucursal, Cargo, Horario, Salario)
VALUES
(1,1,'Vendedora','9:00-17:00',12000),
(2,2,'Técnico','10:00-18:00',13500),
(3,3,'Gerente','8:00-16:00',18500),
(4,4,'Vendedor','9:00-17:00',12500),
(5,5,'Asistente','9:00-17:00',11000),
(6,6,'Supervisor','8:00-16:00',16000),
(7,7,'Vendedora','9:00-17:00',12000),
(8,8,'Técnico','10:00-18:00',13000),
(9,9,'Gerente','8:00-16:00',19000),
(10,10,'Vendedor','9:00-17:00',11500);
