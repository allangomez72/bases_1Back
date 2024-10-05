-- Descripción: No tienen dependencias
CREATE TABLE Tipos (
    id_tipo NUMBER(1),
    instalacion VARCHAR(50) NOT NULL,
    CONSTRAINT pk_id_tipo PRIMARY KEY (id_tipo)
);

CREATE TABLE Estado_prestamos (
    id_estado_prestamo NUMBER(1),
    estado VARCHAR(20) NOT NULL,
    CONSTRAINT pk_id_estado_prestamo PRIMARY KEY (id_estado_prestamo)
);

CREATE TABLE Estado_tarjetas (
    id_estado_tarjeta NUMBER(1),
    estado VARCHAR(20) NOT NULL,
    CONSTRAINT pk_id_estado_tarjeta PRIMARY KEY (id_estado_tarjeta)
);

CREATE TABLE Tipos_cuentas (
    id_tipo_cuenta NUMBER(1),
    tipo VARCHAR(30) NOT NULL,
    CONSTRAINT pk_id_tipo_cuenta PRIMARY KEY (id_tipo_cuenta)
);

CREATE TABLE Tipos_transacciones (
    id_tipo_transaccion NUMBER(1),
    tipo VARCHAR(30) NOT NULL,
    CONSTRAINT pk_id_tipo_transaccion PRIMARY KEY (id_tipo_transaccion)
);

CREATE TABLE Departamentos (
    id_departamento NUMBER(2),
    departamento VARCHAR(30) NOT NULL,
    CONSTRAINT pk_id_departamento PRIMARY KEY (id_departamento)
);

CREATE TABLE Roles (
    id_rol NUMBER(2),
    rol VARCHAR(30) NOT NULL,
    CONSTRAINT pk_id_rol PRIMARY KEY (id_rol)
);

-- Descripción: Tablas con dependencias
CREATE TABLE Locaciones (
    id_locacion NUMBER(4),
    locacion VARCHAR(50) NOT NULL,
    id_tipo NUMBER(1) NOT NULL,
    CONSTRAINT pk_id_locacion PRIMARY KEY (id_locacion),
    CONSTRAINT fk_id_tipo FOREIGN KEY (id_tipo) REFERENCES Tipos(id_tipo)
);

CREATE TABLE Clientes (
    id_cliente NUMBER(8),
    nombre VARCHAR(30) NOT NULL,
    apellido VARCHAR(30) NOT NULL,
    telefono VARCHAR(15) NOT NULL,
    CONSTRAINT pk_id_cliente PRIMARY KEY (id_cliente)
);

CREATE TABLE Cuentas (
    id_cuenta NUMBER(10),
    numero_cuenta VARCHAR(25) NOT NULL,
    saldo NUMBER(10) NOT NULL,
    id_tipo_cuenta NUMBER(1) NOT NULL,
    id_cliente NUMBER(8) NOT NULL,
    CONSTRAINT pk_id_cuenta PRIMARY KEY (id_cuenta),
    CONSTRAINT fk_cuentas_id_tipo FOREIGN KEY (id_tipo_cuenta) REFERENCES Tipos_cuentas(id_tipo_cuenta),
    CONSTRAINT fk_cuentas_id_cliente FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    CONSTRAINT chk_saldo_cuenta CHECK (saldo >= 0)
);

CREATE TABLE Prestamos (
    id_prestamo NUMBER(8),
    id_cliente NUMBER(8) NOT NULL,
    monto NUMBER(10,2) NOT NULL,
    tasa_intere NUMBER(4,2) NOT NULL,
    fecha_desembolso DATE NOT NULL,
    fecha_vencimiento DATE NOT NULL,
    saldo_pendiente NUMBER(10,2) NOT NULL,
    id_estado_prestamo NUMBER(1) NOT NULL,
    CONSTRAINT pk_id_prestamo PRIMARY KEY (id_prestamo),
    CONSTRAINT fk_id_cliente FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    CONSTRAINT fk_id_estado FOREIGN KEY (id_estado_prestamo) REFERENCES Estado_prestamos(id_estado_prestamo),
    CONSTRAINT chk_monto_prestamo CHECK (monto > 0), 
    CONSTRAINT chk_saldo_prestamo CHECK (saldo_pendiente >= 0)
);

