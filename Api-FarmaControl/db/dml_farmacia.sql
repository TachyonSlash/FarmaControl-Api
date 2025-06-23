-- DML para la base de datos FarmaControl - Datos de Ejemplo

-- Insertar Usuarios
INSERT INTO usuarios (usuario, contrasenia, nombre_completo, email, rol) VALUES
('admin', 'admin123', 'Juan Pérez', 'juan.perez@farmacontrol.com', 'Administrador'),
('cajero01', 'cajero123', 'María Gómez', 'maria.gomez@farmacontrol.com', 'Cajero'),
('farma01', 'farma123', 'Carlos Ruiz', 'carlos.ruiz@farmacontrol.com', 'Farmacéutico'),
('cajero02', 'cajeroabc', 'Sofía López', 'sofia.lopez@farmacontrol.com', 'Cajero'),
('farma02', 'farmaxyz', 'Roberto Hernández', 'roberto.h@farmacontrol.com', 'Farmacéutico'),
('admin2', 'admin456', 'Laura García', 'laura.g@farmacontrol.com', 'Administrador'),
('cajero03', 'cajeropqr', 'Diego Ramírez', 'diego.r@farmacontrol.com', 'Cajero'),
('farma03', 'farmadef', 'Ana Torres', 'ana.t@farmacontrol.com', 'Farmacéutico'),
('cajero04', 'cajeromn', 'Luis Vargas', 'luis.v@farmacontrol.com', 'Cajero'),
('farma04', 'farmajkl', 'Elena Soto', 'elena.s@farmacontrol.com', 'Farmacéutico');

-- Insertar Productos (usando categorías como texto)
INSERT INTO productos (id, nombre, descripcion, categoria, precio, stock) VALUES
(1, 'Paracetamol 500mg', 'Analgésico y antipirético', 'Analgésicos', 25.50, 200),
(2, 'Amoxicilina 500mg', 'Antibiótico de amplio espectro', 'Antibióticos', 85.00, 150),
(3, 'Vitamina C 1000mg', 'Suplemento vitamínico', 'Vitaminas', 45.99, 100),
(4, 'Crema Hidratante Facial', 'Para piel seca', 'Dermocosméticos', 120.00, 50),
(5, 'Vendas elásticas', 'Para esguinces y torceduras', 'Material de Curación', 30.00, 75),
(6, 'Ibuprofeno 400mg', 'Antiinflamatorio no esteroideo (AINE)', 'Antiinflamatorios', 35.00, 180),
(7, 'Cetirizina 10mg', 'Antihistamínico para alergias', 'Antialérgicos', 60.00, 120),
(8, 'Omeprazol 20mg', 'Reductor de ácido estomacal', 'Digestivos', 95.00, 90),
(9, 'Salbutamol Inhalador', 'Broncodilatador para asma', 'Respiratorios', 150.00, 60),
(10, 'Losartán 50mg', 'Antihipertensivo', 'Cardiovasculares', 110.00, 80),
(11, 'Alcohol Etílico 96%', 'Antiséptico de uso externo', 'Material de Curación', 20.00, 300),
(12, 'Tiras Reactivas Glucosa', 'Para monitoreo de glucosa en sangre', 'Material de Curación', 200.00, 40);

-- Insertar Proveedores
INSERT INTO proveedores (nombre_empresa, email_contacto, telefono, direccion) VALUES
('Farmaceutica del Sol', 'contacto@fsol.com', 5512345678, 'Av. Siempre Viva 123, CDMX'),
('Distribuidora Salus', 'info@salus.com', 5587654321, 'Calle Falsa 123, Guadalajara'),
('Medicamentos Express', 'ventas@medex.com', 4771122334, 'Blvd. Farma 500, León'),
('Global Pharma', 'sales@gpharma.com', 8123456789, 'Calle Industria 789, Monterrey'),
('BioLab Supplies', 'support@biolab.com', 3398765432, 'Av. Central 456, Querétaro'),
('Salud Total SA', 'contacto@saludtotal.com', 2221234567, 'Paseo de la Reforma 10, Puebla'),
('ProFarma Mx', 'ventas@profarma.com', 9987654321, 'Blvd. Cancun 1, Cancun'),
('Universal Health', 'info@unih.com', 6641234567, 'Av. Revolucion 50, Tijuana'),
('MediCorp Solutions', 'contact@medsol.com', 6149876543, 'Calle Chih. 200, Chihuahua'),
('Vitality Distributors', 'hello@vitality.com', 9611234567, 'Km 5 Carretera Tuxtla, Tuxtla G.');

