# Proyecto1_SistemaBancario_202005035
Laboratorio Sistemas de Bases de Datos 1

---

## Herramientas Utilizadas
- Excalidraw: Creación del modelo conceptual.
- Oracle Data Modeler: Creación del modelo lógico y físico (notación Barker).

## Modelo Conceptual
![Modelo Conceptual](/img/MConceptual.png)

### Primera Forma Normal (1FN)

La **Primera Forma Normal** se trata de **eliminar grupos repetidos** en una tabla y asegurarnos de que **cada columna contenga valores atómicos** (es decir, no divididos o compuestos).

**Regla clave:**
Cada celda de una tabla debe contener **un solo valor**, y cada registro debe ser único.

### Segunda Forma Normal (2FN)

La **Segunda Forma Normal** se asegura de que una tabla esté en 1FN y que **todas las columnas dependan completamente de la clave primaria**.

**Regla clave:**
Si tienes una clave compuesta (más de una columna que sirve como clave primaria), cada columna no clave debe depender de **toda** la clave, no solo de una parte.

### Tercera Forma Normal (3FN)

La **Tercera Forma Normal** implica que la tabla esté en 2FN y que **ninguna columna no clave dependa de otra columna no clave**.

**Regla clave:**
Cada columna no clave debe depender **solo** de la clave primaria y no de otras columnas no claves.

---

Al aplicar las formas normales, estamos estructurando mejor la base de datos, reduciendo la redundancia y evitando problemas de actualización o inconsistencias.

# Tablas Iniciales del Proyecto

### Clientes

| ID | Nombre | Apellido | Número de Cuenta | Tipo de Cuenta | Saldo | Teléfono |
| --- | --- | --- | --- | --- | --- | --- |
| 1 | Nombre_1 | Apellido_1 | 70186741-1 | Ahorro | 256848.49 | +502 4634-7041 |
| 2 | Nombre_2 | Apellido_2 | 42148275-2 | Ahorro | 378588.21 | +502 2701-1140 |
| 3 | Nombre_3 | Apellido_3 | 95968205-3 | Depósito Monetario | 294799.84 | +502 6277-2079 |
| 4 | Nombre_4 | Apellido_4 | 74601803-4 | Ahorro | 30357.74 | +502 7371-9552 |
| 5 | Nombre_5 | Apellido_5 | 18184518-5 | Ahorro | 270027.6 | +502 1699-8122 |

### Agencias

| ID | Nombre | Tipo | Departamento | Municipio | Dirección | Código Postal | Teléfono |
| --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | Sucursal Antigua Guatemala 1 | Sucursal | Sacatepéquez | Antigua Guatemala | Zona 7 | 91405 | +502 8036-8423 |
| 2 | Sucursal Escuintla 2 | Sucursal | Escuintla | Escuintla | Zona 1 | 97145 | +502 9525-7114 |
| 3 | Sucursal Quetzaltenango 3 | Sucursal | Quetzaltenango | Quetzaltenango | Zona 1 | 53915 | +502 2873-4763 |
| 4 | Sucursal Cobán 4 | Sucursal | Alta Verapaz | Cobán | Zona 8 | 31535 | +502 6809-5562 |
| 5 | Sucursal Flores 5 | Sucursal | Petén | Flores | Zona 10 | 63389 | +502 5942-1959 |

### Tarjetas de crédito

| ID Tarjeta | ID Cliente | Número de Tarjeta | Límite de Crédito | Saldo Actual | Fecha de Emisión | Fecha de Expiración | Estado | Fecha de Corte | Día del Ciclo |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | 558120 | 4872410269895827 | 4344.96 | 20358.67 | 2022-02-09 | 2025-05-04 | Bloqueada | 2022-03-06 | 6 |
| 2 | 443984 | 4,78043E+15 | 48263.8 | 12583.92 | 2021-04-29 | 2025-11-10 | Activa | 2021-05-26 | 26 |
| 3 | 709855 | 4653562424107275 | 37894.69 | 16274.3 | 2021-12-10 | 2026-08-08 | Bloqueada | 2022-01-08 | 8 |
| 4 | 495584 | 4935123661880312 | 3610.3 | 31113.15 | 2020-11-21 | 2025-07-26 | Bloqueada | 2020-12-18 | 18 |
| 5 | 621646 | 4,91859E+15 | 35118.01 | 5054.92 | 2023-10-06 | 2028-02-05 | Cancelada | 2023-11-05 | 5 |

### Prestamos

