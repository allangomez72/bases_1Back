# Proyecto1_SistemaBancario_202005035
Laboratorio Sistemas de Bases de Datos 1

---

## Descripcion del proyecto 1
El Sistema Bancario - Banco JP Morgan es un proyecto académico que tiene como finalidad desarrollar un sistema de gestión bancaria utilizando bases de datos relacionales y SQL. El sistema está diseñado para simular la infraestructura de un banco ficticio que opera en Guatemala y se centra en la creación, administración y manejo de datos de clientes, cuentas, préstamos, tarjetas de crédito y transacciones financieras.

El proyecto abarca desde la planificación y diseño del esquema relacional hasta la implementación de consultas avanzadas, permitiendo a los estudiantes de Ingeniería en Ciencias y Sistemas aplicar sus conocimientos en un entorno controlado que replica las operaciones esenciales de un banco real

## Herramientas Utilizadas
- Excalidraw: Creación del modelo conceptual.
- Oracle Data Modeler: Creación del modelo lógico y físico (notación Barker).
- DataGrip: Para consultas y creacion de tablas en una bd dockerizada.

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
[Aplicacion de las 3 formas normales](/docs/3FN.md)

---
## Normalización (Tablas obtenidas)
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
| 1 | 70186741-1 | 1 | 256848.49 | 1 |
| 2 | 42148275-2 | 1 | 378588.21 | 2 |
| 3 | 95968205-3 | 2 | 294799.84 | 3 |
| 4 | 74601803-4 | 1 | 30357.74 | 4 |
| 5 | 18184518-5 | 1 | 270027.6 | 5 |

### Tipo de cuenta

| ID | Tipo de Cuenta |
| --- | --- |
| 1 | Ahorro |
| 2 | Monetario |

### Agencias
| ID | Nombre | ID_Locacion | Departamento | Municipio | Dirección | Teléfono |
| --- | --- | --- | --- | --- | --- | --- |
| 1 | Sucursal Antigua Guatemala 1 | 1 | 1 | 1 | 1 | +502 8036-8423 |
| 2 | Sucursal Escuintla 2 | 1 | 2 | 2 | 2 | +502 9525-7114 |
| 3 | Sucursal Quetzaltenango 3 | 1 | 3 | 3 | 3 | +502 2873-4763 |
| 4 | Sucursal Cobán 4 | 1 | 4 | 4 | 4 | +502 6809-5562 |
| 5 | Sucursal Flores 5 | 1 | 5 | 5 | 5 | +502 5942-1959 |

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

### Tipo

| ID Tipo | Nombre |
| --- | --- |
| 1 | Sucursal |
| 2 | Agencia |

### Locacion

| ID Locación | Nombre | ID Tipo |
| --- | --- | --- |
| 1 | Sucursal | 1 |
| 2 | Agencia 528 | 2 |
| 2 | Agencia 171 | 2 |
| 3 | Agencia 103 | 2 |
| 4 | Agencia 36 | 2 |
| 5 | Agencia 583 | 2 |

### Tarjetas de crédito

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

| ID | Nombre | Apellido | Teléfono | Rol | ID Departamento | ID Locacion |
| --- | --- | --- | --- | --- | --- | --- |
| 1 | Nombre_1 | Apellido_1 | +502 7815-2167 | 1 | 5 | 2 |
| 2 | Nombre_2 | Apellido_2 | +502 3808-9764 | 2 | 6 | 3 |
| 3 | Nombre_3 | Apellido_3 | +502 4899-1699 | 3 | 7 | 4 |
| 4 | Nombre_4 | Apellido_4 | +502 3452-1726 | 4 | 8 | 5 |
| 5 | Nombre_5 | Apellido_5 | +502 8283-6524 | 5 | 9 | 6 |

### Rol

| ID Rol | Rol |
| --- | --- |
| 1 | Auditor Interno |
| 2 | Administrador |
| 3 | Atención al Cliente |
| 4 | Oficial de Crédito |
| 5 | Soporte Técnico |

### Departamentos
(Referencia a la tabla Departamentos)

### Locacion
(Referencia a la tabla Locacion)

### Transacciones

| ID Transacción | ID Cliente | Número de Origen | Número de cuenta destino | Tipo de Transacción | Monto | Fecha | Hora | Descripción | ID Locacion |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | 455902 | 58639163 | 455902 | 1 | 2865.8 | 2023-10-24 | 14:28:01 | Transacción de tipo Transferencia | 2 |
| 2 | 469824 | 99757988 | 469824 | 2 | 2438.92 | 2023-12-09 | 14:28:01 | Transacción de tipo Depósito | 3 |
| 3 | 626567 | 19969005 | 626567 | 1 | 9494.98 | 2024-06-01 | 14:28:01 | Transacción de tipo Transferencia | 4 |
| 4 | 784443 | 95861936 | 784443 | 3 | 8399.08 | 2023-12-26 | 14:28:01 | Transacción de tipo Pago | 5 |
| 5 | 421423 | 21672609 | 421423 | 2 | 7722.1 | 2022-12-27 | 14:28:01 | Transacción de tipo Depósito | 6 |

