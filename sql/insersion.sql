-- Insersiones de datos para la tabla Tipos
INSERT INTO Tipos (id_tipo, instalacion) VALUES (1, 'Agencia');
INSERT INTO Tipos (id_tipo, instalacion) VALUES (2, 'Sucursal');
INSERT INTO Tipos (id_tipo, instalacion) VALUES (3, 'Oficina');

-- Insersiones de datos para la tabla Estado_prestamos
INSERT INTO Estado_prestamos (id_estado_prestamo, estado) VALUES (1, 'Activo');
INSERT INTO Estado_prestamos (id_estado_prestamo, estado) VALUES (2, 'Vencido');
INSERT INTO Estado_prestamos (id_estado_prestamo, estado) VALUES (3, 'Cancelado');

-- Insersiones de datos para la tabla Estado_tarjetas
INSERT INTO Estado_tarjetas (id_estado_tarjeta, estado) VALUES (1, 'Activa');
INSERT INTO Estado_tarjetas (id_estado_tarjeta, estado) VALUES (2, 'Bloqueada');
INSERT INTO Estado_tarjetas (id_estado_tarjeta, estado) VALUES (3, 'Cancelada');

-- Insersiones de datos para la tabla Tipos_cuentas
INSERT INTO Tipos_cuentas (id_tipo_cuenta, tipo) VALUES (1, 'Ahorro');
INSERT INTO Tipos_cuentas (id_tipo_cuenta, tipo) VALUES (2, 'Corriente');
INSERT INTO Tipos_cuentas (id_tipo_cuenta, tipo) VALUES (3, 'Plazo fijo');
INSERT INTO Tipos_cuentas (id_tipo_cuenta, tipo) VALUES (4, 'Monetaria');

-- Insersiones de datos para la tabla Tipos_transacciones
INSERT INTO Tipos_transacciones (id_tipo_transaccion, tipo) VALUES (1, 'Deposito');
INSERT INTO Tipos_transacciones (id_tipo_transaccion, tipo) VALUES (2, 'Retiro');
INSERT INTO Tipos_transacciones (id_tipo_transaccion, tipo) VALUES (3, 'Transferencia');
INSERT INTO Tipos_transacciones (id_tipo_transaccion, tipo) VALUES (4, 'Pago');

-- Insersiones de datos para la tabla Departamentid_tipo_transaccion
INSERT INTO Departamentos (id_departamento, departamento) VALUES (1, 'Guatemala');
INSERT INTO Departamentos (id_departamento, departamento) VALUES (2, 'El Progreso');
INSERT INTO Departamentos (id_departamento, departamento) VALUES (3, 'Sacatepéquez');
INSERT INTO Departamentos (id_departamento, departamento) VALUES (4, 'Chimaltenango');
INSERT INTO Departamentos (id_departamento, departamento) VALUES (5, 'Escuintla');
INSERT INTO Departamentos (id_departamento, departamento) VALUES (6, 'Santa Rosa');
INSERT INTO Departamentos (id_departamento, departamento) VALUES (7, 'Sololá');
INSERT INTO Departamentos (id_departamento, departamento) VALUES (8, 'Totonicapán');
INSERT INTO Departamentos (id_departamento, departamento) VALUES (9, 'Quetzaltenango');
INSERT INTO Departamentos (id_departamento, departamento) VALUES (10, 'Suchitepéquez');
INSERT INTO Departamentos (id_departamento, departamento) VALUES (11, 'Retalhuleu');
INSERT INTO Departamentos (id_departamento, departamento) VALUES (12, 'San Marcos');
INSERT INTO Departamentos (id_departamento, departamento) VALUES (13, 'Huehuetenango');
INSERT INTO Departamentos (id_departamento, departamento) VALUES (14, 'Quiché');
INSERT INTO Departamentos (id_departamento, departamento) VALUES (15, 'Baja Verapaz');
INSERT INTO Departamentos (id_departamento, departamento) VALUES (16, 'Alta Verapaz');
INSERT INTO Departamentos (id_departamento, departamento) VALUES (17, 'Petén');
INSERT INTO Departamentos (id_departamento, departamento) VALUES (18, 'Izabal');
INSERT INTO Departamentos (id_departamento, departamento) VALUES (19, 'Zacapa');
INSERT INTO Departamentos (id_departamento, departamento) VALUES (20, 'Chiquimula');
INSERT INTO Departamentos (id_departamento, departamento) VALUES (21, 'Jalapa');
INSERT INTO Departamentos (id_departamento, departamento) VALUES (22, 'Jutiapa');

-- Insersiones de datos para la tabla Roles
INSERT INTO Roles (id_rol, rol) VALUES (1, 'Auditor Interno');
INSERT INTO Roles (id_rol, rol) VALUES (2, 'Administrador');
INSERT INTO Roles (id_rol, rol) VALUES (3, 'Atención al Cliente');
INSERT INTO Roles (id_rol, rol) VALUES (4, 'Oficial de Crédito');
INSERT INTO Roles (id_rol, rol) VALUES (5, 'Soporte Técnico');
INSERT INTO Roles (id_rol, rol) VALUES (6, 'Asesor Financiero');
INSERT INTO Roles (id_rol, rol) VALUES (7, 'Gerente de Sucursal');
INSERT INTO Roles (id_rol, rol) VALUES (8, 'Ejecutivo de Cuentas');
INSERT INTO Roles (id_rol, rol) VALUES (9, 'Cumplimiento');
INSERT INTO Roles (id_rol, rol) VALUES (10, 'Cajero');