| ID Préstamo | ID Cliente | Monto del Préstamo | Tasa de Interés | Fecha de Desembolso | Fecha de Vencimiento | Saldo Pendiente | Estado del Préstamo |
| --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | 495798 | 964203.64 | 6.63 | 2023-11-19 | 2032-06-06 | 674174.18 | Vencido |
| 2 | 42734 | 811935.67 | 13.42 | 2023-05-07 | 2028-08-29 | 756664.53 | Activo |
| 3 | 540710 | 961457.89 | 13.68 | 2021-10-28 | 2030-03-10 | 200162.19 | Vencido |
| 4 | 983331 | 78869.24 | 11.42 | 2023-05-14 | 2026-12-17 | 67546.61 | Vencido |
| 5 | 409214 | 456168.05 | 6.93 | 2020-05-18 | 2026-07-08 | 729762.37 | Activo |

### Empleado

| ID | Nombre | Apellido | Rol | Departamento | Sucursal/Asignación | Teléfono |
| --- | --- | --- | --- | --- | --- | --- |
| 1 | Nombre_1 | Apellido_1 | Auditor Interno | Petén | Sucursal/Agencia 528 | +502 7815-2167 |
| 2 | Nombre_2 | Apellido_2 | Administrador | Chiquimula | Sucursal/Agencia 171 | +502 3808-9764 |
| 3 | Nombre_3 | Apellido_3 | Atención al Cliente | Jutiapa | Sucursal/Agencia 103 | +502 4899-1699 |
| 4 | Nombre_4 | Apellido_4 | Oficial de Crédito | Quetzaltenango | Sucursal/Agencia 36 | +502 3452-1726 |
| 5 | Nombre_5 | Apellido_5 | Soporte Técnico | Jutiapa | Sucursal/Agencia 583 | +502 8283-6524 |

### Transacciones

| ID Transacción | ID Cliente | Número de Cuenta | Tipo de Transacción | Monto | Fecha | Hora | Descripción | Sucursal/Agencia |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | 455902 | 58639163-455902 | Transferencia | 2865.8 | 2023-10-24 | 14:28:01 | Transacción de tipo Transferencia | Sucursal/Agencia 221 |
| 2 | 469824 | 99757988-469824 | Depósito | 2438.92 | 2023-12-09 | 14:28:01 | Transacción de tipo Depósito | Sucursal/Agencia 257 |
| 3 | 626567 | 19969005-626567 | Transferencia | 9494.98 | 2024-06-01 | 14:28:01 | Transacción de tipo Transferencia | Sucursal/Agencia 874 |
| 4 | 784443 | 95861936-784443 | Pago | 8399.08 | 2023-12-26 | 14:28:01 | Transacción de tipo Pago | Sucursal/Agencia 265 |
| 5 | 421423 | 21672609-421423 | Depósito | 7722.1 | 2022-12-27 | 14:28:01 | Transacción de tipo Depósito | Sucursal/Agencia 986 |

---

# APLICACIÓN DE LAS 3 FORMAS NORMALES

## Aplicación Primera Forma normal (1FN)

Tabla Inicial:

### Clientes

| ID | Nombre | Apellido | Número de Cuenta | Tipo de Cuenta | Saldo | Teléfono |
| --- | --- | --- | --- | --- | --- | --- |
| 1 | Nombre_1 | Apellido_1 | 70186741-1 | Ahorro | 256848.49 | +502 4634-7041 |
| 2 | Nombre_2 | Apellido_2 | 42148275-2 | Ahorro | 378588.21 | +502 2701-1140 |
| 3 | Nombre_3 | Apellido_3 | 95968205-3 | Depósito Monetario | 294799.84 | +502 6277-2079 |
| 4 | Nombre_4 | Apellido_4 | 74601803-4 | Ahorro | 30357.74 | +502 7371-9552 |
| 5 | Nombre_5 | Apellido_5 | 18184518-5 | Ahorro | 270027.6 | +502 1699-8122 |

Respuesta: Para la tabla Clientes la 1FN esta bien

### Agencias

Tabla inicial

| ID | Nombre | Tipo | Departamento | Municipio | Dirección | Código Postal | Teléfono |
| --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | Sucursal Antigua Guatemala 1 | Sucursal | Sacatepéquez | Antigua Guatemala | Zona 7 | 91405 | +502 8036-8423 |
| 2 | Sucursal Escuintla 2 | Sucursal | Escuintla | Escuintla | Zona 1 | 97145 | +502 9525-7114 |
| 3 | Sucursal Quetzaltenango 3 | Sucursal | Quetzaltenango | Quetzaltenango | Zona 1 | 53915 | +502 2873-4763 |
| 4 | Sucursal Cobán 4 | Sucursal | Alta Verapaz | Cobán | Zona 8 | 31535 | +502 6809-5562 |
| 5 | Sucursal Flores 5 | Sucursal | Petén | Flores | Zona 10 | 63389 | +502 5942-1959 |

