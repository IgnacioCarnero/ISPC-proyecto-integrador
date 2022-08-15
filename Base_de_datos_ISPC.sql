create database peluqeria_canina;
-- el siguiente comando es para saber que base de datos debemos utilizar;
use peluqeria_canina;
CREATE TABLE Dueno (
	DNI int not null,
    Nombre varchar (255),
    Apellido varchar (225),
    Telefono int,
    Direccion varchar(255),
    PRIMARY KEY (DNI)
);

CREATE TABLE Perro (
	ID_Perro int auto_increment not null,
    Nombre varchar(255),
    Fecha_nac date,
    Sexo varchar(255),
    DNI_dueno int,
    PRIMARY KEY(ID_Perro),
    FOREIGN KEY(DNI_dueno) REFERENCES Dueno(DNI) 
);

CREATE TABLE Historial (
	ID_Historial int auto_increment not null,
    Fecha date,
    Perro int,
    Descripcion varchar(255),
    Monto float,
    PRIMARY KEY(ID_Historial),
    FOREIGN KEY(Perro) REFERENCES Perro(ID_Perro)
);

ALTER TABLE Dueno MODIFY COLUMN Telefono varchar(255);

INSERT INTO Dueno (DNI, Nombre, Apellido, Telefono, Direccion) VALUES (39733113 , 'Ignacio', 'Carnero', 3571563206, 'Rio Tercero');
INSERT INTO Dueno (DNI, Nombre, Apellido, Telefono, Direccion) VALUES (39733000 , 'Carlos', 'Zapata', 3571320987, 'Rio Tercero');
INSERT INTO Dueno (DNI, Nombre, Apellido, Telefono, Direccion) VALUES (10399100 , 'Alicia', 'Bissio', 3571563389, 'Rio Tercero');
INSERT INTO Dueno (DNI, Nombre, Apellido, Telefono, Direccion) VALUES (10944123 , 'Eduardo', 'Carnero', 3571563136, 'Rio Tercero');

INSERT INTO Perro (Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES ('Cande', '2010-04-04', 'Hembra', 39733113);
INSERT INTO Perro (Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES ('Pepito', '2012-10-24', 'Hembra', 10399100);
INSERT INTO Perro (Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES ('Poncho', '2020-05-10', 'Macho', 39733000);
INSERT INTO Perro (Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES ('Cande', '2015-12-14', 'Hembra', 10944123);

INSERT INTO Historial (Fecha, Perro, Descripcion, Monto) VALUES ('2022/06/01', 2, 'Vacuna antirabica', 1040.20);
INSERT INTO Historial (Fecha, Perro, Descripcion, Monto) VALUES ('2022/06/01', 2, 'Vacuna antirabica', 1040.20);
 
-- Ejercicio 4

UPDATE Perro SET Fecha_nac = '2013-10-24' where ID_Perro = 2;

SELECT * FROM Perro

