/* DDL */

CREATE DATABASE directores;
USE directores;

CREATE TABLE despachos(
	numero int auto_increment,
    capacidad int,
    PRIMARY KEY(numero)
);

CREATE TABLE directores(
	dni varchar(8),
    nom_apels nvarchar(255),
    dni_jefe varchar(8) null,
    despacho int,
    PRIMARY KEY(dni),
    FOREIGN KEY(despacho) REFERENCES despachos (numero)
    ON DELETE cascade
    ON UPDATE cascade,
    FOREIGN KEY(dni_jefe) REFERENCES directores (dni)
    ON DELETE cascade
    ON UPDATE cascade
);

/* DML */

INSERT INTO despachos (capacidad) VALUES
(25),
(10),
(15),
(30),
(25),
(35),
(40),
(15),
(20),
(45);

INSERT INTO directores (dni, nom_apels, dni_jefe, despacho) VALUES
('8244954B', 'Grethel McChruiter', null, 3),
('8641241K', 'Eugenio Orfeur', '8244954B', 5),
('2153597I', 'Kristine Vannuccinii', '8641241K', 7),
('2682831O', 'Arnaldo Chrisp', '8641241K', 9),
('9873416K', 'Kalindi Tredger', null, 10),
('5285109N', 'Lotty Kerswill', '8244954B', 4),
('4983291J', 'Phil Lindgren', '2682831O', 8),
('3698995K', 'Karry Asbrey', '5285109N', 10),
('1504273N', 'Ariana Maffione', '5285109N', 1),
('8830069H', 'Issi Henke', null, 4);