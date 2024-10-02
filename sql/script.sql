--Descripcion: No tienen dependencias
CREATE TABLE Tipos (
    id NUMBER(1) PRIMARY KEY,
    instalacion VARCHAR(25) NOT NULL
);

CREATE TABLE Estado_prestamos (
    id NUMBER(1) PRIMARY KEY,
    estado VARCHAR(25) NOT NULL
);

CREATE TABLE Estado_tarjetas (
    id NUMBER(1) PRIMARY KEY,
    estado VARCHAR(25) NOT NULL
);

CREATE TABLE Tipos_cuentas (
    id NUMBER(1) PRIMARY KEY,
    tipo VARCHAR(25) NOT NULL
);

CREATE TABLE Tipos_transacciones (
    id NUMBER(1) PRIMARY KEY,
    tipo VARCHAR(25) NOT NULL
);

CREATE TABLE Departamentos (
    id NUMBER(2) PRIMARY KEY,
    departamento VARCHAR(25) NOT NULL
);

CREATE TABLE Roles (
    id NUMBER(2) PRIMARY KEY,
    rol VARCHAR(25) NOT NULL
);

-- Descripcion: Tablas con dependencias
CREATE TABLE Locaciones (
    id NUMBER(4) PRIMARY KEY,
    locacion VARCHAR(25) NOT NULL,
    id_tipo NUMBER(1) NOT NULL,
    CONSTRAINT fk_id_tipo FOREIGN KEY (id_tipo) REFERENCES Tipos(id)
);

CREATE TABLE Clientes (
    id Number(8) PRIMARY KEY,
    nombre VARCHAR(30) NOT NULL,
    apellido VARCHAR(30) NOT NULL,
    telefono VARCHAR(15) NOT NULL

);

CREATE TABLE Cuentas (
    id NUMBER(10) PRIMARY KEY,
    numero_cuenta VARCHAR(25) NOT NULL,
    saldo NUMBER(10) NOT NULL,
    id_tipo NUMBER(1) NOT NULL,
    id_cliente NUMBER(8) NOT NULL,
    CONSTRAINT fk_id_tipo FOREIGN KEY (id_tipo) REFERENCES Tipos_cuentas(id),
    CONSTRAINT fk_id_cliente FOREIGN KEY (id_cliente) REFERENCES Clientes(id)
);


CREATE TABLE Prestamos (
    id NUMBER(8) PRIMARY KEY,
    id_cliente NUMBER(8) NOT NULL,
    monto NUMBER(10,2) NOT NULL,
    tasa_intere NUMBER(2,2) NOT NULL,
    fecha_deseembolso DATE NOT NULL,
    fecha_vencimiento DATE NOT NULL,
    saldo_pendiente NUMBER(10,2) NOT NULL,
    id_estado NUMBER(1) NOT NULL,
    CONSTRAINT fk_id_cliente FOREIGN KEY (id_cliente) REFERENCES Clientes(id),
    CONSTRAINT fk_id_estado FOREIGN KEY (id_estado) REFERENCES Estado_prestamos(id)
);

CREATE TABLE Tarjetas (
    id NUMBER(10) PRIMARY KEY,
    id_cliente NUMBER(8) NOT NULL,
    numero_tarjeta VARCHAR(25) NOT NULL,
    limimte_credito NUMBER(8,2) NOT NULL,
    saldo_actual NUMBER(10,2) NOT NULL,
    fecha_emision DATE NOT NULL,
    fecha_vencimiento DATE NOT NULL,
    id_estado NUMBER(1)  NOT NULL,
    fecha_corte DATE NOT NULL,
    dia_ciclo NUMBER(2) NOT NULL,
    CONSTRAINT fk_id_cliente FOREIGN KEY (id_cliente) REFERENCES Clientes (id),
    CONSTRAINT fk_id_estado FOREIGN KEY (id_estado) REFERENCES Estado_tarjetas (id)
);