Respuesta: Para la tabla de Agencias cumple con las 1FN

### Tarjetas de crédito

Tabla inicial:

| ID Tarjeta | ID Cliente | Número de Tarjeta | Límite de Crédito | Saldo Actual | Fecha de Emisión | Fecha de Expiración | Estado | Fecha de Corte | Día del Ciclo |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | 558120 | 4872410269895827 | 4344.96 | 20358.67 | 2022-02-09 | 2025-05-04 | Bloqueada | 2022-03-06 | 6 |
| 2 | 443984 | 4,78043E+15 | 48263.8 | 12583.92 | 2021-04-29 | 2025-11-10 | Activa | 2021-05-26 | 26 |
| 3 | 709855 | 4653562424107275 | 37894.69 | 16274.3 | 2021-12-10 | 2026-08-08 | Bloqueada | 2022-01-08 | 8 |
| 4 | 495584 | 4935123661880312 | 3610.3 | 31113.15 | 2020-11-21 | 2025-07-26 | Bloqueada | 2020-12-18 | 18 |
| 5 | 621646 | 4,91859E+15 | 35118.01 | 5054.92 | 2023-10-06 | 2028-02-05 | Cancelada | 2023-11-05 | 5 |

Respuesta: Para la tabla Tarjetas de Crédito cumple con la 1FN

### Prestamos

| ID Préstamo | ID Cliente | Monto del Préstamo | Tasa de Interés | Fecha de Desembolso | Fecha de Vencimiento | Saldo Pendiente | Estado del Préstamo |
| --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | 495798 | 964203.64 | 6.63 | 2023-11-19 | 2032-06-06 | 674174.18 | Vencido |
| 2 | 42734 | 811935.67 | 13.42 | 2023-05-07 | 2028-08-29 | 756664.53 | Activo |
| 3 | 540710 | 961457.89 | 13.68 | 2021-10-28 | 2030-03-10 | 200162.19 | Vencido |
| 4 | 983331 | 78869.24 | 11.42 | 2023-05-14 | 2026-12-17 | 67546.61 | Vencido |
| 5 | 409214 | 456168.05 | 6.93 | 2020-05-18 | 2026-07-08 | 729762.37 | Activo |

Respuesta: Para la tabla prestamos cumple con la 1FN

### Empleado

Tabla inicial:

| ID | Nombre | Apellido | Rol | Departamento | Sucursal/Asignación | Teléfono |
| --- | --- | --- | --- | --- | --- | --- |
| 1 | Nombre_1 | Apellido_1 | Auditor Interno | Petén | Sucursal/Agencia 528 | +502 7815-2167 |
| 2 | Nombre_2 | Apellido_2 | Administrador | Chiquimula | Sucursal/Agencia 171 | +502 3808-9764 |
| 3 | Nombre_3 | Apellido_3 | Atención al Cliente | Jutiapa | Sucursal/Agencia 103 | +502 4899-1699 |
| 4 | Nombre_4 | Apellido_4 | Oficial de Crédito | Quetzaltenango | Sucursal/Agencia 36 | +502 3452-1726 |
| 5 | Nombre_5 | Apellido_5 | Soporte Técnico | Jutiapa | Sucursal/Agencia 583 | +502 8283-6524 |

Respuesta:  La columna de Sucursal/Asignacion no cumple con la 1FN 

| ID | Nombre | Apellido | Rol | Departamento | Sucursal/Asignación | Asignación | Teléfono |
| --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | Nombre_1 | Apellido_1 | Auditor Interno | Petén | Sucursal | Agencia 528 | +502 7815-2167 |
| 2 | Nombre_2 | Apellido_2 | Administrador | Chiquimula | Sucursal | Agencia 171 | +502 3808-9764 |
| 3 | Nombre_3 | Apellido_3 | Atención al Cliente | Jutiapa | Sucursal | Agencia 103 | +502 4899-1699 |
| 4 | Nombre_4 | Apellido_4 | Oficial de Crédito | Quetzaltenango | Sucursal | Agencia 36 | +502 3452-1726 |
| 5 | Nombre_5 | Apellido_5 | Soporte Técnico | Jutiapa | Sucursal | Agencia 583 | +502 8283-6524 |

