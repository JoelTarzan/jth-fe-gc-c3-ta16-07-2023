/* DDL */

CREATE DATABASE grandes_almacenes;
USE grandes_almacenes;

CREATE TABLE cajeros(
	codigo int auto_increment,
    nom_apels nvarchar(255),
    PRIMARY KEY(codigo)
);

CREATE TABLE productos(
	codigo int auto_increment,
    nombre nvarchar(100),
    precio int,
    PRIMARY KEY(codigo)
);

CREATE TABLE maquinas_registradoras(
	codigo int auto_increment,
    piso int,
    PRIMARY KEY(codigo)
);

CREATE TABLE ventas(
	cajero int,
    maquina int,
    producto int,
    PRIMARY KEY(cajero, maquina, producto),
    FOREIGN KEY(cajero) REFERENCES cajeros (codigo)
    ON DELETE cascade
    ON UPDATE cascade,
    FOREIGN KEY(maquina) REFERENCES maquinas_registradoras (codigo)
    ON DELETE cascade
    ON UPDATE cascade,
    FOREIGN KEY(producto) REFERENCES productos (codigo)
    ON DELETE cascade
    ON UPDATE cascade
);

/* DML */

INSERT INTO cajeros (nom_apels) VALUES
('Juan Pérez'),
('María Gómez'),
('Pedro Fernández'),
('Luisa Martínez'),
('Carlos Rodríguez'),
('Ana López'),
('David Torres'),
('Laura Ramírez'),
('Sara Castro'),
('Alejandro Navarro');

INSERT INTO productos (nombre, precio) VALUES
('Camiseta', 200),
('Pantalón', 350),
('Zapatos', 500),
('Chaqueta', 600),
('Blusa', 180),
('Pantalones cortos', 150),
('Bufanda', 100),
('Gorra', 80),
('Vestido', 450),
('Calcetines', 50);

INSERT INTO maquinas_registradoras (piso) VALUES
(1),
(2),
(1),
(3),
(2),
(4),
(3),
(5),
(1),
(2);

INSERT INTO ventas (cajero, maquina, producto) VALUES
(1, 3, 2),
(2, 1, 4),
(3, 2, 1),
(4, 5, 3),
(5, 4, 5),
(6, 3, 7),
(7, 1, 8),
(8, 2, 6),
(9, 4, 9),
(10, 5, 10);