CREATE TABLE Empleados (
    id NUMBER(7) PRIMARY KEY,
    nombre VARCHAR(30) NOT NULL,
    apellido VARCHAR(30) NOT NULL,
    telefono VARCHAR(15) NOT NULL,
    id_rol NUMBER(2) NOT NULL,
    id_departamento NUMBER(2) NOT NULL,
    id_locacion NUMBER(4) NOT NULL,
    CONSTRAINT fk_id_rol FOREIGN KEY (id_rol) REFERENCES Roles(id),
    CONSTRAINT fk_id_departamento FOREIGN KEY (id_departamento) REFERENCES Departamentos(id),
    CONSTRAINT fk_id_locacion FOREIGN KEY (id_locacion) REFERENCES Locaciones(id)
);

CREATE TABLE Municipios (
    id NUMBER(3) PRIMARY KEY,
    municipio VARCHAR(30) NOT NULL,
    id_departamento NUMBER(10) NOT NULL,
    CONSTRAINT fk_id_departamento FOREIGN KEY (id_departamento) REFERENCES Departamentos(id)
);

CREATE TABLE Direcciones (
    id NUMBER(6) PRIMARY KEY,
    direccion VARCHAR(15) NOT NULL,
    codigo_postal VARCHAR(5) NOT NULL,
    id_municipio NUMBER(3) NOT NULL,
    CONSTRAINT fk_id_municipio FOREIGN KEY (id_municipio) REFERENCES Municipios(id)
);

CREATE TABLE Agencias (
    id NUMBER(4) PRIMARY KEY,
    nombre VARCHAR(30) NOT NULL,
    id_locacion NUMBER(4) NOT NULL,
    id_direccion NUMBER(6) NOT NULL,
    telefono VARCHAR(15) NOT NULL,
    CONSTRAINT fk_id_locacion FOREIGN KEY (id_locacion) REFERENCES Locaciones(id),
    CONSTRAINT fk_id_direccion FOREIGN KEY (id_direccion) REFERENCES Direcciones(id)
);

CREATE TABLE Transacciones (
    id NUMBER(10) PRIMARY KEY,
    id_cliente NUMBER(8) NOT NULL,
    numero_origen NUMBER(6) NOT NULL,
    numero_destino NUMBER(6) NOT NULL,
    id_tipo_transaccion NUMBER(1) NOT NULL,
    monto NUMBER(5) NOT NULL,
    fecha DATE NOT NULL,
    hora TIME NOT NULL,
    descripcion VARCHAR(50) NOT NULL,
    id_locacion NUMBER(4) NOT NULL,
    CONSTRAINT fk_id_cliente FOREIGN KEY (id_cliente) REFERENCES Clientes(id),
    CONSTRAINT fk_id_tipo_transaccion FOREIGN KEY (id_tipo_transaccion) REFERENCES Tipos_transacciones(id),
    CONSTRAINT fk_id_locacion FOREIGN KEY (id_locacion) REFERENCES Locaciones(id)
);

-- Tipos
-- Locaciones
-- Empleados
-- Roles
-- Estados de prestamos
-- agencias
-- direcciones
-- municipios
-- departamentos
-- estados de tarjetas
-- prestamos
-- transacciones
-- tipos de transacciones
-- tarjeas de credito
-- clientes
-- cuentas
-- tipos de cuentas

-- Insersiones de datos para la tabla Tipos
INSERT INTO Tipos (id, instalacion) VALUES (1, 'Agencia');
INSERT INTO Tipos (id, instalacion) VALUES (2, 'Sucursal');
INSERT INTO Tipos (id, instalacion) VALUES (3, 'Oficina');

-- Insersiones de datos para la tabla Estado_prestamos
INSERT INTO Estado_prestamos (id, estado) VALUES (1, 'Activo');
INSERT INTO Estado_prestamos (id, estado) VALUES (2, 'Vencido');
INSERT INTO Estado_prestamos (id, estado) VALUES (3, 'Cancelado');

-- Insersiones de datos para la tabla Estado_tarjetas
INSERT INTO Estado_tarjetas (id, estado) VALUES (1, 'Activa');
INSERT INTO Estado_tarjetas (id, estado) VALUES (2, 'Bloqueada');
INSERT INTO Estado_tarjetas (id, estado) VALUES (3, 'Cancelada');

-- Insersiones de datos para la tabla Tipos_cuentas
INSERT INTO Tipos_cuentas (id, tipo) VALUES (1, 'Ahorro');
INSERT INTO Tipos_cuentas (id, tipo) VALUES (2, 'Corriente');
INSERT INTO Tipos_cuentas (id, tipo) VALUES (3, 'Plazo fijo');
INSERT INTO Tipos_cuentas (id, tipo) VALUES (4, 'Monetaria');

