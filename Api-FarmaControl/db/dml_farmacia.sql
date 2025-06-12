-- DML para la base de datos FarmaControl - Datos de Ejemplo

-- Insertar Roles
INSERT INTO Roles (nombre_rol) VALUES
('Administrador'),
('Cajero'),
('Farmacéutico');

-- Insertar Usuarios (usando PASSWORD() para el ejemplo, usar hashing seguro en producción)
INSERT INTO Usuarios (usuario, contrasena, nombreCompleto, email, id_rol) VALUES
('admin', PASSWORD('admin123'), 'Juan Pérez', 'juan.perez@farmacontrol.com', 1),
('cajero01', PASSWORD('cajero123'), 'María Gómez', 'maria.gomez@farmacontrol.com', 2),
('farma01', PASSWORD('farma123'), 'Carlos Ruiz', 'carlos.ruiz@farmacontrol.com', 3),
('cajero02', PASSWORD('cajeroabc'), 'Sofía López', 'sofia.lopez@farmacontrol.com', 2),
('farma02', PASSWORD('farmaxyz'), 'Roberto Hernández', 'roberto.h@farmacontrol.com', 3),
('admin2', PASSWORD('admin456'), 'Laura García', 'laura.g@farmacontrol.com', 1),
('cajero03', PASSWORD('cajeropqr'), 'Diego Ramírez', 'diego.r@farmacontrol.com', 2),
('farma03', PASSWORD('farmadef'), 'Ana Torres', 'ana.t@farmacontrol.com', 3),
('cajero04', PASSWORD('cajeromn'), 'Luis Vargas', 'luis.v@farmacontrol.com', 2),
('farma04', PASSWORD('farmajkl'), 'Elena Soto', 'elena.s@farmacontrol.com', 3);
-- Insertar Categorias
INSERT INTO Categorias (nombre_categoria) VALUES
('Analgésicos'),
('Antibióticos'),
('Vitaminas'),
('Dermocosméticos'),
('Material de Curación'),
('Antiinflamatorios'),
('Antialérgicos'),
('Digestivos'),
('Respiratorios'),
('Cardiovasculares');

-- Insertar Productos
INSERT INTO Productos (nombre, descripcion, id_categoria, precio_venta, stock) VALUES
('Paracetamol 500mg', 'Analgésico y antipirético', 1, 25.50, 200),
('Amoxicilina 500mg', 'Antibiótico de amplio espectro', 2, 85.00, 150),
('Vitamina C 1000mg', 'Suplemento vitamínico', 3, 45.99, 100),
('Crema Hidratante Facial', 'Para piel seca', 4, 120.00, 50),
('Vendas elásticas', 'Para esguinces y torceduras', 5, 30.00, 75),
('Ibuprofeno 400mg', 'Antiinflamatorio no esteroideo (AINE)', 6, 35.00, 180),
('Cetirizina 10mg', 'Antihistamínico para alergias', 7, 60.00, 120),
('Omeprazol 20mg', 'Reductor de ácido estomacal', 8, 95.00, 90),
('Salbutamol Inhalador', 'Broncodilatador para asma', 9, 150.00, 60),
('Losartán 50mg', 'Antihipertensivo', 10, 110.00, 80),
('Alcohol Etílico 96%', 'Antiséptico de uso externo', 5, 20.00, 300),
('Tiras Reactivas Glucosa', 'Para monitoreo de glucosa en sangre', 5, 200.00, 40);


