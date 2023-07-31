/* DDL */

CREATE DATABASE piezas;
USE piezas;

CREATE TABLE piezas(
	codigo int auto_increment,
    nombre nvarchar(100),
    PRIMARY KEY(codigo)
);

CREATE TABLE proveedores(
	id char(4),
    nombre nvarchar(100),
    PRIMARY KEY(id)
);

CREATE TABLE piezas_proveedores(
	codigo_pieza int,
    id_proveedor char(4),
    precio int,
    PRIMARY KEY(codigo_pieza, id_proveedor),
    FOREIGN KEY(codigo_pieza) REFERENCES piezas (codigo)
    ON DELETE cascade
    ON UPDATE cascade,
    FOREIGN KEY(id_proveedor) REFERENCES proveedores (id)
    ON DELETE cascade
    ON UPDATE cascade
);

/* DML */

INSERT INTO piezas (nombre) VALUES
('Tornillo multiusos'),
('Componente electrónico'),
('Engranaje de precisión'),
('Placa de circuito impreso'),
('Módulo de comunicación inalámbrica'),
('Resorte de alta resistencia'),
('Lente óptic'),
('Dispositivo de almacenamiento'),
('Sensor de proximidad'),
('Caja resistente al agua');

INSERT INTO proveedores (id, nombre) VALUES
('CBTE', 'CyberTech Electronics'),
('SFHS', 'SuperFast Hardware Solutions'),
('PMI', 'PrecisionMech Industries'),
('EPT', 'ElectraPrint Technologies'),
('CNXS', 'ConnectX Solutions'),
('SPT', 'SpringTech Inc.'),
('LO', 'Lente óptic'),
('OPLE', 'OptiLens Corp.'),
('DST', 'DataSafe Technologies'),
('SLTE', 'SealTech Enclosures');

INSERT INTO piezas_proveedores (codigo_pieza, id_proveedor, precio) VALUES
(1, 'CBTE', 4),
(2, 'SFHS', 128),
(3, 'PMI', 32),
(4, 'EPT', 412),
(5, 'CNXS', 22),
(6, 'SPT', 43),
(7, 'LO', 121),
(8, 'OPLE', 29),
(9, 'DST', 8),
(10, 'SLTE', 45);