-- Insersiones de datos para la tabla Tipos_transacciones
INSERT INTO Tipos_transacciones (id, tipo) VALUES (1, 'Deposito');
INSERT INTO Tipos_transacciones (id, tipo) VALUES (2, 'Retiro');
INSERT INTO Tipos_transacciones (id, tipo) VALUES (3, 'Transferencia');
INSERT INTO Tipos_transacciones (id, tipo) VALUES (4, 'Pago');

-- Insersiones de datos para la tabla Departamentos
INSERT INTO Departamentos (id, departamento) VALUES (1, 'Guatemala');
INSERT INTO Departamentos (id, departamento) VALUES (2, 'El Progreso');
INSERT INTO Departamentos (id, departamento) VALUES (3, 'Sacatepéquez');
INSERT INTO Departamentos (id, departamento) VALUES (4, 'Chimaltenango');
INSERT INTO Departamentos (id, departamento) VALUES (5, 'Escuintla');
INSERT INTO Departamentos (id, departamento) VALUES (6, 'Santa Rosa');
INSERT INTO Departamentos (id, departamento) VALUES (7, 'Sololá');
INSERT INTO Departamentos (id, departamento) VALUES (8, 'Totonicapán');
INSERT INTO Departamentos (id, departamento) VALUES (9, 'Quetzaltenango');
INSERT INTO Departamentos (id, departamento) VALUES (10, 'Suchitepéquez');
INSERT INTO Departamentos (id, departamento) VALUES (11, 'Retalhuleu');
INSERT INTO Departamentos (id, departamento) VALUES (12, 'San Marcos');
INSERT INTO Departamentos (id, departamento) VALUES (13, 'Huehuetenango');
INSERT INTO Departamentos (id, departamento) VALUES (14, 'Quiché');
INSERT INTO Departamentos (id, departamento) VALUES (15, 'Baja Verapaz');
INSERT INTO Departamentos (id, departamento) VALUES (16, 'Alta Verapaz');
INSERT INTO Departamentos (id, departamento) VALUES (17, 'Petén');
INSERT INTO Departamentos (id, departamento) VALUES (18, 'Izabal');
INSERT INTO Departamentos (id, departamento) VALUES (19, 'Zacapa');
INSERT INTO Departamentos (id, departamento) VALUES (20, 'Chiquimula');
INSERT INTO Departamentos (id, departamento) VALUES (21, 'Jalapa');
INSERT INTO Departamentos (id, departamento) VALUES (22, 'Jutiapa');

-- Insersiones de datos para la tabla Roles
INSERT INTO Roles (id, rol) VALUES (1, 'Auditor Interno');
INSERT INTO Roles (id, rol) VALUES (2, 'Administrador');
INSERT INTO Roles (id, rol) VALUES (3, 'Atención al Cliente');
INSERT INTO Roles (id, rol) VALUES (4, 'Oficial de Crédito');
INSERT INTO Roles (id, rol) VALUES (5, 'Soporte Técnico');
INSERT INTO Roles (id, rol) VALUES (6, 'Asesor Financiero');
INSERT INTO Roles (id, rol) VALUES (7, 'Gerente de Sucursal');
INSERT INTO Roles (id, rol) VALUES (8, 'Ejecutivo de Cuentas');
INSERT INTO Roles (id, rol) VALUES (9, 'Cumplimiento');
INSERT INTO Roles (id, rol) VALUES (10, 'Cajero');

-- Insersiones de datos para la tabla Locaciones
INSERT INTO Locaciones (id, locacion, id_tipo) VALUES (1, 'Agencia 528', 1);
INSERT INTO Locaciones (id, locacion, id_tipo) VALUES (2, 'Sucursal 4', 1);
INSERT INTO Locaciones (id, locacion, id_tipo) VALUES (3, 'Oficina Central', 3);
INSERT INTO Locaciones (id, locacion, id_tipo) VALUES (4, 'Agencia 123', 1);
INSERT INTO Locaciones (id, locacion, id_tipo) VALUES (5, 'Sucursal 7', 2);
INSERT INTO Locaciones (id, locacion, id_tipo) VALUES (6, 'Oficina Regional', 3);
INSERT INTO Locaciones (id, locacion, id_tipo) VALUES (7, 'Agencia 456', 1);
INSERT INTO Locaciones (id, locacion, id_tipo) VALUES (8, 'Sucursal 9', 2);
INSERT INTO Locaciones (id, locacion, id_tipo) VALUES (9, 'Oficina Norte', 3);
INSERT INTO Locaciones (id, locacion, id_tipo) VALUES (10, 'Agencia 789', 1);