### Transacciones

Tabla inicial:

| ID Transacción | ID Cliente | Número de Cuenta | Tipo de Transacción | Monto | Fecha | Hora | Descripción | Sucursal/Agencia |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | 455902 | 58639163-455902 | Transferencia | 2865.8 | 2023-10-24 | 14:28:01 | Transacción de tipo Transferencia | Sucursal/Agencia 221 |
| 2 | 469824 | 99757988-469824 | Depósito | 2438.92 | 2023-12-09 | 14:28:01 | Transacción de tipo Depósito | Sucursal/Agencia 257 |
| 3 | 626567 | 19969005-626567 | Transferencia | 9494.98 | 2024-06-01 | 14:28:01 | Transacción de tipo Transferencia | Sucursal/Agencia 874 |
| 4 | 784443 | 95861936-784443 | Pago | 8399.08 | 2023-12-26 | 14:28:01 | Transacción de tipo Pago | Sucursal/Agencia 265 |
| 5 | 421423 | 21672609-421423 | Depósito | 7722.1 | 2022-12-27 | 14:28:01 | Transacción de tipo Depósito | Sucursal/Agencia 986 |

Respuesta:  La columna de Sucursal/Agencia y Numero de Cuenta no cumple con la 1FN

| ID Transacción | ID Cliente | Número de Origen | Número de cuenta destino | Tipo de Transacción | Monto | Fecha | Hora | Descripción | Sucursal/Agencia |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | 455902 | 58639163 | 455902 | Transferencia | 2865.8 | 2023-10-24 | 14:28:01 | Transacción de tipo Transferencia | Sucursal | Agencia 221 |
| 2 | 469824 | 99757988 | 469824 | Depósito | 2438.92 | 2023-12-09 | 14:28:01 | Transacción de tipo Depósito | Sucursal | Agencia 257 |
| 3 | 626567 | 19969005 | 626567 | Transferencia | 9494.98 | 2024-06-01 | 14:28:01 | Transacción de tipo Transferencia | Sucursal | Agencia 874 |
| 4 | 784443 | 95861936 | 784443 | Pago | 8399.08 | 2023-12-26 | 14:28:01 | Transacción de tipo Pago | Sucursal | Agencia 265 |
| 5 | 421423 | 21672609 | 421423 | Depósito | 7722.1 | 2022-12-27 | 14:28:01 | Transacción de tipo Depósito | Sucursal | Agencia 986 |

---

## Aplicación Segunda Forma normal (2FN)

### Clientes

Tabla inicial (1FN):

| ID | Nombre | Apellido | Número de Cuenta | Tipo de Cuenta | Saldo | Teléfono |
| --- | --- | --- | --- | --- | --- | --- |
| 1 | Nombre_1 | Apellido_1 | 70186741-1 | Ahorro | 256848.49 | +502 4634-7041 |
| 2 | Nombre_2 | Apellido_2 | 42148275-2 | Ahorro | 378588.21 | +502 2701-1140 |
| 3 | Nombre_3 | Apellido_3 | 95968205-3 | Depósito Monetario | 294799.84 | +502 6277-2079 |
| 4 | Nombre_4 | Apellido_4 | 74601803-4 | Ahorro | 30357.74 | +502 7371-9552 |
| 5 | Nombre_5 | Apellido_5 | 18184518-5 | Ahorro | 270027.6 | +502 1699-8122 |

Respuesta: No cumple con la segunda forma normal, ya que los campos de Nùmero de cuenta, el tipo y el sado pueden ser independientes.

## Clientes

| ID | Nombre | Apellido | Teléfono | ID Cuenta |
| --- | --- | --- | --- | --- |
| 1 | Nombre_1 | Apellido_1 | +502 4634-7041 | 1 |
| 2 | Nombre_2 | Apellido_2 | +502 2701-1140 | 2 |
| 3 | Nombre_3 | Apellido_3 | +502 6277-2079 | 3 |
| 4 | Nombre_4 | Apellido_4 | +502 7371-9552 | 4 |
| 5 | Nombre_5 | Apellido_5 | +502 1699-8122 | 5 |

### Cuenta

| ID Cuenta | Número de Cuenta | Tipo de Cuenta | Saldo |
| --- | --- | --- | --- |
| 1 | 70186741-1 | Ahorro | 256848.49 |
| 2 | 42148275-2 | Ahorro | 378588.21 |
| 3 | 95968205-3 | Depósito Monetario | 294799.84 |
| 4 | 74601803-4 | Ahorro | 30357.74 |
| 5 | 18184518-5 | Ahorro | 270027.6 |