### Tipo de transacción

| ID | Tipo de Transacción |
| --- | --- |
| 1 | Transferencia |
| 2 | Depósito |
| 3 | Pago0 |

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

### Modelo Lógico
![Modelo_logico](/img/MLogico.png)

# Relación y Cardinalidad del Modelo Lógico

## 1. AGENCIAS - LOCACIONES
- Una agencia es una sola locación, pero una locación puede tener varias agencias.

## 2. LOCACION - EMPLEADO
- Una locacion puede estar asociada a muchos empleados, pero un empleado debe tener una sola locacion.

## 3. TIPO - LOCACION
- Un tipo debe tener una locacion y una locacion debe tener un tipo

## 4. EMPLEADOS - AGENCIAS
- Un empleado está asignado a una sola agencia, pero una agencia puede tener varios empleados.

## 5. EMPLEADOS - ROLES
- Un empleado tiene un solo rol, pero un rol debe estar asignado a un empleado.

## 6. AGENCIA - DIRECCION
- Una agencia debe tener una direccion y una direccion debe de tener asociada una agencia

## 7. DIRECCIONES - MUNICIPIOS
- Una dirección está en un solo municipio, pero un municipio puede tener varias direcciones.

## 8. MUNICIPIOS - DEPARTAMENTOS
- Un municipio pertenece a un solo departamento, pero un departamento puede tener varios municipios.

## 9. CLIENTES - CUENTAS
- Un cliente puede tener múltiples cuentas, pero una cuenta está asociada a un solo cliente.

## 10. CUENTAS - TIPOS DE CUENTA
- Una cuenta tiene un solo tipo, pero un tipo de cuenta puede estar asociado a varias cuentas.

## 11. TARJETAS DE CRÉDITO - CLIENTES
- Un cliente puede tener múltiples tarjetas de crédito, pero una tarjeta está asociada a un solo cliente.

## 12. ESTADOS DE LA TARJETA - TARJETAS DE CRÉDITO
- Un estado de la tarjeta debe estar asociado a una tarjeta, y una tarjeta debe tener un solo estado de tarjeta.

## 13. PRESTAMOS - CLIENTES
- Un cliente puede tener múltiples préstamos, pero un préstamo está asociado a un solo cliente.

## 14. ESTADOS DE PRESTAMO - PRESTAMO
- Un prestamo debe de tener un solo estado, y un estado debe estar asociado a un solo prestamo.

## 15. TRANSACCIONES - CUENTAS
- Una cuenta puede estar relacionada con múltiples transacciones (como origen o destino), pero cada transacción involucra solo una cuenta como origen y otra como destino.

## 16. TIPOS DE TRANSACCION - TRANSACCION
- Una transaccion debe de tener un solo tipo de transaccion y un tipo de transaccion debe estar asociado a una sola transaccion.

### Modelo Fisico
![Modelo_fisico](/img/MFisico.png)

### Implementacion de las tablas
Para este proyecto se usara la sintaxis de ORACLE para la creacion de las tablas:
#### Tabla TIPOS:
```SQL
CREATE TABLE Tipos (
    id_tipo NUMBER(1),
    instalacion VARCHAR(50) NOT NULL,
    CONSTRAINT pk_id_tipo PRIMARY KEY (id_tipo)
);
```
- EEsta tabla define los diferentes tipos de locaciones que existen dentro del sistema. El campo `id_tipo` es la clave primaria y está diseñado para aceptar un número de un solo dígito, representando los posibles tipos de locaciones que se pueden registrar. El campo instalacion almacena el nombre descriptivo del tipo de locación, y se eligió el tipo de dato `VARCHAR(50)` para permitir variabilidad en la longitud de los nombres.

#### Tabla ESTADO DE PRESTAMOS
```SQL
CREATE TABLE Estado_prestamos (
    id_estado_prestamo NUMBER(1),
    estado VARCHAR(20) NOT NULL,
    CONSTRAINT pk_id_estado_prestamo PRIMARY KEY (id_estado_prestamo)
);
```
- Esta tabla se encarga de registrar los diferentes estados en los que puede estar un préstamo (por ejemplo: activo, vencido, cancelado). El campo `id_prestamo` actúa como clave primaria y está limitado a un solo dígito, dado que por convención solo existirán tres estados. El campo `estado` utiliza `VARCHAR(20)` para permitir variaciones en la descripción del estado.