-- Insersiones de datos para la tabla Clientes
INSERT INTO Clientes (id, nombre, apellido, telefono) VALUES (1, 'Juan', 'Perez', '+502 12345-678');
INSERT INTO Clientes (id, nombre, apellido, telefono) VALUES (2, 'Maria', 'Gonzalez', '+502 8765-4321');
INSERT INTO Clientes (id, nombre, apellido, telefono) VALUES (3, 'Pedro', 'Rodriguez', '+502 4567-8912');
INSERT INTO Clientes (id, nombre, apellido, telefono) VALUES (4, 'Ana', 'Lopez', '+502 9876-5432');
INSERT INTO Clientes (id, nombre, apellido, telefono) VALUES (5, 'Carlos', 'Martinez', '+502 1231-2312');
INSERT INTO Clientes (id, nombre, apellido, telefono) VALUES (6, 'Luisa', 'Ramirez', '+502 3213-2132');
INSERT INTO Clientes (id, nombre, apellido, telefono) VALUES (7, 'Jorge', 'Hernandez', '+502 4564-5645');
INSERT INTO Clientes (id, nombre, apellido, telefono) VALUES (8, 'Sofia', 'Garcia', '+502 6546-5465');
INSERT INTO Clientes (id, nombre, apellido, telefono) VALUES (9, 'Miguel', 'Fernandez', '+502 7897-8978');
INSERT INTO Clientes (id, nombre, apellido, telefono) VALUES (10, 'Laura', 'Gomez', '+502 9879-8798');
INSERT INTO Clientes (id, nombre, apellido, telefono) VALUES (11, 'David', 'Diaz', '+502 1112-2233');
INSERT INTO Clientes (id, nombre, apellido, telefono) VALUES (12, 'Elena', 'Morales', '+502 3334-4455');
INSERT INTO Clientes (id, nombre, apellido, telefono) VALUES (13, 'Ricardo', 'Ortega', '+502 5556-6677');
INSERT INTO Clientes (id, nombre, apellido, telefono) VALUES (14, 'Patricia', 'Vargas', '+502 7778-8899');
INSERT INTO Clientes (id, nombre, apellido, telefono) VALUES (15, 'Roberto', 'Castillo', '+502 9990-0011');
INSERT INTO Clientes (id, nombre, apellido, telefono) VALUES (16, 'Fernando', 'Torres', '+502 1234-5678');
INSERT INTO Clientes (id, nombre, apellido, telefono) VALUES (17, 'Natalia', 'Cruz', '+502 2345-6789');
INSERT INTO Clientes (id, nombre, apellido, telefono) VALUES (18, 'Arturo', 'Rios', '+502 3456-7890');
INSERT INTO Clientes (id, nombre, apellido, telefono) VALUES (19, 'Valeria', 'Bermudez', '+502 4567-8901');
INSERT INTO Clientes (id, nombre, apellido, telefono) VALUES (20, 'Esteban', 'Salas', '+502 5678-9012');
INSERT INTO Clientes (id, nombre, apellido, telefono) VALUES (21, 'Carmen', 'Aguilar', '+502 6789-0123');
INSERT INTO Clientes (id, nombre, apellido, telefono) VALUES (22, 'Javier', 'Vazquez', '+502 7890-1234');
INSERT INTO Clientes (id, nombre, apellido, telefono) VALUES (23, 'Patricia', 'Gonzalez', '+502 8901-2345');
INSERT INTO Clientes (id, nombre, apellido, telefono) VALUES (24, 'Claudia', 'Hernandez', '+502 9012-3456');
INSERT INTO Clientes (id, nombre, apellido, telefono) VALUES (25, 'Felipe', 'Martinez', '+502 0123-4567');