### Agencias

Tabla inicial (1FN):

| ID | Nombre | Tipo | Departamento | Municipio | Dirección | Código Postal | Teléfono |
| --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | Sucursal Antigua Guatemala 1 | Sucursal | Sacatepéquez | Antigua Guatemala | Zona 7 | 91405 | +502 8036-8423 |
| 2 | Sucursal Escuintla 2 | Sucursal | Escuintla | Escuintla | Zona 1 | 97145 | +502 9525-7114 |
| 3 | Sucursal Quetzaltenango 3 | Sucursal | Quetzaltenango | Quetzaltenango | Zona 1 | 53915 | +502 2873-4763 |
| 4 | Sucursal Cobán 4 | Sucursal | Alta Verapaz | Cobán | Zona 8 | 31535 | +502 6809-5562 |
| 5 | Sucursal Flores 5 | Sucursal | Petén | Flores | Zona 10 | 63389 | +502 5942-1959 |

Respuesta: No cumple con la 2FN, tanto departamento, municipio, dirección y código postal (Además es asociación transitiva).

### Agencias

| ID | Nombre | Tipo | Departamento | Municipio | Dirección | Teléfono |
| --- | --- | --- | --- | --- | --- | --- |
| 1 | Sucursal Antigua Guatemala 1 | Sucursal | 1 | 1 | 1 | +502 8036-8423 |
| 2 | Sucursal Escuintla 2 | Sucursal | 2 | 2 | 2 | +502 9525-7114 |
| 3 | Sucursal Quetzaltenango 3 | Sucursal | 3 | 3 | 3 | +502 2873-4763 |
| 4 | Sucursal Cobán 4 | Sucursal | 4 | 4 | 4 | +502 6809-5562 |
| 5 | Sucursal Flores 5 | Sucursal | 5 | 5 | 5 | +502 5942-1959 |

### Departamentos

| ID Departamento | Departamento |
| --- | --- |
| 1 | Sacatepéquez |
| 2 | Escuintla |
| 3 | Quetzaltenango |
| 4 | Alta Verapaz |
| 5 | Petén |

### Municipios

| ID Municipio | Municipio | ID Departamento |
| --- | --- | --- |
| 1 | Antigua Guatemala | 1 |
| 2 | Escuintla | 2 |
| 3 | Quetzaltenango | 3 |
| 4 | Cobán | 4 |
| 5 | Flores | 5 |

### Direcciones

| ID Dirección | Dirección | Código Postal | ID Municipio |
| --- | --- | --- | --- |
| 1 | Zona 7 | 91405 | 1 |
| 2 | Zona 1 | 97145 | 2 |
| 3 | Zona 1 | 53915 | 3 |
| 4 | Zona 8 | 31535 | 4 |
| 5 | Zona 10 | 63389 | 5 |

### Tarjetas de crédito

Tabla inicial (1FN):

| ID Tarjeta | ID Cliente | Número de Tarjeta | Límite de Crédito | Saldo Actual | Fecha de Emisión | Fecha de Expiración | Estado | Fecha de Corte | Día del Ciclo |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | 558120 | 4872410269895827 | 4344.96 | 20358.67 | 2022-02-09 | 2025-05-04 | Bloqueada | 2022-03-06 | 6 |
| 2 | 443984 | 4,78043E+15 | 48263.8 | 12583.92 | 2021-04-29 | 2025-11-10 | Activa | 2021-05-26 | 26 |
| 3 | 709855 | 4653562424107275 | 37894.69 | 16274.3 | 2021-12-10 | 2026-08-08 | Bloqueada | 2022-01-08 | 8 |
| 4 | 495584 | 4935123661880312 | 3610.3 | 31113.15 | 2020-11-21 | 2025-07-26 | Bloqueada | 2020-12-18 | 18 |
| 5 | 621646 | 4,91859E+15 | 35118.01 | 5054.92 | 2023-10-06 | 2028-02-05 | Cancelada | 2023-11-05 | 5 |

Respuesta:  Para la columna de estados no cumple con la 2FN por lo que se retira y se crea otra