#### Tabla ESTADOS DE TARJETA
```SQL
CREATE TABLE Estado_tarjetas (
    id_estado_tarjeta NUMBER(1),
    estado VARCHAR(20) NOT NULL,
    CONSTRAINT pk_id_estado_tarjeta PRIMARY KEY (id_estado_tarjeta)
);
```
- La tabla Estado_tarjetas almacena los posibles estados de las tarjetas (por ejemplo: activa, bloqueada, cancelada). El campo `id_estado_tarjeta` es la clave primaria, y como solo existen unos pocos estados definidos, se usa `NUMBER(1)`. El campo `estado` es de tipo VARCHAR(25) para guardar el nombre del estado correspondiente.

#### Tabla TIPOS DE CUENTAS
```SQL
CREATE TABLE Tipos_cuentas (
    id_tipo_cuenta NUMBER(1),
    tipo VARCHAR(30) NOT NULL,
    CONSTRAINT pk_id_tipo_cuenta PRIMARY KEY (id_tipo_cuenta)
);

```
- Esta tabla almacena informacion de los tipos de cuenta que ofrece el banco, por convencion son 4 tipos por lo que para la clave primaria `Id` se uso el tipo de dato `NUMBER(1)` para que solo acepte 1 solo digito, y para `tipo` que es el campo para ingresar el nombre del tipo de cuenta se uso el tipo de dato `VARCHAR(25)` porque varia el nombre de los tipos de cuenta.

#### Tabla TIPOS DE TRANSACCIONES
```SQL
CREATE TABLE Tipos_transacciones (
    id_tipo_transaccion NUMBER(1),
    tipo VARCHAR(30) NOT NULL,
    CONSTRAINT pk_id_tipo_transaccion PRIMARY KEY (id_tipo_transaccion)
);
```
- Esta tabla guarda los diferentes tipos de transacciones que pueden realizar los clientes. El campo `id_tipo_transaccion` es la clave primaria, diseñada para aceptar solo un dígito, ya que el número de tipos de transacciones es limitado. El campo tipo utiliza `VARCHAR(25)` para permitir descripciones variables.

### Tabla DEPARTAMENTOS
```SQL
CREATE TABLE Departamentos (
    id_departamento NUMBER(2),
    departamento VARCHAR(30) NOT NULL,
    CONSTRAINT pk_id_departamento PRIMARY KEY (id_departamento)
);
```
- La tabla Departamentos almacena los nombres de los departamentos en los que la institución opera. El campo `id_departamento` es la clave primaria y está diseñado para aceptar un número de hasta dos dígitos. El campo `departamento` es un `VARCHAR(25)` que contiene el nombre del departamento.

### Tabla ROLES
```SQL
CREATE TABLE Roles (
    id_rol NUMBER(2),
    rol VARCHAR(30) NOT NULL,
    CONSTRAINT pk_id_rol PRIMARY KEY (id_rol)
);

```
- Esta tabla define los roles de los empleados dentro de la institución. El campo `id_rol` es la clave primaria y el campo `rol` almacena el nombre del rol, utilizando `VARCHAR(25)` para adaptarse a nombres de diferentes longitudes.

### Tabla LOCACIONES
```SQL
CREATE TABLE Locaciones (
    id_locacion NUMBER(4),
    locacion VARCHAR(50) NOT NULL,
    id_tipo NUMBER(1) NOT NULL,
    CONSTRAINT pk_id_locacion PRIMARY KEY (id_locacion),
    CONSTRAINT fk_id_tipo FOREIGN KEY (id_tipo) REFERENCES Tipos(id_tipo)
);
```
- La tabla locaciones registra las distintas locaciones que puede llegar a tener ya sea Agecia o sucursal. El campo `id_locacion` es la clave primaria y el campo `locacion` es un `VARCHAR(50)` que guarda el nombre de dicha locacion, ademas id_tipo es una clave foranea que hace referencia al tipo de locacion que se tiene en la tabla `TIPOS`.

### Tabla CLIENTES
```SQL
CREATE TABLE Clientes (
    id_cliente NUMBER(8),
    nombre VARCHAR(30) NOT NULL,
    apellido VARCHAR(30) NOT NULL,
    telefono VARCHAR(15) NOT NULL,
    CONSTRAINT pk_id_cliente PRIMARY KEY (id_cliente)
);
```
- Esta tabla almacena información personal de los clientes, como el nombre, apellido y telefono. El campo `id_cliente` es la clave primaria y está diseñado para aceptar hasta 8 dígitos, mientras que los campos nombre y apellido usan `VARCHAR(30)` para permitir una longitud razonable en los nombres.