-- Insersiones de datos para la tabla Locaciones
INSERT INTO Locaciones (id_tipo, locacion, id_tipo) VALUES (1, 'Agencia 528', 1);
INSERT INTO Locaciones (id_tipo, locacion, id_tipo) VALUES (2, 'Sucursal 4', 1);
INSERT INTO Locaciones (id_tipo, locacion, id_tipo) VALUES (3, 'Oficina Central', 3);
INSERT INTO Locaciones (id_tipo, locacion, id_tipo) VALUES (4, 'Agencia 123', 1);
INSERT INTO Locaciones (id_tipo, locacion, id_tipo) VALUES (5, 'Sucursal 7', 2);
INSERT INTO Locaciones (id_tipo, locacion, id_tipo) VALUES (6, 'Oficina Regional', 3);
INSERT INTO Locaciones (id_tipo, locacion, id_tipo) VALUES (7, 'Agencia 456', 1);
INSERT INTO Locaciones (id_tipo, locacion, id_tipo) VALUES (8, 'Sucursal 9', 2);
INSERT INTO Locaciones (id_tipo, locacion, id_tipo) VALUES (9, 'Oficina Norte', 3);
INSERT INTO Locaciones (id_tipo, locacion, id_tipo) VALUES (10, 'Agencia 789', 1);

-- Insersiones de datos para la tabla Clientes
INSERT INTO Clientes (id_cliente, nombre, apellido, telefono) VALUES (1, 'Juan', 'Perez', '+502 12345-678');
INSERT INTO Clientes (id_cliente, nombre, apellido, telefono) VALUES (2, 'Maria', 'Gonzalez', '+502 8765-4321');
INSERT INTO Clientes (id_cliente, nombre, apellido, telefono) VALUES (3, 'Pedro', 'Rodriguez', '+502 4567-8912');
INSERT INTO Clientes (id_cliente, nombre, apellido, telefono) VALUES (4, 'Ana', 'Lopez', '+502 9876-5432');
INSERT INTO Clientes (id_cliente, nombre, apellido, telefono) VALUES (5, 'Carlos', 'Martinez', '+502 1231-2312');
INSERT INTO Clientes (id_cliente, nombre, apellido, telefono) VALUES (6, 'Luisa', 'Ramirez', '+502 3213-2132');
INSERT INTO Clientes (id_cliente, nombre, apellido, telefono) VALUES (7, 'Jorge', 'Hernandez', '+502 4564-5645');
INSERT INTO Clientes (id_cliente, nombre, apellido, telefono) VALUES (8, 'Sofia', 'Garcia', '+502 6546-5465');
INSERT INTO Clientes (id_cliente, nombre, apellido, telefono) VALUES (9, 'Miguel', 'Fernandez', '+502 7897-8978');
INSERT INTO Clientes (id_cliente, nombre, apellido, telefono) VALUES (10, 'Laura', 'Gomez', '+502 9879-8798');
INSERT INTO Clientes (id_cliente, nombre, apellido, telefono) VALUES (11, 'David', 'Diaz', '+502 1112-2233');
INSERT INTO Clientes (id_cliente, nombre, apellido, telefono) VALUES (12, 'Elena', 'Morales', '+502 3334-4455');
INSERT INTO Clientes (id_cliente, nombre, apellido, telefono) VALUES (13, 'Ricardo', 'Ortega', '+502 5556-6677');
INSERT INTO Clientes (id_cliente, nombre, apellido, telefono) VALUES (14, 'Patricia', 'Vargas', '+502 7778-8899');
INSERT INTO Clientes (id_cliente, nombre, apellido, telefono) VALUES (15, 'Roberto', 'Castillo', '+502 9990-0011');
INSERT INTO Clientes (id_cliente, nombre, apellido, telefono) VALUES (16, 'Fernando', 'Torres', '+502 1234-5678');
INSERT INTO Clientes (id_cliente, nombre, apellido, telefono) VALUES (17, 'Natalia', 'Cruz', '+502 2345-6789');
INSERT INTO Clientes (id_cliente, nombre, apellido, telefono) VALUES (18, 'Arturo', 'Rios', '+502 3456-7890');
INSERT INTO Clientes (id_cliente, nombre, apellido, telefono) VALUES (19, 'Valeria', 'Bermudez', '+502 4567-8901');
INSERT INTO Clientes (id_cliente, nombre, apellido, telefono) VALUES (20, 'Esteban', 'Salas', '+502 5678-9012');
INSERT INTO Clientes (id_cliente, nombre, apellido, telefono) VALUES (21, 'Carmen', 'Aguilar', '+502 6789-0123');
INSERT INTO Clientes (id_cliente, nombre, apellido, telefono) VALUES (22, 'Javier', 'Vazquez', '+502 7890-1234');
INSERT INTO Clientes (id_cliente, nombre, apellido, telefono) VALUES (23, 'Patricia', 'Gonzalez', '+502 8901-2345');
INSERT INTO Clientes (id_cliente, nombre, apellido, telefono) VALUES (24, 'Claudia', 'Hernandez', '+502 9012-3456');
INSERT INTO Clientes (id_cliente, nombre, apellido, telefono) VALUES (25, 'Felipe', 'Martinez', '+502 0123-4567');