| ID Tarjeta | ID Cliente | Número de Tarjeta | Límite de Crédito | Saldo Actual | Fecha de Emisión | Fecha de Expiración | ID Estado | Fecha de Corte | Día del Ciclo |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | 558120 | 4872410269895827 | 4344.96 | 20358.67 | 2022-02-09 | 2025-05-04 | 3 | 2022-03-06 | 6 |
| 2 | 443984 | 4,78043E+15 | 48263.8 | 12583.92 | 2021-04-29 | 2025-11-10 | 1 | 2021-05-26 | 26 |
| 3 | 709855 | 4653562424107275 | 37894.69 | 16274.3 | 2021-12-10 | 2026-08-08 | 3 | 2022-01-08 | 8 |
| 4 | 495584 | 4935123661880312 | 3610.3 | 31113.15 | 2020-11-21 | 2025-07-26 | 3 | 2020-12-18 | 18 |
| 5 | 621646 | 4,91859E+15 | 35118.01 | 5054.92 | 2023-10-06 | 2028-02-05 | 2 | 2023-11-05 | 5 |

### Estado de la tarjeta

| ID Estado | Estado |
| --- | --- |
| 1 | Activa |
| 2 | Cancelada |
| 3 | Bloqueada |

### Prestamos

Tabla inicial (1FN):

| ID Préstamo | ID Cliente | Monto del Préstamo | Tasa de Interés | Fecha de Desembolso | Fecha de Vencimiento | Saldo Pendiente | Estado del Préstamo |
| --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | 495798 | 964203.64 | 6.63 | 2023-11-19 | 2032-06-06 | 674174.18 | Vencido |
| 2 | 42734 | 811935.67 | 13.42 | 2023-05-07 | 2028-08-29 | 756664.53 | Activo |
| 3 | 540710 | 961457.89 | 13.68 | 2021-10-28 | 2030-03-10 | 200162.19 | Vencido |
| 4 | 983331 | 78869.24 | 11.42 | 2023-05-14 | 2026-12-17 | 67546.61 | Vencido |
| 5 | 409214 | 456168.05 | 6.93 | 2020-05-18 | 2026-07-08 | 729762.37 | Activo |

Respuesta: Para el estado de préstamos no cumple con la 2FN por lo que se crea una nueva tabla

| ID Préstamo | ID Cliente | Monto del Préstamo | Tasa de Interés | Fecha de Desembolso | Fecha de Vencimiento | Saldo Pendiente | ID  Prestamo |
| --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | 495798 | 964203.64 | 6.63 | 2023-11-19 | 2032-06-06 | 674174.18 | 2 |
| 2 | 42734 | 811935.67 | 13.42 | 2023-05-07 | 2028-08-29 | 756664.53 | 1 |
| 3 | 540710 | 961457.89 | 13.68 | 2021-10-28 | 2030-03-10 | 200162.19 | 2 |
| 4 | 983331 | 78869.24 | 11.42 | 2023-05-14 | 2026-12-17 | 67546.61 | 2 |
| 5 | 409214 | 456168.05 | 6.93 | 2020-05-18 | 2026-07-08 | 729762.37 | 1 |

### Estado de Préstamo

| ID Préstamo | Estado del Préstamo |
| --- | --- |
| 1 | Activo |
| 2 | Vencido |

### Empleado

Tabla inicial (1FN):

| ID | Nombre | Apellido | Rol | Departamento | Sucursal | Agencia | Teléfono |
| --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | Nombre_1 | Apellido_1 | Auditor Interno | Petén | Sucursal | Agencia 528 | +502 7815-2167 |
| 2 | Nombre_2 | Apellido_2 | Administrador | Chiquimula | Sucursal | Agencia 171 | +502 3808-9764 |
| 3 | Nombre_3 | Apellido_3 | Atención al Cliente | Jutiapa | Sucursal | Agencia 103 | +502 4899-1699 |
| 4 | Nombre_4 | Apellido_4 | Oficial de Crédito | Quetzaltenango | Sucursal | Agencia 36 | +502 3452-1726 |
| 5 | Nombre_5 | Apellido_5 | Soporte Técnico | Jutiapa | Sucursal | Agencia 583 | +502 8283-6524 |

Respuesta: Para la columna de Rol y Departamento no cumple con la 2FN por lo que se separa

| ID | Nombre | Apellido | Rol | ID Departamento | Sucursal | Agencia | Teléfono |
| --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | Nombre_1 | Apellido_1 | 1 | 5 | Sucursal | Agencia 528 | +502 7815-2167 |
| 2 | Nombre_2 | Apellido_2 | 2 | 6 | Sucursal | Agencia 171 | +502 3808-9764 |
| 3 | Nombre_3 | Apellido_3 | 3 | 7 | Sucursal | Agencia 103 | +502 4899-1699 |
| 4 | Nombre_4 | Apellido_4 | 4 | 8 | Sucursal | Agencia 36 | +502 3452-1726 |
| 5 | Nombre_5 | Apellido_5 | 5 | 9 | Sucursal | Agencia 583 | +502 8283-6524 |