-- Insersiones de datos para la tabla Cuentas
INSERT INTO Cuentas (id, numero_cuenta, saldo, id_tipo, id_cliente) VALUES (1, '70186741-1', 256848.49, 1, 1);
INSERT INTO Cuentas (id, numero_cuenta, saldo, id_tipo, id_cliente) VALUES (2, '42148275-2', 378588.21, 4, 2);
INSERT INTO Cuentas (id, numero_cuenta, saldo, id_tipo, id_cliente) VALUES (3, '74601803-4', 30357.74, 4, 4);
INSERT INTO Cuentas (id, numero_cuenta, saldo, id_tipo, id_cliente) VALUES (4, '18184518-5', 270027.60, 1, 5);
INSERT INTO Cuentas (id, numero_cuenta, saldo, id_tipo, id_cliente) VALUES (5, '30990159-7', 22124.56, 2, 7);
INSERT INTO Cuentas (id, numero_cuenta, saldo, id_tipo, id_cliente) VALUES (6, '95199340-8', 454642.04, 3, 8);
INSERT INTO Cuentas (id, numero_cuenta, saldo, id_tipo, id_cliente) VALUES (7, '73918292-10', 221838.88, 1, 10);
INSERT INTO Cuentas (id, numero_cuenta, saldo, id_tipo, id_cliente) VALUES (8, '74733811-13', 1396.62, 2, 13);
INSERT INTO Cuentas (id, numero_cuenta, saldo, id_tipo, id_cliente) VALUES (9, '92660876-15', 1863.95, 4, 15);
INSERT INTO Cuentas (id, numero_cuenta, saldo, id_tipo, id_cliente) VALUES (10, '56773356-17', 32902.85, 3, 17);
INSERT INTO Cuentas (id, numero_cuenta, saldo, id_tipo, id_cliente) VALUES (11, '14336890-19', 258026.54, 1, 19);
INSERT INTO Cuentas (id, numero_cuenta, saldo, id_tipo, id_cliente) VALUES (12, '95106634-21', 49903.30, 1, 21);
INSERT INTO Cuentas (id, numero_cuenta, saldo, id_tipo, id_cliente) VALUES (13, '99889802-20', 478977.38, 3, 20);
INSERT INTO Cuentas (id, numero_cuenta, saldo, id_tipo, id_cliente) VALUES (14, '27531899-22', 69878.30, 2, 22);
INSERT INTO Cuentas (id, numero_cuenta, saldo, id_tipo, id_cliente) VALUES (15, '37681508-25', 422632.67, 3, 25);
INSERT INTO Cuentas (id, numero_cuenta, saldo, id_tipo, id_cliente) VALUES (16, '32851234-26', 55000.00, 1, 2);
INSERT INTO Cuentas (id, numero_cuenta, saldo, id_tipo, id_cliente) VALUES (17, '12345678-27', 30000.00, 2, 4);
INSERT INTO Cuentas (id, numero_cuenta, saldo, id_tipo, id_cliente) VALUES (18, '87654321-28', 150000.00, 4, 9);
INSERT INTO Cuentas (id, numero_cuenta, saldo, id_tipo, id_cliente) VALUES (19, '45678912-29', 60000.00, 1, 10);
INSERT INTO Cuentas (id, numero_cuenta, saldo, id_tipo, id_cliente) VALUES (20, '78912345-30', 90000.00, 1, 3);
INSERT INTO Cuentas (id, numero_cuenta, saldo, id_tipo, id_cliente) VALUES (21, '32165498-31', 120000.00, 2, 1);
INSERT INTO Cuentas (id, numero_cuenta, saldo, id_tipo, id_cliente) VALUES (22, '65432109-32', 80000.00, 4, 11);
INSERT INTO Cuentas (id, numero_cuenta, saldo, id_tipo, id_cliente) VALUES (23, '98765432-33', 45000.00, 1, 7);



-- Insersiones de datos para la tabla Prestamos
INSERT INTO Prestamos (id, id_cliente, monto, tasa_intere, fecha_deseembolso, fecha_vencimiento, saldo_pendiente, id_estado)
VALUES (1, 5, 964203.64, 6.63, TO_DATE('2023-11-19', 'YYYY-MM-DD'), TO_DATE('2032-06-06', 'YYYY-MM-DD'), 674174.18, 2);

