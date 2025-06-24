CREATE DATABASE IF NOT EXISTS farmacontrol_db;

USE farmacontrol_db;

CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario VARCHAR(100) NOT NULL,
    contrasenia VARCHAR(100) NOT NULL UNIQUE,
    nombre_completo VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    rol VARCHAR(50) NOT NULL
);

CREATE TABLE productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(255) NOT NULL,
    categoria VARCHAR(100) NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    stock INT NOT NULL DEFAULT 0
);

CREATE TABLE ventas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT NOT NULL,
    usuario_id INT NOT NULL,
    fecha_venta DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    total DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES usuarios(id),
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);

CREATE TABLE detalle_ventas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    venta_id INT NOT NULL,
    producto_id INT NOT NULL,
    cantidad INT NOT NULL,
    subtotal DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (venta_id) REFERENCES ventas(id),
    FOREIGN KEY (producto_id) REFERENCES productos(id)
);

CREATE TABLE proveedores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_empresa VARCHAR(100) NOT NULL,
    email_contacto VARCHAR(100) NOT NULL,
    telefono BIGINT NOT NULL,
    direccion VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE compras (
    id INT AUTO_INCREMENT PRIMARY KEY,
    proveedor_id INT NOT NULL,
    usuario_id INT NOT NULL,
    fecha_compra DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    total DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (proveedor_id) REFERENCES proveedores(id),
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);

CREATE TABLE detalle_compras (
    id INT AUTO_INCREMENT PRIMARY KEY,
    compra_id INT NOT NULL,
    producto_id INT NOT NULL,
    cantidad INT NOT NULL,
    subtotal DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (producto_id) REFERENCES productos(id),
    FOREIGN KEY (compra_id) REFERENCES compras(id)
);