CREATE TABLE Tarjetas (
    id_tarjeta NUMBER(10),
    id_cliente NUMBER(8) NOT NULL,
    numero_tarjeta VARCHAR(25) NOT NULL,
    limite_credito NUMBER(8,2) NOT NULL,
    saldo_actual NUMBER(10,2) NOT NULL,
    fecha_emision DATE NOT NULL,
    fecha_vencimiento DATE NOT NULL,
    id_estado_tarjeta NUMBER(1) NOT NULL,
    fecha_corte DATE NOT NULL,
    dia_ciclo NUMBER(2) NOT NULL,
    CONSTRAINT pk_id_tarjeta PRIMARY KEY (id_tarjeta),
    CONSTRAINT fk_id_cliente_tarjeta FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    CONSTRAINT fk_id_estado_tarjeta FOREIGN KEY (id_estado_tarjeta) REFERENCES Estado_tarjetas(id_estado_tarjeta),
    CONSTRAINT chk_saldo_tarjeta CHECK (saldo_actual >= 0), 
    CONSTRAINT chk_limite_credito CHECK (limite_credito > 0)
);

CREATE TABLE Empleados (
    id_empleado NUMBER(7),
    nombre VARCHAR(30) NOT NULL,
    apellido VARCHAR(30) NOT NULL,
    telefono VARCHAR(15) NOT NULL,
    id_rol NUMBER(2) NOT NULL,
    id_departamento NUMBER(2) NOT NULL,
    id_locacion NUMBER(4) NOT NULL,
    CONSTRAINT pk_id_empleado PRIMARY KEY (id_empleado),
    CONSTRAINT fk_id_rol FOREIGN KEY (id_rol) REFERENCES Roles(id_rol),
    CONSTRAINT fk_id_departamento FOREIGN KEY (id_departamento) REFERENCES Departamentos(id_departamento),
    CONSTRAINT fk_id_locacion FOREIGN KEY (id_locacion) REFERENCES Locaciones(id_locacion)
);

CREATE TABLE Municipios (
    id_municipio NUMBER(3),
    municipio VARCHAR(30) NOT NULL,
    id_departamento NUMBER(2) NOT NULL,
    CONSTRAINT pk_id_municipio PRIMARY KEY (id_municipio),
    CONSTRAINT fk_id_departamento_municipio FOREIGN KEY (id_departamento) REFERENCES Departamentos(id_departamento)
);

CREATE TABLE Direcciones (
    id_direccion NUMBER(6),
    direccion VARCHAR(50) NOT NULL,
    codigo_postal VARCHAR(5) NOT NULL,
    id_municipio NUMBER(3) NOT NULL,
    CONSTRAINT pk_id_direccion PRIMARY KEY (id_direccion),
    CONSTRAINT fk_id_municipio FOREIGN KEY (id_municipio) REFERENCES Municipios(id_municipio)
);

CREATE TABLE Agencias (
    id_agencia NUMBER(4),
    nombre VARCHAR(30) NOT NULL,
    id_locacion NUMBER(4) NOT NULL,
    id_direccion NUMBER(6) NOT NULL,
    telefono VARCHAR(15) NOT NULL,
    CONSTRAINT pk_id_agencia PRIMARY KEY (id_agencia),
    CONSTRAINT fk_id_locacion_agencia FOREIGN KEY (id_locacion) REFERENCES Locaciones(id_locacion),
    CONSTRAINT fk_id_direccion_agencia FOREIGN KEY (id_direccion) REFERENCES Direcciones(id_direccion)
);

CREATE TABLE Transacciones (
    id_transaccion NUMBER(10),
    id_cliente NUMBER(8) NOT NULL,
    numero_origen VARCHAR(25) NOT NULL,
    numero_destino VARCHAR(25) NOT NULL,
    id_tipo_transaccion NUMBER(1) NOT NULL,
    monto NUMBER(7,2) NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE NOT NULL,
    hora TIMESTAMP NOT NULL,
    descripcion VARCHAR(50) NOT NULL, 
    id_locacion NUMBER(4) NOT NULL,
    CONSTRAINT pk_id_transaccion PRIMARY KEY (id_transaccion),
    CONSTRAINT fk_transaccion_id_cliente FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    CONSTRAINT fk_transaccion_id_tipo_transaccion FOREIGN KEY (id_tipo_transaccion) REFERENCES Tipos_transacciones(id_tipo_transaccion),
    CONSTRAINT fk_transaccion_id_locacion FOREIGN KEY (id_locacion) REFERENCES Locaciones(id_locacion),
    CONSTRAINT chk_monto_transaccion CHECK (monto > 0)
);



-- Tipos S
-- Locaciones S
-- Empleados S
-- Roles S
-- Estados de prestamos S
-- agencias S
-- direcciones
-- municipios S
-- departamentos S
-- estados de tarjetas
-- prestamos
-- transacciones
-- tipos de transacciones
-- tarjeas de credito
-- clientes S
-- cuentas S
-- tipos de cuentas S


--DROP TABLE Tipos; para eliminar

SELECT column_name, data_type, nullable
FROM user_tab_columns
WHERE table_name = 'TRANSACCIONES';

SELECT * FROM Transacciones;