INSERT INTO Prestamos (id, id_cliente, monto, tasa_intere, fecha_deseembolso, fecha_vencimiento, saldo_pendiente, id_estado)
VALUES (2, 7, 811935.67, 13.42, TO_DATE('2023-05-07', 'YYYY-MM-DD'), TO_DATE('2028-08-29', 'YYYY-MM-DD'), 756664.53, 1);

INSERT INTO Prestamos (id, id_cliente, monto, tasa_intere, fecha_deseembolso, fecha_vencimiento, saldo_pendiente, id_estado)
VALUES (3, 10, 961457.89, 13.68, TO_DATE('2021-10-28', 'YYYY-MM-DD'), TO_DATE('2030-03-10', 'YYYY-MM-DD'), 200162.19, 2);

INSERT INTO Prestamos (id, id_cliente, monto, tasa_intere, fecha_deseembolso, fecha_vencimiento, saldo_pendiente, id_estado)
VALUES (4, 3, 78869.24, 11.42, TO_DATE('2023-05-14', 'YYYY-MM-DD'), TO_DATE('2026-12-17', 'YYYY-MM-DD'), 67546.61, 2);

INSERT INTO Prestamos (id, id_cliente, monto, tasa_intere, fecha_deseembolso, fecha_vencimiento, saldo_pendiente, id_estado)
VALUES (5, 8, 456168.05, 6.93, TO_DATE('2020-05-18', 'YYYY-MM-DD'), TO_DATE('2026-07-08', 'YYYY-MM-DD'), 729762.37, 1);

INSERT INTO Prestamos (id, id_cliente, monto, tasa_intere, fecha_deseembolso, fecha_vencimiento, saldo_pendiente, id_estado)
VALUES (6, 12, 11769.26, 7.77, TO_DATE('2022-09-11', 'YYYY-MM-DD'), TO_DATE('2025-10-06', 'YYYY-MM-DD'), 737055.62, 3);

INSERT INTO Prestamos (id, id_cliente, monto, tasa_intere, fecha_deseembolso, fecha_vencimiento, saldo_pendiente, id_estado)
VALUES (7, 15, 208520.33, 13.06, TO_DATE('2023-01-29', 'YYYY-MM-DD'), TO_DATE('2026-04-12', 'YYYY-MM-DD'), 839598.77, 2);

INSERT INTO Prestamos (id, id_cliente, monto, tasa_intere, fecha_deseembolso, fecha_vencimiento, saldo_pendiente, id_estado)
VALUES (8, 2, 223088.53, 8.21, TO_DATE('2019-09-16', 'YYYY-MM-DD'), TO_DATE('2021-10-04', 'YYYY-MM-DD'), 830010.68, 3);

INSERT INTO Prestamos (id, id_cliente, monto, tasa_intere, fecha_deseembolso, fecha_vencimiento, saldo_pendiente, id_estado)
VALUES (9, 9, 262202.99, 3.81, TO_DATE('2021-07-25', 'YYYY-MM-DD'), TO_DATE('2024-01-28', 'YYYY-MM-DD'), 686674.94, 1);

INSERT INTO Prestamos (id, id_cliente, monto, tasa_intere, fecha_deseembolso, fecha_vencimiento, saldo_pendiente, id_estado)
VALUES (10, 4, 562359.87, 3.65, TO_DATE('2023-11-16', 'YYYY-MM-DD'), TO_DATE('2026-07-20', 'YYYY-MM-DD'), 914873.92, 2);

INSERT INTO Prestamos (id, id_cliente, monto, tasa_intere, fecha_deseembolso, fecha_vencimiento, saldo_pendiente, id_estado)
VALUES (11, 1, 913002.99, 7.91, TO_DATE('2023-05-16', 'YYYY-MM-DD'), TO_DATE('2028-07-13', 'YYYY-MM-DD'), 877233.3, 1);

INSERT INTO Prestamos (id, id_cliente, monto, tasa_intere, fecha_deseembolso, fecha_vencimiento, saldo_pendiente, id_estado)
VALUES (12, 6, 470031.61, 13.02, TO_DATE('2023-01-07', 'YYYY-MM-DD'), TO_DATE('2031-02-10', 'YYYY-MM-DD'), 5221.76, 3);