-- Insertar Proveedores
INSERT INTO Proveedores (nombreEmpresa, emailContacto, telefono, direccion) VALUES
('Farmaceutica del Sol', 'contacto@fsol.com', '5512345678', 'Av. Siempre Viva 123, CDMX'),
('Distribuidora Salus', 'info@salus.com', '5587654321', 'Calle Falsa 123, Guadalajara'),
('Medicamentos Express', 'ventas@medex.com', '4771122334', 'Blvd. Farma 500, León'),
('Global Pharma', 'sales@gpharma.com', '8123456789', 'Calle Industria 789, Monterrey'),
('BioLab Supplies', 'support@biolab.com', '3398765432', 'Av. Central 456, Querétaro'),
('Salud Total SA', 'contacto@saludtotal.com', '2221234567', 'Paseo de la Reforma 10, Puebla'),
('ProFarma Mx', 'ventas@profarma.com', '9987654321', 'Blvd. Cancun 1, Cancun'),
('Universal Health', 'info@unih.com', '6641234567', 'Av. Revolucion 50, Tijuana'),
('MediCorp Solutions', 'contact@medsol.com', '6149876543', 'Calle Chih. 200, Chihuahua'),
('Vitality Distributors', 'hello@vitality.com', '9611234567', 'Km 5 Carretera Tuxtla, Tuxtla G.');

-- Insertar Clientes
INSERT INTO Clientes (nombre_cliente, apellido_cliente, telefono_contacto, email_contacto, direccion_cliente) VALUES
('Cliente', 'Anónimo', NULL, NULL, NULL), -- Cliente para ventas sin registro
('Ana', 'López', '4771234567', 'ana.lopez@email.com', 'Calle Real 10, León'),
('Pedro', 'Martínez', '4779876543', 'pedro.m@email.com', 'Av. Principal 20, Silao'),
('Sofía', 'Ramírez', '4772233445', 'sofia.r@email.com', 'Blvd. Héroes 100, Irapuato'),
('Jorge', 'García', '4773344556', 'jorge.g@email.com', 'Calle Girasol 5, Salamanca'),
('Laura', 'Hernández', '4774455667', 'laura.h@email.com', 'Privada del Sol 15, Celaya'),
('Miguel', 'Díaz', '4775566778', 'miguel.d@email.com', 'Fracc. Las Torres 30, Guanajuato'),
('Valentina', 'Pérez', '4776677889', 'valen.p@email.com', 'Zona Centro 45, Dolores Hgo.'),
('Ricardo', 'Sánchez', '4777788990', 'ricardo.s@email.com', 'Col. Jardines 25, San Miguel de Allende'),
('Fernanda', 'Morales', '4778899001', 'fer.m@email.com', 'Valle Verde 50, León');

-- Insertar Compras
INSERT INTO Compras (id_proveedor, id_usuario, fecha_compra, total) VALUES
(1, 1, '2025-05-20 10:00:00', 1275.00), -- Compra 1: Paracetamol + Ibuprofeno de Farmaceutica del Sol
(2, 1, '2025-05-25 15:30:00', 1650.00), -- Compra 2: Amoxicilina + Omeprazol de Distribuidora Salus
(3, 1, '2025-05-28 09:00:00', 700.00),  -- Compra 3: Vitaminas + Vendas de Medicamentos Express
(4, 6, '2025-06-01 11:00:00', 900.00),  -- Compra 4: Cetirizina + Salbutamol de Global Pharma
(5, 6, '2025-06-03 14:00:00', 1500.00), -- Compra 5: Losartán + Crema Hidratante de BioLab Supplies
(1, 1, '2025-06-05 16:00:00', 500.00),  -- Compra 6: Paracetamol de Farmaceutica del Sol
(2, 6, '2025-06-07 10:30:00', 800.00),  -- Compra 7: Amoxicilina de Distribuidora Salus
(3, 1, '2025-06-09 11:45:00', 450.00),  -- Compra 8: Vitaminas de Medicamentos Express
(4, 6, '2025-06-11 13:00:00', 1100.00), -- Compra 9: Ibuprofeno + Omeprazol de Global Pharma
(5, 1, '2025-06-12 09:30:00', 2500.00); -- Compra 10: Varias cosas de BioLab Supplies

-- Insertar DetalleCompras (más de 10 en total)
-- Detalle Compra 1 (id_compra 1)
INSERT INTO DetalleCompras (id_compra, id_producto, cantidad, precio_unitario_compra, subtotal) VALUES
(1, 1, 50, 20.00, 1000.00), -- Paracetamol
(1, 6, 10, 27.50, 275.00);   -- Ibuprofeno

