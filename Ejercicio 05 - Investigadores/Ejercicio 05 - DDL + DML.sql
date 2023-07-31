/* DDL */

CREATE DATABASE investigadores;
USE investigadores;

CREATE TABLE facultades(
	codigo int auto_increment,
    nombre nvarchar(100),
    PRIMARY KEY(codigo)
);

CREATE TABLE investigadores(
	dni varchar(8),
    nom_apels nvarchar(255),
    facultad int,
    PRIMARY KEY(dni),
    FOREIGN KEY(facultad) REFERENCES facultades (codigo)
    ON DELETE cascade
    ON UPDATE cascade
);

CREATE TABLE equipos(
	num_serie char(4),
    nombre nvarchar(100),
    facultad int,
    PRIMARY KEY(num_serie),
    FOREIGN KEY(facultad) REFERENCES facultades (codigo)
    ON DELETE cascade
    ON UPDATE cascade
);

CREATE TABLE reservas(
	dni varchar(8),
    num_serie char(4),
    comienzo datetime,
    fin datetime,
    PRIMARY KEY(dni, num_serie),
    FOREIGN KEY(dni) REFERENCES investigadores (dni)
    ON DELETE cascade
    ON UPDATE cascade,
    FOREIGN KEY(num_serie) REFERENCES equipos (num_serie)
    ON DELETE cascade
    ON UPDATE cascade
);

/* DML */

INSERT INTO facultades (nombre) VALUES
('Facultad de Ciencias'),
('Facultad de Ingeniería'),
('Facultad de Medicina'),
('Facultad de Artes'),
('Facultad de Economía'),
('Facultad de Derecho'),
('Facultad de Letras'),
('Facultad de Psicología'),
('Facultad de Educación'),
('Facultad de Comunicación');

INSERT INTO investigadores (dni, nom_apels, facultad) VALUES
('0893780A', 'María González', 1),
('1894075E', 'Juan Rodríguez', 2),
('7350476L', 'Ana López', 1),
('2024487Q', 'Pedro Martínez', 3),
('2299134B', 'Laura Pérez', 2),
('8526825E', 'Carlos Gómez', 4),
('7074163Z', 'Sara Fernández', 5),
('3773638D', 'David Ramírez', 6),
('3319220A', 'Lucía Torres', 7),
('9036500M', 'Luis Castro', 8);

INSERT INTO equipos (num_serie, nombre, facultad) VALUES
('0001', 'Equipo A', 1),
('0002', 'Equipo B', 2),
('0003', 'Equipo C', 1),
('0004', 'Equipo D', 3),
('0005', 'Equipo E', 2),
('0006', 'Equipo F', 4),
('0007', 'Equipo G', 5),
('0008', 'Equipo H', 6),
('0009', 'Equipo I', 7),
('0010', 'Equipo J', 8);

INSERT INTO reservas (dni, num_serie, comienzo, fin) VALUES
('0893780A', '0001', '2023-10-31 10:00:00', '2023-10-31 12:00:00'),
('1894075E', '0002', '2023-07-22 14:00:00', '2023-07-22 16:00:00'),
('7350476L', '0003', '2023-01-02 09:00:00', '2023-01-02 11:00:00'),
('2024487Q', '0004', '2023-02-13 13:00:00', '2023-02-13 15:00:00'),
('2299134B', '0005', '2023-11-30 16:00:00', '2023-11-30 18:00:00'),
('8526825E', '0006', '2023-09-10 10:30:00', '2023-09-10 12:30:00'),
('7074163Z', '0007', '2023-01-05 11:30:00', '2023-01-05 13:30:00'),
('3773638D', '0008', '2023-03-09 15:30:00', '2023-03-09 17:30:00'),
('3319220A', '0009', '2023-10-17 12:00:00', '2023-10-17 14:00:00'),
('9036500M', '0010', '2023-12-24 14:30:00', '2023-12-24 16:30:00');