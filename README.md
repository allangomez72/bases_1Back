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

### Modelo Fisico
![Modelo_fisico](/img/)

### Implementacion de las tablas
Para este proyecto se usara la sintaxis de ORACLE para la creacion de las tablas:
#### Tabla TIPOS:
```SQL
CREATE TABLE Tipos (
    id NUMBER(1) PRIMARY KEY,
    instalacion VARCHAR(25) NOT NULL
);
```
- Esta tabla almacena informacion sobre los tipos de locaciones que pueden existir. Se utiliza el campo `id` para la clave primaria e `instalacion` para el nombre del tipo de locacion. El tipo de dato `NUMBER(1)` solo puede aceptar numeros de 0-9 ya que por la convencion de como se ingresan los datos solo pueden haber 3 tipos, el tipo de dato `VARCHAR(25)` se eligio para el nombre de la instalacion por que una cadena de logitud variable.

#### Tabla ESTADO DE PRESTAMOS
```SQL
CREATE TABLE Estado_prestamos (
    id NUMBER(1) PRIMARY KEY,
    estado VARCHAR(25) NOT NULL
);
```
- Esta tabla almacena información del estado en el que se encuentran los prestamos, se utiliza el campo `id` para la clave primaria y `estado` para definir los estados que pueden existiri para un prestamo; el tipo de dato para id es `NUMBER(1)`porque por convencion solo existiran 3 estados y `VARCHAR(25)` porque la cadena del nombre de estado puede variar.

#### Tabla ESTADOS DE TARJETA
```SQL
CREATE TABLE Estado_tarjetas (
    id NUMBER(1) PRIMARY KEY,
    estado VARCHAR(25) NOT NULL
);
```
- Esta tabla almacena información del estado en el que se encuentra una tarjeta, se usa el campo `id` para la clave primaria y `estado` para el nombre del estado en que se encuentra la tarjeta, el tipo de dato es `VARCHAR(25)` por que la caadena del nombre puede variar un poco.

#### Tabla TIPOS DE CUENTAS
```SQL
CREATE TABLE Tipos_cuentas (
    id NUMBER(1) PRIMARY KEY,
    tipo VARCHAR(25) NOT NULL
);
```
- Esta tabla almacena informacion de los tipos de cuenta que ofrece el banco, por convencion son 4 tipos por lo que para la clave primaria `Id` se uso el tipo de dato `NUMBER(1)` para que solo acepte 1 solo digito, y para `tipo` que es el campo para ingresar el nombre del tipo de cuenta se uso el tipo de dato `VARCHAR(25)` porque varia el nombre de los tipos de cuenta.

#### Tabla TIPOS DE TRANSACCIONES
```SQL
CREATE TABLE Tipos_transacciones (
    id NUMBER(1) PRIMARY KEY,
    tipo VARCHAR(25) NOT NULL
);
```
- 

```SQL
CREATE TABLE Departamentos (
    id NUMBER(2) PRIMARY KEY,
    departamento VARCHAR(25) NOT NULL
);
```

```SQL
CREATE TABLE Roles (
    id NUMBER(2) PRIMARY KEY,
    rol VARCHAR(25) NOT NULL
);
```

```SQL
CREATE TABLE Locaciones (
    id NUMBER(4) PRIMARY KEY,
    locacion VARCHAR(25) NOT NULL,
    id_tipo NUMBER(1) NOT NULL,
    CONSTRAINT fk_id_tipo FOREIGN KEY (id_tipo) REFERENCES Tipos(id)
);
```

```SQL
CREATE TABLE Clientes (
    id Number(8) PRIMARY KEY,
    nombre VARCHAR(30) NOT NULL,
    apellido VARCHAR(30) NOT NULL,
    telefono VARCHAR(15) NOT NULL

);
```

```SQL
CREATE TABLE Cuentas (
    id NUMBER(10) PRIMARY KEY,
    numero_cuenta VARCHAR(25) NOT NULL,
    saldo NUMBER(10) NOT NULL,
    id_tipo NUMBER(1) NOT NULL,
    id_cliente NUMBER(8) NOT NULL,
    CONSTRAINT fk_cuentas_id_tipo FOREIGN KEY (id_tipo) REFERENCES Tipos_cuentas(id),
    CONSTRAINT fk_cuentas_id_cliente FOREIGN KEY (id_cliente) REFERENCES Clientes(id)
);
```

```SQL
CREATE TABLE Prestamos (
    id NUMBER(8) PRIMARY KEY,
    id_cliente NUMBER(8) NOT NULL,
    monto NUMBER(10,2) NOT NULL,
    tasa_intere NUMBER(4,2) NOT NULL,
    fecha_deseembolso DATE NOT NULL,
    fecha_vencimiento DATE NOT NULL,
    saldo_pendiente NUMBER(10,2) NOT NULL,
    id_estado NUMBER(1) NOT NULL,
    CONSTRAINT fk_id_cliente FOREIGN KEY (id_cliente) REFERENCES Clientes(id),
    CONSTRAINT fk_id_estado FOREIGN KEY (id_estado) REFERENCES Estado_prestamos(id)
);
```

```SQL
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
    CONSTRAINT fk_id_cliente_tarjeta FOREIGN KEY (id_cliente) REFERENCES Clientes (id),
    CONSTRAINT fk_id_estado_tarjeta FOREIGN KEY (id_estado) REFERENCES Estado_tarjetas (id)
);
```

```SQL
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
```

```SQL
CREATE TABLE Municipios (
    id NUMBER(3) PRIMARY KEY,
    municipio VARCHAR(30) NOT NULL,
    id_departamento NUMBER(10) NOT NULL,
    CONSTRAINT fk_id_departamento_municipio FOREIGN KEY (id_departamento) REFERENCES Departamentos(id)
);
```

```SQL
CREATE TABLE Direcciones (
    id NUMBER(6) PRIMARY KEY,
    direccion VARCHAR(50) NOT NULL,
    codigo_postal VARCHAR(5) NOT NULL,
    id_municipio NUMBER(3) NOT NULL,
    CONSTRAINT fk_id_municipio FOREIGN KEY (id_municipio) REFERENCES Municipios(id)
);
```

```SQL
CREATE TABLE Agencias (
    id NUMBER(4) PRIMARY KEY,
    nombre VARCHAR(30) NOT NULL,
    id_locacion NUMBER(4) NOT NULL,
    id_direccion NUMBER(6) NOT NULL,
    telefono VARCHAR(15) NOT NULL,
    CONSTRAINT fk_id_locacion_agencia FOREIGN KEY (id_locacion) REFERENCES Locaciones(id),
    CONSTRAINT fk_id_direccion_agencia FOREIGN KEY (id_direccion) REFERENCES Direcciones(id)
);
```

```SQL
CREATE TABLE Transacciones (
    id NUMBER(10) PRIMARY KEY,
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
    CONSTRAINT fk_transaccion_id_cliente FOREIGN KEY (id_cliente) REFERENCES Clientes(id),
    CONSTRAINT fk_transaccion_id_tipo_transaccion FOREIGN KEY (id_tipo_transaccion) REFERENCES Tipos_transacciones(id),
    CONSTRAINT fk_transaccion_id_locacion FOREIGN KEY (id_locacion) REFERENCES Locaciones(id)
);
```