-- Insersiones de datos para la tabla Cuentas
INSERT INTO Cuentas (id_cuenta, numero_cuenta, saldo, id_tipo_cuenta, id_cliente) VALUES (1, '70186741-1', 256848.49, 1, 1);
INSERT INTO Cuentas (id_cuenta, numero_cuenta, saldo, id_tipo_cuenta, id_cliente) VALUES (2, '42148275-2', 378588.21, 4, 2);
INSERT INTO Cuentas (id_cuenta, numero_cuenta, saldo, id_tipo_cuenta, id_cliente) VALUES (3, '74601803-4', 30357.74, 4, 4);
INSERT INTO Cuentas (id_cuenta, numero_cuenta, saldo, id_tipo_cuenta, id_cliente) VALUES (4, '18184518-5', 270027.60, 1, 5);
INSERT INTO Cuentas (id_cuenta, numero_cuenta, saldo, id_tipo_cuenta, id_cliente) VALUES (5, '30990159-7', 22124.56, 2, 7);
INSERT INTO Cuentas (id_cuenta, numero_cuenta, saldo, id_tipo_cuenta, id_cliente) VALUES (6, '95199340-8', 454642.04, 3, 8);
INSERT INTO Cuentas (id_cuenta, numero_cuenta, saldo, id_tipo_cuenta, id_cliente) VALUES (7, '73918292-10', 221838.88, 1, 10);
INSERT INTO Cuentas (id_cuenta, numero_cuenta, saldo, id_tipo_cuenta, id_cliente) VALUES (8, '74733811-13', 1396.62, 2, 13);
INSERT INTO Cuentas (id_cuenta, numero_cuenta, saldo, id_tipo_cuenta, id_cliente) VALUES (9, '92660876-15', 1863.95, 4, 15);
INSERT INTO Cuentas (id_cuenta, numero_cuenta, saldo, id_tipo_cuenta, id_cliente) VALUES (10, '56773356-17', 32902.85, 3, 17);
INSERT INTO Cuentas (id_cuenta, numero_cuenta, saldo, id_tipo_cuenta, id_cliente) VALUES (11, '14336890-19', 258026.54, 1, 19);
INSERT INTO Cuentas (id_cuenta, numero_cuenta, saldo, id_tipo_cuenta, id_cliente) VALUES (12, '95106634-21', 49903.30, 1, 21);
INSERT INTO Cuentas (id_cuenta, numero_cuenta, saldo, id_tipo_cuenta, id_cliente) VALUES (13, '99889802-20', 478977.38, 3, 20);
INSERT INTO Cuentas (id_cuenta, numero_cuenta, saldo, id_tipo_cuenta, id_cliente) VALUES (14, '27531899-22', 69878.30, 2, 22);
INSERT INTO Cuentas (id_cuenta, numero_cuenta, saldo, id_tipo_cuenta, id_cliente) VALUES (15, '37681508-25', 422632.67, 3, 25);
INSERT INTO Cuentas (id_cuenta, numero_cuenta, saldo, id_tipo_cuenta, id_cliente) VALUES (16, '32851234-26', 55000.00, 1, 2);
INSERT INTO Cuentas (id_cuenta, numero_cuenta, saldo, id_tipo_cuenta, id_cliente) VALUES (17, '12345678-27', 30000.00, 2, 4);
INSERT INTO Cuentas (id_cuenta, numero_cuenta, saldo, id_tipo_cuenta, id_cliente) VALUES (18, '87654321-28', 150000.00, 4, 9);
INSERT INTO Cuentas (id_cuenta, numero_cuenta, saldo, id_tipo_cuenta, id_cliente) VALUES (19, '45678912-29', 60000.00, 1, 10);
INSERT INTO Cuentas (id_cuenta, numero_cuenta, saldo, id_tipo_cuenta, id_cliente) VALUES (20, '78912345-30', 90000.00, 1, 3);
INSERT INTO Cuentas (id_cuenta, numero_cuenta, saldo, id_tipo_cuenta, id_cliente) VALUES (21, '32165498-31', 120000.00, 2, 1);
INSERT INTO Cuentas (id_cuenta, numero_cuenta, saldo, id_tipo_cuenta, id_cliente) VALUES (22, '65432109-32', 80000.00, 4, 11);
INSERT INTO Cuentas (id_cuenta, numero_cuenta, saldo, id_tipo_cuenta, id_cliente) VALUES (23, '98765432-33', 45000.00, 1, 7);

-- Insersiones de datos para la tabla Prestamos
INSERT INTO Prestamos (id_prestamo, id_cliente, monto, tasa_intere, fecha_desembolso, fecha_vencimiento, saldo_pendiente, id_estado_prestamo)
VALUES (1, 5, 964203.64, 6.63, TO_DATE('2023-11-19', 'YYYY-MM-DD'), TO_DATE('2032-06-06', 'YYYY-MM-DD'), 674174.18, 2);

INSERT INTO Prestamos (id_prestamo, id_cliente, monto, tasa_intere, fecha_desembolso, fecha_vencimiento, saldo_pendiente, id_estado_prestamo)
VALUES (2, 7, 811935.67, 13.42, TO_DATE('2023-05-07', 'YYYY-MM-DD'), TO_DATE('2028-08-29', 'YYYY-MM-DD'), 756664.53, 1);