INSERT INTO Prestamos (id, id_cliente, monto, tasa_intere, fecha_deseembolso, fecha_vencimiento, saldo_pendiente, id_estado)
VALUES (13, 11, 797323.26, 5.98, TO_DATE('2022-02-26', 'YYYY-MM-DD'), TO_DATE('2029-10-18', 'YYYY-MM-DD'), 19466.16, 3);

INSERT INTO Prestamos (id, id_cliente, monto, tasa_intere, fecha_deseembolso, fecha_vencimiento, saldo_pendiente, id_estado)
VALUES (14, 13, 115264.37, 14.81, TO_DATE('2021-11-15', 'YYYY-MM-DD'), TO_DATE('2028-08-06', 'YYYY-MM-DD'), 451255.89, 3);

INSERT INTO Prestamos (id, id_cliente, monto, tasa_intere, fecha_deseembolso, fecha_vencimiento, saldo_pendiente, id_estado)
VALUES (15, 14, 925922.12, 7.07, TO_DATE('2020-10-19', 'YYYY-MM-DD'), TO_DATE('2026-12-09', 'YYYY-MM-DD'), 917997.27, 3);

-- Insersiones de datos para la tabla Tarjetas
INSERT INTO Tarjetas (id, id_cliente, numero_tarjeta, limimte_credito, saldo_actual, fecha_emision, fecha_vencimiento, id_estado, fecha_corte, dia_ciclo)
VALUES (1, 3, '4872410269895827', 4344.96, 20358.67, TO_DATE('2022-02-09', 'YYYY-MM-DD'), TO_DATE('2025-05-04', 'YYYY-MM-DD'), 2, TO_DATE('2022-03-06', 'YYYY-MM-DD'), 6);

INSERT INTO Tarjetas (id, id_cliente, numero_tarjeta, limimte_credito, saldo_actual, fecha_emision, fecha_vencimiento, id_estado, fecha_corte, dia_ciclo)
VALUES (2, 15, '4780431200473540', 48263.8, 12583.92, TO_DATE('2021-04-29', 'YYYY-MM-DD'), TO_DATE('2025-11-10', 'YYYY-MM-DD'), 1, TO_DATE('2021-05-26', 'YYYY-MM-DD'), 26);

INSERT INTO Tarjetas (id, id_cliente, numero_tarjeta, limimte_credito, saldo_actual, fecha_emision, fecha_vencimiento, id_estado, fecha_corte, dia_ciclo)
VALUES (3, 2, '4653562424107275', 37894.69, 16274.3, TO_DATE('2021-12-10', 'YYYY-MM-DD'), TO_DATE('2026-08-08', 'YYYY-MM-DD'), 2, TO_DATE('2022-01-08', 'YYYY-MM-DD'), 8);

INSERT INTO Tarjetas (id, id_cliente, numero_tarjeta, limimte_credito, saldo_actual, fecha_emision, fecha_vencimiento, id_estado, fecha_corte, dia_ciclo)
VALUES (4, 1, '4935123661880312', 3610.3, 31113.15, TO_DATE('2020-11-21', 'YYYY-MM-DD'), TO_DATE('2025-07-26', 'YYYY-MM-DD'), 2, TO_DATE('2020-12-18', 'YYYY-MM-DD'), 18);

INSERT INTO Tarjetas (id, id_cliente, numero_tarjeta, limimte_credito, saldo_actual, fecha_emision, fecha_vencimiento, id_estado, fecha_corte, dia_ciclo)
VALUES (5, 4, '4918591621061050', 35118.01, 5054.92, TO_DATE('2023-10-06', 'YYYY-MM-DD'), TO_DATE('2028-02-05', 'YYYY-MM-DD'), 3, TO_DATE('2023-11-05', 'YYYY-MM-DD'), 5);

INSERT INTO Tarjetas (id, id_cliente, numero_tarjeta, limimte_credito, saldo_actual, fecha_emision, fecha_vencimiento, id_estado, fecha_corte, dia_ciclo)
VALUES (6, 5, '4378520539795383', 5109.03, 3686.69, TO_DATE('2022-11-21', 'YYYY-MM-DD'), TO_DATE('2026-08-19', 'YYYY-MM-DD'), 3, TO_DATE('2022-12-14', 'YYYY-MM-DD'), 14);

