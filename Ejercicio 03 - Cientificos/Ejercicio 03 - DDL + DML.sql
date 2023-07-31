/* DDL */

CREATE DATABASE cientificos;
USE cientificos;

CREATE TABLE cientificos(
	dni varchar(8),
    nom_apels nvarchar(255),
    PRIMARY KEY(dni)
);

CREATE TABLE proyectos(
	id char(4),
    nombre nvarchar(255),
    horas int,
    PRIMARY KEY(id)
);

CREATE TABLE asignaciones(
	cientifico varchar(8),
    proyecto char(4),
    PRIMARY KEY(cientifico, proyecto),
    FOREIGN KEY(cientifico) REFERENCES cientificos (dni)
    ON DELETE cascade
    ON UPDATE cascade,
    FOREIGN KEY(proyecto) REFERENCES proyectos (id)
    ON DELETE cascade
    ON UPDATE cascade
);

/* DML */

INSERT INTO cientificos (dni, nom_apels) values 
('1973229C', 'Cristin Gravie'),
('5854829H', 'Killie Fouldes'),
('2031992Z', 'Greggory Bangley'),
('6253716J', 'Lucie Bortolini'),
('5035004Q', 'Ingmar Fullard'),
('2176671J', 'Leann Hare'),
('3899130C', 'Nicole O''Deegan'),
('5289439C', 'Claudianus Imeson'),
('2999386M', 'Nicoline Whellams'),
('5944294G', 'Adah Waszczyk');

INSERT INTO proyectos (id, nombre, horas) VALUES
('P001', 'Proyecto Alpha', 120),
('P002', 'Proyecto Beta', 80),
('P003', 'Proyecto Gamma', 200),
('P004', 'Proyecto Delta', 300),
('P005', 'Proyecto Epsilon', 50),
('P006', 'Proyecto Zeta', 180),
('P007', 'Proyecto Eta', 90),
('P008', 'Proyecto Theta', 240),
('P009', 'Proyecto Iota', 70),
('P010', 'Proyecto Kappa', 160);

INSERT INTO asignaciones (cientifico, proyecto) VALUES
('1973229C', 'P001'),
('5854829H', 'P002'),
('2031992Z', 'P003'),
('6253716J', 'P004'),
('5035004Q', 'P005'),
('2176671J', 'P006'),
('3899130C', 'P007'),
('5289439C', 'P008'),
('2999386M', 'P009'),
('5944294G', 'P010');