-- Detalle Compra 2 (id_compra 2)
INSERT INTO DetalleCompras (id_compra, id_producto, cantidad, precio_unitario_compra, subtotal) VALUES
(2, 2, 15, 80.00, 1200.00),  -- Amoxicilina
(2, 8, 5, 90.00, 450.00);    -- Omeprazol

-- Detalle Compra 3 (id_compra 3)
INSERT INTO DetalleCompras (id_compra, id_producto, cantidad, precio_unitario_compra, subtotal) VALUES
(3, 3, 10, 40.00, 400.00),   -- Vitamina C
(3, 5, 10, 30.00, 300.00);   -- Vendas elásticas

-- Detalle Compra 4 (id_compra 4)
INSERT INTO DetalleCompras (id_compra, id_producto, cantidad, precio_unitario_compra, subtotal) VALUES
(4, 7, 10, 60.00, 600.00),   -- Cetirizina
(4, 9, 2, 150.00, 300.00);   -- Salbutamol

-- Detalle Compra 5 (id_compra 5)
INSERT INTO DetalleCompras (id_compra, id_producto, cantidad, precio_unitario_compra, subtotal) VALUES
(5, 10, 10, 100.00, 1000.00), -- Losartán
(5, 4, 5, 100.00, 500.00);    -- Crema Hidratante

-- Detalle Compra 6 (id_compra 6)
INSERT INTO DetalleCompras (id_compra, id_producto, cantidad, precio_unitario_compra, subtotal) VALUES
(6, 1, 25, 20.00, 500.00);    -- Paracetamol

-- Detalle Compra 7 (id_compra 7)
INSERT INTO DetalleCompras (id_compra, id_producto, cantidad, precio_unitario_compra, subtotal) VALUES
(7, 2, 10, 80.00, 800.00);    -- Amoxicilina

-- Detalle Compra 8 (id_compra 8)
INSERT INTO DetalleCompras (id_compra, id_producto, cantidad, precio_unitario_compra, subtotal) VALUES
(8, 3, 10, 45.00, 450.00);    -- Vitamina C

-- Detalle Compra 9 (id_compra 9)
INSERT INTO DetalleCompras (id_compra, id_producto, cantidad, precio_unitario_compra, subtotal) VALUES
(9, 6, 20, 30.00, 600.00),    -- Ibuprofeno
(9, 8, 5, 100.00, 500.00);    -- Omeprazol

-- Detalle Compra 10 (id_compra 10)
INSERT INTO DetalleCompras (id_compra, id_producto, cantidad, precio_unitario_compra, subtotal) VALUES
(10, 1, 30, 20.00, 600.00),   -- Paracetamol
(10, 4, 5, 100.00, 500.00),   -- Crema Hidratante
(10, 5, 15, 30.00, 450.00),   -- Vendas
(10, 11, 20, 15.00, 300.00),  -- Alcohol
(10, 12, 3, 180.00, 540.00);  -- Tiras Reactivas

-- Insertar Ventas
INSERT INTO Ventas (id_cliente, id_usuario, fecha_venta, total, ticket) VALUES
(2, 2, '2025-06-01 11:00:00', 51.00, 'T0001'), -- Ana López (Cajero01)
(1, 2, '2025-06-01 11:30:00', 170.00, 'T0002'), -- Cliente Anónimo (Cajero01)
(2, 3, '2025-06-02 09:15:00', 120.00, 'T0003'), -- Ana López (Farma01)
(3, 4, '2025-06-02 14:00:00', 70.00, 'T0004'), -- Pedro Martínez (Cajero02)
(4, 5, '2025-06-03 10:45:00', 91.98, 'T0005'), -- Sofía Ramírez (Farma02)
(1, 2, '2025-06-04 12:00:00', 30.00, 'T0006'), -- Cliente Anónimo (Cajero01)
(5, 4, '2025-06-05 16:30:00', 275.00, 'T0007'), -- Jorge García (Cajero02)
(6, 3, '2025-06-06 08:00:00', 180.00, 'T0008'), -- Laura Hernández (Farma01)
(7, 2, '2025-06-07 13:10:00', 210.00, 'T0009'), -- Miguel Díaz (Cajero01)
(8, 4, '2025-06-08 17:00:00', 220.00, 'T0010'), -- Valentina Pérez (Cajero02)
(9, 5, '2025-06-09 09:40:00', 150.00, 'T0011'), -- Ricardo Sánchez (Farma02)
(1, 2, '2025-06-10 10:20:00', 45.99, 'T0012'); -- Cliente Anónimo (Cajero01)