INSERT INTO Prestamos (id_prestamo, id_cliente, monto, tasa_intere, fecha_desembolso, fecha_vencimiento, saldo_pendiente, id_estado_prestamo)
VALUES (3, 10, 961457.89, 13.68, TO_DATE('2021-10-28', 'YYYY-MM-DD'), TO_DATE('2030-03-10', 'YYYY-MM-DD'), 200162.19, 2);

INSERT INTO Prestamos (id_prestamo, id_cliente, monto, tasa_intere, fecha_desembolso, fecha_vencimiento, saldo_pendiente, id_estado_prestamo)
VALUES (4, 3, 78869.24, 11.42, TO_DATE('2023-05-14', 'YYYY-MM-DD'), TO_DATE('2026-12-17', 'YYYY-MM-DD'), 67546.61, 2);

INSERT INTO Prestamos (id_prestamo, id_cliente, monto, tasa_intere, fecha_desembolso, fecha_vencimiento, saldo_pendiente, id_estado_prestamo)
VALUES (5, 8, 456168.05, 6.93, TO_DATE('2020-05-18', 'YYYY-MM-DD'), TO_DATE('2026-07-08', 'YYYY-MM-DD'), 729762.37, 1);

INSERT INTO Prestamos (id_prestamo, id_cliente, monto, tasa_intere, fecha_desembolso, fecha_vencimiento, saldo_pendiente, id_estado_prestamo)
VALUES (6, 12, 11769.26, 7.77, TO_DATE('2022-09-11', 'YYYY-MM-DD'), TO_DATE('2025-10-06', 'YYYY-MM-DD'), 737055.62, 3);

INSERT INTO Prestamos (id_prestamo, id_cliente, monto, tasa_intere, fecha_desembolso, fecha_vencimiento, saldo_pendiente, id_estado_prestamo)
VALUES (7, 15, 208520.33, 13.06, TO_DATE('2023-01-29', 'YYYY-MM-DD'), TO_DATE('2026-04-12', 'YYYY-MM-DD'), 839598.77, 2);

INSERT INTO Prestamos (id_prestamo, id_cliente, monto, tasa_intere, fecha_desembolso, fecha_vencimiento, saldo_pendiente, id_estado_prestamo)
VALUES (8, 2, 223088.53, 8.21, TO_DATE('2019-09-16', 'YYYY-MM-DD'), TO_DATE('2021-10-04', 'YYYY-MM-DD'), 830010.68, 3);

INSERT INTO Prestamos (id_prestamo, id_cliente, monto, tasa_intere, fecha_desembolso, fecha_vencimiento, saldo_pendiente, id_estado_prestamo)
VALUES (9, 9, 262202.99, 3.81, TO_DATE('2021-07-25', 'YYYY-MM-DD'), TO_DATE('2024-01-28', 'YYYY-MM-DD'), 686674.94, 1);

INSERT INTO Prestamos (id_prestamo, id_cliente, monto, tasa_intere, fecha_desembolso, fecha_vencimiento, saldo_pendiente, id_estado_prestamo)
VALUES (10, 4, 562359.87, 3.65, TO_DATE('2023-11-16', 'YYYY-MM-DD'), TO_DATE('2026-07-20', 'YYYY-MM-DD'), 914873.92, 2);

INSERT INTO Prestamos (id_prestamo, id_cliente, monto, tasa_intere, fecha_desembolso, fecha_vencimiento, saldo_pendiente, id_estado_prestamo)
VALUES (11, 1, 913002.99, 7.91, TO_DATE('2023-05-16', 'YYYY-MM-DD'), TO_DATE('2028-07-13', 'YYYY-MM-DD'), 877233.3, 1);

INSERT INTO Prestamos (id_prestamo, id_cliente, monto, tasa_intere, fecha_desembolso, fecha_vencimiento, saldo_pendiente, id_estado_prestamo)
VALUES (12, 6, 470031.61, 13.02, TO_DATE('2023-01-07', 'YYYY-MM-DD'), TO_DATE('2031-02-10', 'YYYY-MM-DD'), 5221.76, 3);

INSERT INTO Prestamos (id_prestamo, id_cliente, monto, tasa_intere, fecha_desembolso, fecha_vencimiento, saldo_pendiente, id_estado_prestamo)
VALUES (13, 11, 797323.26, 5.98, TO_DATE('2022-02-26', 'YYYY-MM-DD'), TO_DATE('2029-10-18', 'YYYY-MM-DD'), 19466.16, 3);

INSERT INTO Prestamos (id_prestamo, id_cliente, monto, tasa_intere, fecha_desembolso, fecha_vencimiento, saldo_pendiente, id_estado_prestamo)
VALUES (14, 13, 115264.37, 14.81, TO_DATE('2021-11-15', 'YYYY-MM-DD'), TO_DATE('2028-08-06', 'YYYY-MM-DD'), 451255.89, 3);

INSERT INTO Prestamos (id_prestamo, id_cliente, monto, tasa_intere, fecha_desembolso, fecha_vencimiento, saldo_pendiente, id_estado_prestamo)
VALUES (15, 14, 925922.12, 7.07, TO_DATE('2020-10-19', 'YYYY-MM-DD'), TO_DATE('2026-12-09', 'YYYY-MM-DD'), 917997.27, 3);