INSERT INTO Tarjetas (id, id_cliente, numero_tarjeta, limimte_credito, saldo_actual, fecha_emision, fecha_vencimiento, id_estado, fecha_corte, dia_ciclo)
VALUES (7, 6, '4581870605290993', 42128.4, 17459.5, TO_DATE('2020-07-04', 'YYYY-MM-DD'), TO_DATE('2025-04-21', 'YYYY-MM-DD'), 3, TO_DATE('2020-07-25', 'YYYY-MM-DD'), 25);

INSERT INTO Tarjetas (id, id_cliente, numero_tarjeta, limimte_credito, saldo_actual, fecha_emision, fecha_vencimiento, id_estado, fecha_corte, dia_ciclo)
VALUES (8, 10, '4807500082737884', 48150.36, 19235.82, TO_DATE('2022-01-13', 'YYYY-MM-DD'), TO_DATE('2026-04-20', 'YYYY-MM-DD'), 2, TO_DATE('2022-02-06', 'YYYY-MM-DD'), 6);

INSERT INTO Tarjetas (id, id_cliente, numero_tarjeta, limimte_credito, saldo_actual, fecha_emision, fecha_vencimiento, id_estado, fecha_corte, dia_ciclo)
VALUES (9, 12, '4174113245817380', 37901.82, 14255.74, TO_DATE('2020-12-29', 'YYYY-MM-DD'), TO_DATE('2024-07-25', 'YYYY-MM-DD'), 2, TO_DATE('2021-01-22', 'YYYY-MM-DD'), 22);

INSERT INTO Tarjetas (id, id_cliente, numero_tarjeta, limimte_credito, saldo_actual, fecha_emision, fecha_vencimiento, id_estado, fecha_corte, dia_ciclo)
VALUES (10, 7, '4617314737376801', 32143.79, 10600.77, TO_DATE('2024-03-31', 'YYYY-MM-DD'), TO_DATE('2028-05-28', 'YYYY-MM-DD'), 2, TO_DATE('2024-04-23', 'YYYY-MM-DD'), 23);

-- Insersiones de datos para la tabla Empleados
INSERT INTO Empleados (id, nombre, apellido, telefono, id_rol, id_departamento, id_locacion)
VALUES (1, 'Juan', 'Perez', '+502 12345-678', 1, 1, 1);

INSERT INTO Empleados (id, nombre, apellido, telefono, id_rol, id_departamento, id_locacion)
VALUES (2, 'Maria', 'Gonzalez', '+502 8765-4321', 2, 1, 2);

INSERT INTO Empleados (id, nombre, apellido, telefono, id_rol, id_departamento, id_locacion)
VALUES (3, 'Pedro', 'Rodriguez', '+502 4567-8912', 3, 3, 3);

INSERT INTO Empleados (id, nombre, apellido, telefono, id_rol, id_departamento, id_locacion)
VALUES (4, 'Ana', 'Lopez', '+502 9876-5432', 4, 4, 4);

INSERT INTO Empleados (id, nombre, apellido, telefono, id_rol, id_departamento, id_locacion)
VALUES (5, 'Carlos', 'Martinez', '+502 1231-2312', 5, 5, 5);

INSERT INTO Empleados (id, nombre, apellido, telefono, id_rol, id_departamento, id_locacion)
VALUES (6, 'Luisa', 'Ramirez', '+502 3213-2132', 6, 6, 6);

INSERT INTO Empleados (id, nombre, apellido, telefono, id_rol, id_departamento, id_locacion)
VALUES (7, 'Jorge', 'Hernandez', '+502 4564-5645', 7, 7, 7);

INSERT INTO Empleados (id, nombre, apellido, telefono, id_rol, id_departamento, id_locacion)
VALUES (8, 'Sofia', 'Garcia', '+502 6546-5465', 8, 8, 8);

INSERT INTO Empleados (id, nombre, apellido, telefono, id_rol, id_departamento, id_locacion)
VALUES (9, 'Miguel', 'Fernandez', '+502 7897-8978', 9, 9, 9);

INSERT INTO Empleados (id, nombre, apellido, telefono, id_rol, id_departamento, id_locacion)
VALUES (10, 'Laura', 'Gomez', '+502 9879-8798', 10, 10, 10);

-- Insersiones de datos para la tabla Municipios

--DROP TABLE Tipos; para eliminar