### Rol

| ID Rol | Rol |
| --- | --- |
| 1 | Auditor Interno |
| 2 | Administrador |
| 3 | Atención al Cliente |
| 4 | Oficial de Crédito |
| 5 | Soporte Técnico |

### Departamentos

| ID Departamento | Departamento |
| --- | --- |
| 1 | Sacatepéquez |
| 2 | Escuintla |
| 3 | Quetzaltenango |
| 4 | Alta Verapaz |
| 5 | Petén |

### Transacciones

Tabla inicial (1FN):

| ID Transacción | ID Cliente | Número de Origen | Número de cuenta destino | Tipo de Transacción | Monto | Fecha | Hora | Descripción | Sucursal | Agencia |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | 455902 | 58639163 | 455902 | Transferencia | 2865.8 | 2023-10-24 | 14:28:01 | Transacción de tipo Transferencia | Sucursal | Agencia 221 |
| 2 | 469824 | 99757988 | 469824 | Depósito | 2438.92 | 2023-12-09 | 14:28:01 | Transacción de tipo Depósito | Sucursal | Agencia 257 |
| 3 | 626567 | 19969005 | 626567 | Transferencia | 9494.98 | 2024-06-01 | 14:28:01 | Transacción de tipo Transferencia | Sucursal | Agencia 874 |
| 4 | 784443 | 95861936 | 784443 | Pago | 8399.08 | 2023-12-26 | 14:28:01 | Transacción de tipo Pago | Sucursal | Agencia 265 |
| 5 | 421423 | 21672609 | 421423 | Depósito | 7722.1 | 2022-12-27 | 14:28:01 | Transacción de tipo Depósito | Sucursal | Agencia 986 |

Respuesta: La columna de Tipo de Transacción no cumple con la 2FN

| ID Transacción | ID Cliente | Número de Origen | Número de cuenta destino | Tipo de Transacción | Monto | Fecha | Hora | Descripción | Sucursal | Agencia |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | 455902 | 58639163 | 455902 | 1 | 2865.8 | 2023-10-24 | 14:28:01 | Transacción de tipo Transferencia | Sucursal | Agencia 221 |
| 2 | 469824 | 99757988 | 469824 | 2 | 2438.92 | 2023-12-09 | 14:28:01 | Transacción de tipo Depósito | Sucursal | Agencia 257 |
| 3 | 626567 | 19969005 | 626567 | 1 | 9494.98 | 2024-06-01 | 14:28:01 | Transacción de tipo Transferencia | Sucursal | Agencia 874 |
| 4 | 784443 | 95861936 | 784443 | 3 | 8399.08 | 2023-12-26 | 14:28:01 | Transacción de tipo Pago | Sucursal | Agencia 265 |
| 5 | 421423 | 21672609 | 421423 | 2 | 7722.1 | 2022-12-27 | 14:28:01 | Transacción de tipo Depósito | Sucursal | Agencia 986 |

### Tipo de transacción

| ID | Tipo de Transacción |
| --- | --- |
| 1 | Transferencia |
| 2 | Depósito |
| 3 | Pago |

---

## Aplicación Tercera Forma normal (3FN)

### Clientes

Respuesta: Ya que existen dependencias que no son correctas como ID Cuenta se hace la modificación.

### Clientes

| ID | Nombre | Apellido | Teléfono |
| --- | --- | --- | --- |
| 1 | Nombre_1 | Apellido_1 | +502 4634-7041 |
| 2 | Nombre_2 | Apellido_2 | +502 2701-1140 |
| 3 | Nombre_3 | Apellido_3 | +502 6277-2079 |
| 4 | Nombre_4 | Apellido_4 | +502 7371-9552 |
| 5 | Nombre_5 | Apellido_5 | +502 1699-8122 |

### Cuenta

| ID Cuenta | Número de Cuenta | Tipo de Cuenta | Saldo | ID Cliente |
| --- | --- | --- | --- | --- |
| 1 | 70186741-1 | Ahorro | 256848.49 | 1 |
| 2 | 42148275-2 | Ahorro | 378588.21 | 2 |
| 3 | 95968205-3 | Depósito Monetario | 294799.84 | 3 |
| 4 | 74601803-4 | Ahorro | 30357.74 | 4 |
| 5 | 18184518-5 | Ahorro | 270027.6 | 5 |