-- Insersiones de datos para la tabla Tarjetas
INSERT INTO Tarjetas (id_tarjeta, id_cliente, numero_tarjeta, limite_credito, saldo_actual, fecha_emision, fecha_vencimiento, id_estado_tarjeta, fecha_corte, dia_ciclo)
VALUES (1, 3, '4872410269895827', 4344.96, 20358.67, TO_DATE('2022-02-09', 'YYYY-MM-DD'), TO_DATE('2025-05-04', 'YYYY-MM-DD'), 2, TO_DATE('2022-03-06', 'YYYY-MM-DD'), 6);

INSERT INTO Tarjetas (id_tarjeta, id_cliente, numero_tarjeta, limite_credito, saldo_actual, fecha_emision, fecha_vencimiento, id_estado_tarjeta, fecha_corte, dia_ciclo)
VALUES (2, 15, '4780431200473540', 48263.8, 12583.92, TO_DATE('2021-04-29', 'YYYY-MM-DD'), TO_DATE('2025-11-10', 'YYYY-MM-DD'), 1, TO_DATE('2021-05-26', 'YYYY-MM-DD'), 26);

INSERT INTO Tarjetas (id_tarjeta, id_cliente, numero_tarjeta, limite_credito, saldo_actual, fecha_emision, fecha_vencimiento, id_estado_tarjeta, fecha_corte, dia_ciclo)
VALUES (3, 2, '4653562424107275', 37894.69, 16274.3, TO_DATE('2021-12-10', 'YYYY-MM-DD'), TO_DATE('2026-08-08', 'YYYY-MM-DD'), 2, TO_DATE('2022-01-08', 'YYYY-MM-DD'), 8);

INSERT INTO Tarjetas (id_tarjeta, id_cliente, numero_tarjeta, limite_credito, saldo_actual, fecha_emision, fecha_vencimiento, id_estado_tarjeta, fecha_corte, dia_ciclo)
VALUES (4, 1, '4935123661880312', 3610.3, 31113.15, TO_DATE('2020-11-21', 'YYYY-MM-DD'), TO_DATE('2025-07-26', 'YYYY-MM-DD'), 2, TO_DATE('2020-12-18', 'YYYY-MM-DD'), 18);

INSERT INTO Tarjetas (id_tarjeta, id_cliente, numero_tarjeta, limite_credito, saldo_actual, fecha_emision, fecha_vencimiento, id_estado_tarjeta, fecha_corte, dia_ciclo)
VALUES (5, 4, '4918591621061050', 35118.01, 5054.92, TO_DATE('2023-10-06', 'YYYY-MM-DD'), TO_DATE('2028-02-05', 'YYYY-MM-DD'), 3, TO_DATE('2023-11-05', 'YYYY-MM-DD'), 5);

INSERT INTO Tarjetas (id_tarjeta, id_cliente, numero_tarjeta, limite_credito, saldo_actual, fecha_emision, fecha_vencimiento, id_estado_tarjeta, fecha_corte, dia_ciclo)
VALUES (6, 5, '4378520539795383', 5109.03, 3686.69, TO_DATE('2022-11-21', 'YYYY-MM-DD'), TO_DATE('2026-08-19', 'YYYY-MM-DD'), 3, TO_DATE('2022-12-14', 'YYYY-MM-DD'), 14);

INSERT INTO Tarjetas (id_tarjeta, id_cliente, numero_tarjeta, limite_credito, saldo_actual, fecha_emision, fecha_vencimiento, id_estado_tarjeta, fecha_corte, dia_ciclo)
VALUES (7, 6, '4581870605290993', 42128.4, 17459.5, TO_DATE('2020-07-04', 'YYYY-MM-DD'), TO_DATE('2025-04-21', 'YYYY-MM-DD'), 3, TO_DATE('2020-07-25', 'YYYY-MM-DD'), 25);

INSERT INTO Tarjetas (id_tarjeta, id_cliente, numero_tarjeta, limite_credito, saldo_actual, fecha_emision, fecha_vencimiento, id_estado_tarjeta, fecha_corte, dia_ciclo)
VALUES (8, 10, '4807500082737884', 48150.36, 19235.82, TO_DATE('2022-01-13', 'YYYY-MM-DD'), TO_DATE('2026-04-20', 'YYYY-MM-DD'), 2, TO_DATE('2022-02-06', 'YYYY-MM-DD'), 6);

INSERT INTO Tarjetas (id_tarjeta, id_cliente, numero_tarjeta, limite_credito, saldo_actual, fecha_emision, fecha_vencimiento, id_estado_tarjeta, fecha_corte, dia_ciclo)
VALUES (9, 12, '4174113245817380', 37901.82, 14255.74, TO_DATE('2020-12-29', 'YYYY-MM-DD'), TO_DATE('2024-07-25', 'YYYY-MM-DD'), 2, TO_DATE('2021-01-22', 'YYYY-MM-DD'), 22);

INSERT INTO Tarjetas (id_tarjeta, id_cliente, numero_tarjeta, limite_credito, saldo_actual, fecha_emision, fecha_vencimiento, id_estado_tarjeta, fecha_corte, dia_ciclo)
VALUES (10, 7, '4617314737376801', 32143.79, 10600.77, TO_DATE('2024-03-31', 'YYYY-MM-DD'), TO_DATE('2028-05-28', 'YYYY-MM-DD'), 2, TO_DATE('2024-04-23', 'YYYY-MM-DD'), 23);

