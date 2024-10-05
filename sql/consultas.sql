-- Mostrar todos los clientes
SELECT * FROM Clientes;

-- Mostrar todas las cuentas con un saldo mayor a 1000
SELECT * FROM Cuentas WHERE saldo > 1000;

-- Mostrar todas las transacciones realizadas por el cliente con id_cliente 1001
SELECT * FROM Transacciones WHERE id_cliente = 10;

-- Info de los clientes con sus cuentas
SELECT Clientes.nombre, Clientes.apellido, Cuentas.numero_cuenta, Cuentas.saldo
FROM Clientes
JOIN Cuentas ON Clientes.id_cliente = Cuentas.id_cliente;

-- Consultar clientes y sus transacciones
SELECT Clientes.nombre, Transacciones.monto, Transacciones.descripcion
FROM Clientes
JOIN Transacciones ON Clientes.id_cliente = Transacciones.id_cliente;
