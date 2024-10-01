CREATE TABLE Clientes (
    ID INT PRIMARY KEY,
    Nombre VARCHAR(50),
    Apellido VARCHAR(50),
    Teléfono VARCHAR(20)
);

CREATE TABLE Cuenta (
    ID_Cuenta INT PRIMARY KEY,
    Número_de_Cuenta VARCHAR(20),
    Tipo_de_Cuenta VARCHAR(50),
    Saldo DECIMAL(15, 2),
    ID_Cliente INT,
    FOREIGN KEY (ID_Cliente) REFERENCES Clientes(ID)
);

CREATE TABLE Transacciones (
    ID_Transacción INT PRIMARY KEY,
    ID_Cliente INT,
    Número_de_Origen VARCHAR(20),
    Número_de_Cuenta_Destino VARCHAR(20),
    Tipo_de_Transacción VARCHAR(50),
    Monto DECIMAL(15, 2),
    Fecha DATE,
    Hora TIME,
    Descripción TEXT,
    Sucursal VARCHAR(50),
    Agencia VARCHAR(50),
    FOREIGN KEY (ID_Cliente) REFERENCES Clientes(ID)
);

CREATE TABLE Tipo_de_Transacción (
    ID INT PRIMARY KEY,
    Tipo_de_Transacción VARCHAR(50)
);

CREATE TABLE Empleado (
    ID INT PRIMARY KEY,
    Nombre VARCHAR(50),
    Apellido VARCHAR(50),
    Rol INT,
    ID_Departamento INT,
    Sucursal VARCHAR(50),
    Agencia VARCHAR(50),
    Teléfono VARCHAR(20),
    FOREIGN KEY (Rol) REFERENCES Rol(ID_Rol),
    FOREIGN KEY (ID_Departamento) REFERENCES Departamentos(ID_Departamento)
);

CREATE TABLE Rol (
    ID_Rol INT PRIMARY KEY,
    Rol VARCHAR(50)
);

CREATE TABLE Prestamos (
    ID_Préstamo INT PRIMARY KEY,
    ID_Cliente INT,
    Monto_del_Préstamo DECIMAL(15, 2),
    Tasa_de_Interés DECIMAL(5, 2),
    Fecha_de_Desembolso DATE,
    Fecha_de_Vencimiento DATE,
    Saldo_Pendiente DECIMAL(15, 2),
    FOREIGN KEY (ID_Cliente) REFERENCES Clientes(ID)
);

CREATE TABLE Estado_de_Préstamo (
    ID_Préstamo INT PRIMARY KEY,
    Estado_del_Préstamo VARCHAR(50),
    FOREIGN KEY (ID_Préstamo) REFERENCES Préstamos(ID_Préstamo)
);

CREATE TABLE Tarjeta_de_Credito (
    ID_Tarjeta INT PRIMARY KEY,
    ID_Cliente INT,
    Número_de_Tarjeta VARCHAR(20),
    Límite_de_Crédito DECIMAL(15, 2),
    Saldo_Actual DECIMAL(15, 2),
    Fecha_de_Emisión DATE,
    Fecha_de_Expiración DATE,
    ID_Estado INT,
    Fecha_de_Corte DATE,
    Día_del_Ciclo INT,
    FOREIGN KEY (ID_Cliente) REFERENCES Clientes(ID),
    FOREIGN KEY (ID_Estado) REFERENCES Estado_de_la_Tarjeta(ID_Estado)
);