-- Insersiones de datos para la tabla Empleados
INSERT INTO Empleados (id_empleado, nombre, apellido, telefono, id_rol, id_departamento, id_locacion)
VALUES (1, 'Juan', 'Perez', '+502 12345-678', 1, 1, 1);

INSERT INTO Empleados (id_empleado, nombre, apellido, telefono, id_rol, id_departamento, id_locacion)
VALUES (2, 'Maria', 'Gonzalez', '+502 8765-4321', 2, 1, 2);

INSERT INTO Empleados (id_empleado, nombre, apellido, telefono, id_rol, id_departamento, id_locacion)
VALUES (3, 'Pedro', 'Rodriguez', '+502 4567-8912', 3, 3, 3);

INSERT INTO Empleados (id_empleado, nombre, apellido, telefono, id_rol, id_departamento, id_locacion)
VALUES (4, 'Ana', 'Lopez', '+502 9876-5432', 4, 4, 4);

INSERT INTO Empleados (id_empleado, nombre, apellido, telefono, id_rol, id_departamento, id_locacion)
VALUES (5, 'Carlos', 'Martinez', '+502 1231-2312', 5, 5, 5);

INSERT INTO Empleados (id_empleado, nombre, apellido, telefono, id_rol, id_departamento, id_locacion)
VALUES (6, 'Luisa', 'Ramirez', '+502 3213-2132', 6, 6, 6);

INSERT INTO Empleados (id_empleado, nombre, apellido, telefono, id_rol, id_departamento, id_locacion)
VALUES (7, 'Jorge', 'Hernandez', '+502 4564-5645', 7, 7, 7);

INSERT INTO Empleados (id_empleado, nombre, apellido, telefono, id_rol, id_departamento, id_locacion)
VALUES (8, 'Sofia', 'Garcia', '+502 6546-5465', 8, 8, 8);

INSERT INTO Empleados (id_empleado, nombre, apellido, telefono, id_rol, id_departamento, id_locacion)
VALUES (9, 'Miguel', 'Fernandez', '+502 7897-8978', 9, 9, 9);

INSERT INTO Empleados (id_empleado, nombre, apellido, telefono, id_rol, id_departamento, id_locacion)
VALUES (10, 'Laura', 'Gomez', '+502 9879-8798', 10, 10, 10);

-- Insersiones de datos para la tabla Municipios
INSERT INTO Municipios (id_municipio, municipio, id_departamento) VALUES (1, 'Guatemala', 1);
INSERT INTO Municipios (id_municipio, municipio, id_departamento) VALUES (2, 'Villa Nueva', 1);
INSERT INTO Municipios (id_municipio, municipio, id_departamento) VALUES (3, 'Mixco', 1);
INSERT INTO Municipios (id_municipio, municipio, id_departamento) VALUES (4, 'Santa Lucía Cotzumalguapa', 5);
INSERT INTO Municipios (id_municipio, municipio, id_departamento) VALUES (5, 'Chimaltenango', 4);
INSERT INTO Municipios (id_municipio, municipio, id_departamento) VALUES (6, 'Escuintla', 5);
INSERT INTO Municipios (id_municipio, municipio, id_departamento) VALUES (7, 'San Miguel Petapa', 1);
INSERT INTO Municipios (id_municipio, municipio, id_departamento) VALUES (8, 'San Juan Sacatepéquez', 3);
INSERT INTO Municipios (id_municipio, municipio, id_departamento) VALUES (9, 'Sololá', 7);
INSERT INTO Municipios (id_municipio, municipio, id_departamento) VALUES (10, 'San Marcos', 12);
INSERT INTO Municipios (id_municipio, municipio, id_departamento) VALUES (11, 'Quetzaltenango', 9);
INSERT INTO Municipios (id_municipio, municipio, id_departamento) VALUES (12, 'Huehuetenango', 13);
INSERT INTO Municipios (id_municipio, municipio, id_departamento) VALUES (13, 'Retalhuleu', 11);
INSERT INTO Municipios (id_municipio, municipio, id_departamento) VALUES (14, 'Suchitepéquez', 10);
INSERT INTO Municipios (id_municipio, municipio, id_departamento) VALUES (15, 'Jalapa', 21);
INSERT INTO Municipios (id_municipio, municipio, id_departamento) VALUES (16, 'Chiquimula', 20);
INSERT INTO Municipios (id_municipio, municipio, id_departamento) VALUES (17, 'Izabal', 18);
INSERT INTO Municipios (id_municipio, municipio, id_departamento) VALUES (18, 'Zacapa', 19);
INSERT INTO Municipios (id_municipio, municipio, id_departamento) VALUES (19, 'Tiquisate', 5);
INSERT INTO Municipios (id_municipio, municipio, id_departamento) VALUES (20, 'Totonicapán', 8);
INSERT INTO Municipios (id_municipio, municipio, id_departamento) VALUES (21, 'San Juan Comalapa', 4);