-- Insertar Compras (usa los IDs de proveedores y usuarios que insertaste antes)
INSERT INTO compras (proveedor_id, usuario_id, fecha_compra, total) VALUES
(1, 1, '2025-05-20 10:00:00', 1275.00),
(2, 1, '2025-05-25 15:30:00', 1650.00),
(3, 1, '2025-05-28 09:00:00', 700.00),
(4, 6, '2025-06-01 11:00:00', 900.00),
(5, 6, '2025-06-03 14:00:00', 1500.00),
(1, 1, '2025-06-05 16:00:00', 500.00),
(2, 6, '2025-06-07 10:30:00', 800.00),
(3, 1, '2025-06-09 11:45:00', 450.00),
(4, 6, '2025-06-11 13:00:00', 1100.00),
(5, 1, '2025-06-12 09:30:00', 2500.00);

-- Insertar Detalle Compras (usa los IDs de compras y productos que insertaste antes)
INSERT INTO detalle_compras (compra_id, producto_id, cantidad, subtotal) VALUES
(1, 1, 50, 1000.00),
(1, 6, 10, 275.00),
(2, 2, 15, 1200.00),
(2, 8, 5, 450.00),
(3, 3, 10, 400.00),
(3, 5, 10, 300.00),
(4, 7, 10, 600.00),
(4, 9, 2, 300.00),
(5, 10, 10, 1000.00),
(5, 4, 5, 500.00),
(6, 1, 25, 500.00),
(7, 2, 10, 800.00),
(8, 3, 10, 450.00),
(9, 6, 20, 600.00),
(9, 8, 5, 500.00),
(10, 1, 30, 600.00),
(10, 4, 5, 500.00),
(10, 5, 15, 450.00),
(10, 11, 20, 300.00),
(10, 12, 3, 540.00);

-- Insertar Ventas (usa los IDs de usuarios como usuario_id y pon cliente_id en NULL o 1 si no tienes tabla clientes)
INSERT INTO ventas (cliente_id, usuario_id, fecha_venta, total) VALUES
(1, 2, '2025-06-01 11:00:00', 51.00),
(1, 2, '2025-06-01 11:30:00', 170.00),
(1, 3, '2025-06-02 09:15:00', 120.00),
(1, 4, '2025-06-02 14:00:00', 70.00),
(1, 5, '2025-06-03 10:45:00', 91.98),
(1, 2, '2025-06-04 12:00:00', 30.00),
(1, 4, '2025-06-05 16:30:00', 275.00),
(1, 3, '2025-06-06 08:00:00', 180.00),
(1, 2, '2025-06-07 13:10:00', 210.00),
(1, 4, '2025-06-08 17:00:00', 220.00),
(1, 5, '2025-06-09 09:40:00', 150.00),
(1, 2, '2025-06-10 10:20:00', 45.99);

-- Insertar Detalle Ventas (usa los IDs de ventas y productos que insertaste antes)
INSERT INTO detalle_ventas (venta_id, producto_id, cantidad, subtotal) VALUES
(1, 1, 2, 51.00),
(2, 2, 2, 170.00),
(3, 4, 1, 120.00),
(4, 6, 2, 70.00),
(5, 3, 2, 91.98),
(6, 5, 1, 30.00),
(7, 1, 3, 76.50),
(7, 7, 2, 120.00),
(7, 11, 4, 80.00),
(8, 8, 2, 190.00),
(9, 9, 1, 150.00),
(9, 5, 2, 60.00),
(10, 10, 2, 220.00),
(11, 1, 4, 102.00),
(11, 6, 2, 70.00),
(12, 3, 1, 45.99);