## Agencias, Tarjetas de crédito, Prestamos, Empleado y Transacciones

Respuesta:  
Las tablas en cuestión ya cumplen con la **2FN** y no presentan dependencias transitivas. Cada atributo no clave depende únicamente de la clave primaria y no de otros atributos no clave. Esto significa que la estructura actual evita redundancias y mantiene la integridad de los datos.

## Diagrama Matricial

1. Clientes
2. Cuentas
3. Tipos de cuenta
4. Agencias
5. Departamentos
6. Municipios
7. Direcciones
8. Tarjetas de crédito
9. Estados de la Tarjeta
10. Préstamos
11. Estados de préstamo
12. Empleados
13. Roles
14. Transacciones
15. Tipos de transacción

| **Tablas** | **Clientes** | **Cuentas** | Tipos de cuentas | Agencias | **Departamentos** | Municipios | Direcciones | Tarjetas de crédito | Estados de la Tarjeta | Préstamos | Estados de préstamo | Empleados | Roles | Transacciones | Tipos de transacción |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Clientes** | ——— | 1:N | No aplica | No aplica | No aplica | No aplica | No aplica | 1:N | No aplica | 1:N | No aplica | No aplica | No aplica | 1:N | No aplica |
| **Cuentas** | N:1 | ——— | 1:1 | No aplica | No aplica | No aplica | No aplica | No aplica | No aplica | No aplica | No aplica | No aplica | No aplica | 1:N | No aplica |
| Tipos de cuentas | No aplica | 1:1 | ——— | No aplica | No aplica | No aplica | No aplica | No aplica | No aplica | No aplica | No aplica | No aplica | No aplica | No aplica | No aplica |
| Agencias | No aplica | No aplica | No aplica | ——— | 1:1 | 1:1 | 1:1 | No aplica | No aplica | No aplica | No aplica | 1:N | No aplica | 1:N | No aplica |
| **Departamentos** | No aplica | No aplica | No aplica | 1:1 | ——— | 1:N | No aplica | No aplica | No aplica | No aplica | No aplica | No aplica | No aplica | No aplica | No aplica |
| Municipios | No aplica | No aplica | No aplica | 1:1 | N:1 | ——— | 1:N | No aplica | No aplica | No aplica | No aplica | No aplica | No aplica | No aplica | No aplica |
| Direcciones | No aplica | No aplica | No aplica | 1:1 | No aplica | N:1 | ——— | No aplica | No aplica | No aplica | No aplica | No aplica | No aplica | No aplica | No aplica |
| Tarjetas de crédito | N:1 | No aplica | No aplica | No aplica | No aplica | No aplica | No aplica | ——— | 1.1 | No aplica | No aplica | No aplica | No aplica | No aplica | No aplica |
| Estados de la Tarjeta | No aplica | No aplica | No aplica | No aplica | No aplica | No aplica | No aplica | 1:1 | ——— | No aplica | No aplica | No aplica | No aplica | No aplica | No aplica |
| Préstamos | N:1 | No aplica | No aplica | No aplica | No aplica | No aplica | No aplica | No aplica | No aplica | ——— | 1:1 | No aplica | No aplica | No aplica | No aplica |
| Estados de préstamo | No aplica | No aplica | No aplica | No aplica | No aplica | No aplica | No aplica | No aplica | No aplica | 1:1 | ——— | No aplica | No aplica | No aplica | No aplica |
| Empleados | No aplica | No aplica | No aplica | N:1 | No aplica | No aplica | No aplica | No aplica | No aplica | No aplica | No aplica | ——— | 1:1 | No aplica | No aplica |
| Roles | No aplica | No aplica | No aplica | No aplica | No aplica | No aplica | No aplica | No aplica | No aplica | No aplica | No aplica | 1:1 | ——— | No aplica | No aplica |
| Transacciones | N:1 | N:1 | No aplica | N:1 | No aplica | No aplica | No aplica | No aplica | No aplica | No aplica | No aplica | No aplica | No aplica | ——— | 1:1 |
| Tipos de transacción | No aplica | No aplica | No aplica | No aplica | No aplica | No aplica | No aplica | No aplica | No aplica | No aplica | No aplica | No aplica | No aplica | 1:1 | ——— |
---
## Modelo Lógico y Físico
Herramienta: Oracle Data Modeler (Notación Barker)
El modelo lógico y físico será desarrollado en `Oracle Data Modeler`, reflejando las relaciones y dependencias entre las tablas.