-- Insersiones de datos para la tabla Direcciones
INSERT INTO Direcciones (id_direccion, direccion, codigo_postal, id_municipio) VALUES (1, '12 calle 3-40 zona 10', '01010', 1);
INSERT INTO Direcciones (id_direccion, direccion, codigo_postal, id_municipio) VALUES (2, '1a avenida 7-55 zona 1', '01015', 2);
INSERT INTO Direcciones (id_direccion, direccion, codigo_postal, id_municipio) VALUES (3, 'Avenida 0 6-50 zona 4', '01011', 3);
INSERT INTO Direcciones (id_direccion, direccion, codigo_postal, id_municipio) VALUES (4, 'Calle Principal 10-20 zona 5', '05004', 4);
INSERT INTO Direcciones (id_direccion, direccion, codigo_postal, id_municipio) VALUES (5, 'Calle La Paz 2-25 zona 6', '04001', 5);
INSERT INTO Direcciones (id_direccion, direccion, codigo_postal, id_municipio) VALUES (6, 'Calle 1 5-90 zona 3', '05006', 6);
INSERT INTO Direcciones (id_direccion, direccion, codigo_postal, id_municipio) VALUES (7, 'Avenida 4 3-12 zona 7', '01020', 7);
INSERT INTO Direcciones (id_direccion, direccion, codigo_postal, id_municipio) VALUES (8, 'Calle 8 5-30 zona 8', '03001', 8);
INSERT INTO Direcciones (id_direccion, direccion, codigo_postal, id_municipio) VALUES (9, 'Calle Central 12-15 zona 9', '07001', 9);
INSERT INTO Direcciones (id_direccion, direccion, codigo_postal, id_municipio) VALUES (10, 'Calle 3 6-40 zona 2', '12001', 10);
INSERT INTO Direcciones (id_direccion, direccion, codigo_postal, id_municipio) VALUES (11, 'Calle 2 8-25 zona 11', '09001', 11);
INSERT INTO Direcciones (id_direccion, direccion, codigo_postal, id_municipio) VALUES (12, 'Avenida Nueva 7-15 zona 10', '13001', 12);
INSERT INTO Direcciones (id_direccion, direccion, codigo_postal, id_municipio) VALUES (13, 'Calle Principal 1-10 zona 11', '11001', 13);
INSERT INTO Direcciones (id_direccion, direccion, codigo_postal, id_municipio) VALUES (14, 'Calle 4 3-20 zona 12', '10001', 14);
INSERT INTO Direcciones (id_direccion, direccion, codigo_postal, id_municipio) VALUES (15, 'Calle 6 5-40 zona 13', '21001', 15);
INSERT INTO Direcciones (id_direccion, direccion, codigo_postal, id_municipio) VALUES (16, 'Calle 3 2-50 zona 14', '20001', 16);
INSERT INTO Direcciones (id_direccion, direccion, codigo_postal, id_municipio) VALUES (17, 'Calle 5 4-30 zona 15', '18001', 17);
INSERT INTO Direcciones (id_direccion, direccion, codigo_postal, id_municipio) VALUES (18, 'Calle 2 5-50 zona 16', '19001', 18);
INSERT INTO Direcciones (id_direccion, direccion, codigo_postal, id_municipio) VALUES (19, 'Calle 7 6-60 zona 5', '05003', 19);
INSERT INTO Direcciones (id_direccion, direccion, codigo_postal, id_municipio) VALUES (20, 'Calle 1 1-15 zona 18', '08001', 20);
INSERT INTO Direcciones (id_direccion, direccion, codigo_postal, id_municipio) VALUES (21, 'Calle 4 3-25 zona 17', '04002', 21);

-- Insersiones de datos para la tabla Agencias
INSERT INTO Agencias (id_agencia, nombre, id_locacion, id_direccion, telefono) VALUES (1, 'Agencia 528', 1, 1, '+502 12345-678');
INSERT INTO Agencias (id_agencia, nombre, id_locacion, id_direccion, telefono) VALUES (2, 'Agencia 123', 4, 2, '+502 8765-4321');
INSERT INTO Agencias (id_agencia, nombre, id_locacion, id_direccion, telefono) VALUES (3, 'Agencia 456', 7, 3, '+502 4567-8912');
INSERT INTO Agencias (id_agencia, nombre, id_locacion, id_direccion, telefono) VALUES (4, 'Agencia 789', 10, 4, '+502 9876-5432');
INSERT INTO Agencias (id_agencia, nombre, id_locacion, id_direccion, telefono) VALUES (5, 'Agencia 987', 5, 5, '+502 1231-2312');
INSERT INTO Agencias (id_agencia, nombre, id_locacion, id_direccion, telefono) VALUES (6, 'Agencia 654', 2, 6, '+502 3213-2132');
INSERT INTO Agencias (id_agencia, nombre, id_locacion, id_direccion, telefono) VALUES (7, 'Agencia 321', 6, 7, '+502 4564-5645');
INSERT INTO Agencias (id_agencia, nombre, id_locacion, id_direccion, telefono) VALUES (8, 'Agencia 159', 8, 8, '+502 6546-5465');
INSERT INTO Agencias (id_agencia, nombre, id_locacion, id_direccion, telefono) VALUES (9, 'Agencia 753', 9, 9, '+502 7897-8978');
INSERT INTO Agencias (id_agencia, nombre, id_locacion, id_direccion, telefono) VALUES (10, 'Agencia 258', 3, 10, '+502 9879-8798');