-- Insertar DetalleVentas (más de 10 en total)
-- Detalle Venta 1 (id_venta 1)
INSERT INTO DetalleVentas (id_venta, id_producto, cantidad, precio_unitario_venta, subtotal) VALUES
(1, 1, 2, 25.50, 51.00); -- 2 Paracetamol

-- Detalle Venta 2 (id_venta 2)
INSERT INTO DetalleVentas (id_venta, id_producto, cantidad, precio_unitario_venta, subtotal) VALUES
(2, 2, 2, 85.00, 170.00); -- 2 Amoxicilina

-- Detalle Venta 3 (id_venta 3)
INSERT INTO DetalleVentas (id_venta, id_producto, cantidad, precio_unitario_venta, subtotal) VALUES
(3, 4, 1, 120.00, 120.00); -- 1 Crema Hidratante

-- Detalle Venta 4 (id_venta 4)
INSERT INTO DetalleVentas (id_venta, id_producto, cantidad, precio_unitario_venta, subtotal) VALUES
(4, 6, 2, 35.00, 70.00); -- 2 Ibuprofeno

-- Detalle Venta 5 (id_venta 5)
INSERT INTO DetalleVentas (id_venta, id_producto, cantidad, precio_unitario_venta, subtotal) VALUES
(5, 3, 2, 45.99, 91.98); -- 2 Vitamina C

-- Detalle Venta 6 (id_venta 6)
INSERT INTO DetalleVentas (id_venta, id_producto, cantidad, precio_unitario_venta, subtotal) VALUES
(6, 5, 1, 30.00, 30.00); -- 1 Venda elástica

-- Detalle Venta 7 (id_venta 7)
INSERT INTO DetalleVentas (id_venta, id_producto, cantidad, precio_unitario_venta, subtotal) VALUES
(7, 1, 3, 25.50, 76.50),  -- 3 Paracetamol
(7, 7, 2, 60.00, 120.00),  -- 2 Cetirizina
(7, 11, 4, 20.00, 80.00);  -- 4 Alcohol Etílico

-- Detalle Venta 8 (id_venta 8)
INSERT INTO DetalleVentas (id_venta, id_producto, cantidad, precio_unitario_venta, subtotal) VALUES
(8, 8, 2, 95.00, 190.00); -- 2 Omeprazol

-- Detalle Venta 9 (id_venta 9)
INSERT INTO DetalleVentas (id_venta, id_producto, cantidad, precio_unitario_venta, subtotal) VALUES
(9, 9, 1, 150.00, 150.00), -- 1 Salbutamol
(9, 5, 2, 30.00, 60.00);   -- 2 Vendas

-- Detalle Venta 10 (id_venta 10)
INSERT INTO DetalleVentas (id_venta, id_producto, cantidad, precio_unitario_venta, subtotal) VALUES
(10, 10, 2, 110.00, 220.00); -- 2 Losartán
-- Detalle Venta 11 (id_venta 11)
INSERT INTO DetalleVentas (id_venta, id_producto, cantidad, precio_unitario_venta, subtotal) VALUES
(11, 1, 4, 25.50, 102.00), -- 4 Paracetamol
(11, 6, 2, 35.00, 70.00);  -- 2 Ibuprofeno

-- Detalle Venta 12 (id_venta 12)
INSERT INTO DetalleVentas (id_venta, id_producto, cantidad, precio_unitario_venta, subtotal) VALUES
(12, 3, 1, 45.99, 45.99); -- 1 Vitamina C