### Tabla CUENTAS
```SQL
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
```
- Esta tabla almacena los datos de las cuentas bancarias de los clientes. El campo id es la clave primaria, el campo numero_cuenta guarda el número de la cuenta, y el campo saldo almacena el saldo de la cuenta. Las claves foráneas id_tipo y id_cliente enlazan esta tabla con Tipos_cuentas y Clientes, respectivamente.

### Tabla PRESTAMOS
```SQL
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
```
- Esta tabla almacena los préstamos otorgados a los clientes. El campo `id_prestamo` es la clave primaria, id_cliente enlaza el préstamo con el cliente correspondiente, y monto almacena la cantidad del préstamo. tasa_intere representa el interés aplicado, mientras que fecha_desembolso y fecha_vencimiento indican las fechas de otorgamiento y finalización del préstamo, respectivamente. saldo_pendiente muestra la cantidad que aún debe ser pagada. id_estado_prestamo enlaza esta tabla con el estado del préstamo en la tabla Estado_prestamos.

### Tabla TARJETAS
```SQL
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
```
- Esta tabla almacena información sobre las tarjetas de crédito de los clientes. `id_tarjeta es la clave primaria, mientras que id_cliente relaciona la tarjeta con el cliente correspondiente. numero_tarjeta guarda el número de la tarjeta, y limite_credito establece el máximo de crédito disponible. saldo_actual refleja el saldo que el cliente tiene en la tarjeta. Las fechas de fecha_emision y fecha_vencimiento indican cuándo fue emitida la tarjeta y cuándo caduca. id_estado_tarjeta se conecta con el estado de la tarjeta en la tabla Estado_tarjetas, y fecha_corte junto con dia_ciclo permite gestionar el ciclo de facturación.

### Tabla EMPLEADOS
```SQL
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
```
- Esta tabla almacena los datos de los empleados del banco. El campo `id_empleado` es la clave primaria, y nombre y apellido almacenan la identificación del empleado. telefono guarda el número del empleado. Los campos id_rol, id_departamento y id_locacion permiten enlazar al empleado con su rol, departamento y localización específica dentro de la organización, referenciando a las tablas correspondientes ya que son claves foraneas.

### Tabla MUNICIPIOS
```SQL
CREATE TABLE Municipios (
    id_municipio NUMBER(3),
    municipio VARCHAR(30) NOT NULL,
    id_departamento NUMBER(2) NOT NULL,
    CONSTRAINT pk_id_municipio PRIMARY KEY (id_municipio),
    CONSTRAINT fk_id_departamento_municipio FOREIGN KEY (id_departamento) REFERENCES Departamentos(id_departamento)
);
```
- Esta tabla almacena los municipios donde se encuentran las agencias del banco. `id_municipio` es la clave primaria y `municipio` guarda el nombre del municipio. El campo `id_departamento` se usa para relacionar a su respectivo departamento, ademas es la clave foranea que hace referencia a la tabla de `DEPARTAMENTOS`.

### Tabla DIRECCIONES
```SQL
CREATE TABLE Direcciones (
    id_direccion NUMBER(6),
    direccion VARCHAR(50) NOT NULL,
    codigo_postal VARCHAR(5) NOT NULL,
    id_municipio NUMBER(3) NOT NULL,
    CONSTRAINT pk_id_direccion PRIMARY KEY (id_direccion),
    CONSTRAINT fk_id_municipio FOREIGN KEY (id_municipio) REFERENCES Municipios(id_municipio)
);
```
- Esta tabla almacena las direcciones de las agencias del banco. `id_direccion` es la clave primaria, direccion guarda la dirección física y codigo_postal el código postal correspondiente. El campo `id_municipio` enlaza la dirección con su municipio correspondiente, ademas es la clave foranea que hace referencia a la tabla `MUNICIPIOS`.

### Tabla AGENCIAS
```SQL
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
```
- Esta tabla almacena información sobre las agencias del banco. id_agencia es la clave primaria y nombre guarda el nombre de la agencia. Tanto `id_locacion` como `id_direccion` se utilizan como claves foraneas para relacionar con las tablas respectivas, ademas del campo telefono que almacena el numero para el contacto de la agencia.

### Tabla TRANSACCIONES
```SQL
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
```
- Esta tabla almacena los detalles de las transacciones realizadas por los clientes, `id_transaccion` es la clave primaria, mientras que `id_cliente` relaciona la transacción con el cliente correspondiente. numero_origen y numero_destino guardan los números de cuenta de origen y destino. id_tipo_transaccion se utiliza para clasificar el tipo de transacción, referenciando la tabla Tipos_transacciones. El `monto` representa la cantidad transaccionada, y las fechas `fecha_inicio` y `fecha_fin` indican el periodo de la transacción y descripcion proporciona información adicional sobre la transacción, cabe destacar que se tiene una restriccion para realizar cualquier transaccion que debe de ser mayor a 0.