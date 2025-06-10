-- DML para la base de datos FarmaControl - Datos de Ejemplo

-- Insertar Roles
INSERT INTO Roles (nombre_rol) VALUES
('Administrador'),
('Cajero'),
('Farmacéutico');

-- Insertar Usuarios (usando PASSWORD() para el ejemplo, usar hashing seguro en producción)
INSERT INTO Usuarios (usuario, contrasena, nombreCompleto, email, id_rol) VALUES
('admin', PASSWORD('admin123'), 'Juan Pérez', 'juan.perez@farmacontrol.com', 1), -- Rol: Administrador
('cajero01', PASSWORD('cajero123'), 'María Gómez', 'maria.gomez@farmacontrol.com', 2), -- Rol: Cajero
('farma01', PASSWORD('farma123'), 'Carlos Ruiz', 'carlos.ruiz@farmacontrol.com', 3); -- Rol: Farmacéutico

-- Insertar Categorias
INSERT INTO Categorias (nombre_categoria) VALUES
('Analgésicos'),
('Antibióticos'),
('Vitaminas'),
('Dermocosméticos'),
('Material de Curación');

-- Insertar Productos
INSERT INTO Productos (nombre, descripcion, id_categoria, precio_venta, stock) VALUES
('Paracetamol 500mg', 'Analgésico y antipirético', 1, 25.50, 200),
('Amoxicilina 500mg', 'Antibiótico de amplio espectro', 2, 85.00, 150),
('Vitamina C 1000mg', 'Suplemento vitamínico', 3, 45.99, 100),
('Crema Hidratante Facial', 'Para piel seca', 4, 120.00, 50),
('Vendas elásticas', 'Para esguinces y torceduras', 5, 30.00, 75);

-- Insertar Proveedores
INSERT INTO Proveedores (nombreEmpresa, emailContacto, telefono, direccion) VALUES
('Farmaceutica del Sol', 'contacto@fsol.com', '5512345678', 'Av. Siempre Viva 123, CDMX'),
('Distribuidora Salus', 'info@salus.com', '5587654321', 'Calle Falsa 123, Guadalajara'),
('Medicamentos Express', 'ventas@medex.com', '4771122334', 'Blvd. Farma 500, León');

-- Insertar Clientes
INSERT INTO Clientes (nombre_cliente, apellido_cliente, telefono_contacto, email_contacto, direccion_cliente) VALUES
('Ana', 'López', '4771234567', 'ana.lopez@email.com', 'Calle Real 10, León'),
('Pedro', 'Martínez', '4779876543', 'pedro.m@email.com', 'Av. Principal 20, Silao'),
('Cliente', 'Anónimo', NULL, NULL, NULL); -- Cliente para ventas sin registro

-- Insertar Compras
INSERT INTO Compras (id_proveedor, id_usuario, fecha_compra, total) VALUES
(1, 1, '2025-05-20 10:00:00', 1000.00), -- Compra a Farmaceutica del Sol por Admin
(2, 1, '2025-05-25 15:30:00', 750.00); -- Compra a Distribuidora Salus por Admin

-- Insertar DetalleCompras
-- Detalle de Compra 1
INSERT INTO DetalleCompras (id_compra, id_producto, cantidad, precio_unitario_compra, subtotal) VALUES
(1, 1, 50, 20.00, 1000.00); -- 50 Paracetamol a 20.00 c/u

-- Detalle de Compra 2
INSERT INTO DetalleCompras (id_compra, id_producto, cantidad, precio_unitario_compra, subtotal) VALUES
(2, 2, 10, 75.00, 750.00); -- 10 Amoxicilina a 75.00 c/u

-- Insertar Ventas
INSERT INTO Ventas (id_cliente, id_usuario, fecha_venta, total, ticket) VALUES
(1, 2, '2025-06-01 11:00:00', 51.00, 'T0001'), -- Venta a Ana López por Cajero
(3, 2, '2025-06-01 11:30:00', 170.00, 'T0002'), -- Venta anónima por Cajero
(1, 3, '2025-06-02 09:15:00', 120.00, 'T0003'); -- Venta a Ana López por Farmacéutico

-- Insertar DetalleVentas
-- Detalle de Venta 1 (id_venta 1)
INSERT INTO DetalleVentas (id_venta, id_producto, cantidad, precio_unitario_venta, subtotal) VALUES
(1, 1, 2, 25.50, 51.00); -- 2 Paracetamol

-- Detalle de Venta 2 (id_venta 2)
INSERT INTO DetalleVentas (id_venta, id_producto, cantidad, precio_unitario_venta, subtotal) VALUES
(2, 2, 2, 85.00, 170.00); -- 2 Amoxicilina

-- Detalle de Venta 3 (id_venta 3)
INSERT INTO DetalleVentas (id_venta, id_producto, cantidad, precio_unitario_venta, subtotal) VALUES
(3, 4, 1, 120.00, 120.00); -- 1 Crema Hidratante