-- Insersiones de datos para la tabla Transacciones
INSERT INTO Transacciones (id_transaccion, id_cliente, numero_origen, numero_destino, id_tipo_transaccion, monto, fecha_inicio, fecha_fin, hora, descripcion, id_locacion)
VALUES (1, 1, '70186741-1', '42148275-2', 1, 1000.50, TO_DATE('2023-11-19', 'YYYY-MM-DD'), TO_DATE('2023-11-19', 'YYYY-MM-DD'), TO_TIMESTAMP('10:00:00.123', 'HH24:MI:SS.FF3'), 'Deposito', 1);

INSERT INTO Transacciones (id_transaccion, id_cliente, numero_origen, numero_destino, id_tipo_transaccion, monto, fecha_inicio, fecha_fin, hora, descripcion, id_locacion)
VALUES (2, 1, '74601803-4', '18184518-5', 2, 1500.75, TO_DATE('2023-11-20', 'YYYY-MM-DD'), TO_DATE('2023-11-20', 'YYYY-MM-DD'), TO_TIMESTAMP('11:00:00.456', 'HH24:MI:SS.FF3'), 'Transferencia', 1);

INSERT INTO Transacciones (id_transaccion, id_cliente, numero_origen, numero_destino, id_tipo_transaccion, monto, fecha_inicio, fecha_fin, hora, descripcion, id_locacion)
VALUES (3, 2, '30990159-7', '95199340-8', 1, 2000.00, TO_DATE('2023-11-21', 'YYYY-MM-DD'), TO_DATE('2023-11-21', 'YYYY-MM-DD'), TO_TIMESTAMP('12:00:00.789', 'HH24:MI:SS.FF3'), 'Retiro', 2);

INSERT INTO Transacciones (id_transaccion, id_cliente, numero_origen, numero_destino, id_tipo_transaccion, monto, fecha_inicio, fecha_fin, hora, descripcion, id_locacion)
VALUES (4, 2, '73918292-10', '74733811-13', 2, 500.99, TO_DATE('2023-11-22', 'YYYY-MM-DD'), TO_DATE('2023-11-22', 'YYYY-MM-DD'), TO_TIMESTAMP('09:30:00.123', 'HH24:MI:SS.FF3'), 'Pago', 2);

INSERT INTO Transacciones (id_transaccion, id_cliente, numero_origen, numero_destino, id_tipo_transaccion, monto, fecha_inicio, fecha_fin, hora, descripcion, id_locacion)
VALUES (5, 3, '92660876-15', '56773356-17', 1, 750.25, TO_DATE('2023-11-23', 'YYYY-MM-DD'), TO_DATE('2023-11-23', 'YYYY-MM-DD'), TO_TIMESTAMP('14:45:00.456', 'HH24:MI:SS.FF3'), 'Deposito', 1);

INSERT INTO Transacciones (id_transaccion, id_cliente, numero_origen, numero_destino, id_tipo_transaccion, monto, fecha_inicio, fecha_fin, hora, descripcion, id_locacion)
VALUES (6, 3, '14336890-19', '95106634-21', 2, 1250.30, TO_DATE('2023-11-24', 'YYYY-MM-DD'), TO_DATE('2023-11-24', 'YYYY-MM-DD'), TO_TIMESTAMP('15:15:00.789', 'HH24:MI:SS.FF3'), 'Transferencia', 1);

INSERT INTO Transacciones (id_transaccion, id_cliente, numero_origen, numero_destino, id_tipo_transaccion, monto, fecha_inicio, fecha_fin, hora, descripcion, id_locacion)
VALUES (7, 4, '99889802-20', '27531899-22', 1, 3000.00, TO_DATE('2023-11-25', 'YYYY-MM-DD'), TO_DATE('2023-11-25', 'YYYY-MM-DD'), TO_TIMESTAMP('16:00:00.123', 'HH24:MI:SS.FF3'), 'Retiro', 2);

INSERT INTO Transacciones (id_transaccion, id_cliente, numero_origen, numero_destino, id_tipo_transaccion, monto, fecha_inicio, fecha_fin, hora, descripcion, id_locacion)
VALUES (8, 4, '37681508-25', '32851234-26', 2, 850.10, TO_DATE('2023-11-26', 'YYYY-MM-DD'), TO_DATE('2023-11-26', 'YYYY-MM-DD'), TO_TIMESTAMP('10:30:00.456', 'HH24:MI:SS.FF3'), 'Pago', 2);

INSERT INTO Transacciones (id_transaccion, id_cliente, numero_origen, numero_destino, id_tipo_transaccion, monto, fecha_inicio, fecha_fin, hora, descripcion, id_locacion)
VALUES (9, 5, '12345678-27', '87654321-28', 1, 1200.80, TO_DATE('2023-11-27', 'YYYY-MM-DD'), TO_DATE('2023-11-27', 'YYYY-MM-DD'), TO_TIMESTAMP('11:15:00.789', 'HH24:MI:SS.FF3'), 'Deposito', 1);

INSERT INTO Transacciones (id_transaccion, id_cliente, numero_origen, numero_destino, id_tipo_transaccion, monto, fecha_inicio, fecha_fin, hora, descripcion, id_locacion)
VALUES (10, 5, '45678912-29', '78912345-30', 2, 300.60, TO_DATE('2023-11-28', 'YYYY-MM-DD'), TO_DATE('2023-11-28', 'YYYY-MM-DD'), TO_TIMESTAMP('12:00:00.123', 'HH24:MI:SS.FF3'), 'Transferencia', 1);
