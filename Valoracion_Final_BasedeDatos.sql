create database bbdd_peluqueria_canina;
use bbdd_peluqueria_canina;

-- Punto 1 Crear Tablas "Perro,Historial,Dueno"

CREATE TABLE Dueno( 
  DNI INT NOT NULL,
  Nombre VARCHAR(100) NOT NULL,
  Apellido VARCHAR(100) NOT NULL,
  Telefono VARCHAR (15) NOT NULL,
  Direccion VARCHAR(50)NOT NULL,
  PRIMARY KEY (DNI)
);
CREATE TABLE Perro
(
   IDperro int NOT NULL auto_increment,
   NombreDePerro VARCHAR(100) NOT NULL,
   FechaDeNacimiento DATE NOT NULL,
   Sexo VARCHAR(100) NOT NULL,
   dni_dueno int,
   PRIMARY KEY (IDperro),
   FOREIGN KEY (dni_dueno) REFERENCES Dueno(DNI)
);
CREATE TABLE Historial
(
   IDhistorial int NOT NULL auto_increment,
   Fecha DATE NOT NULL,
   Perro INT NOT NULL ,
   Descripcion VARCHAR (250) NOT NULL ,
   Monto DECIMAL NOT NULL,
   PRIMARY KEY (IDhistorial),
   FOREIGN KEY (Perro) REFERENCES Perro(ID_perro)
);

-- Punto 2 "insertar datos"
insert into Dueno values( 43255713 , ' Juan '  , ' Lescano' , ' 351449211 ' , ' Raul Spoile 4563' );
insert into Dueno values ( 47768344 , ' Celina ' , ' Rodriguez' , ' 351467383 ' , ' Colon 9087 ' );
insert into Dueno values ( 48153696, ' Hector ' , ' Sanchez ' ,' 351645521 ' , ' Mitre 112 ' );
insert into Dueno values ( 41576490 , ' Micaela ' , ' Juarez ' , ' 351893002 ' , ' Alvear 7859 ' );
insert into Dueno values  ( 43069211, ' Monica '  , ' Siviero ', ' 351430987 ', ' Chaquira 1105 ');


insert into Perro values  ( 01 , ' Titan' , ' 2019-01-28 ' , ' M ' , 43255713);
insert into Perro values ( 02 , ' Frida'  , ' 2018-04-13 ' , ' F ' , 47768344);
insert into Perro values ( 03 , ' Kira'  , ' 2020-09-25 ' , ' F ' , 41576490);
insert into Perro values ( 04 , 'Black' , ' 2017-12-01 '  , 'M'  , '24568458' );
insert into Perro values ( 05 , 'Mula'  , ' 2021-01-19 '  , 'F'  , '27854694' );
 
Insert into Historial values( 01 , ' 2022-01-18 ' , 01, ' Corte flequillo' , 3200);
Insert into Historial values( 02 , ' 2021-02-12 ' , 05, ' Baño + Peinado' , 2000);
Insert into Historial values( 03 , ' 2021-04-30 ' , 03 , ' Pedicura  ' , 2500 );
Insert into Historial values (04, '2020-04-03', '02', 'Baño Completo ', '1200');
Insert into Historial values (05, '2022-08-01', '06', 'Corte patas', '2200');


-- Punto 3 Borre un animal que ya no va a ser atendido. Para ello consulte antes en el historial, algún animal que ya no sea atendido desde hace mucho tiempo.

delete Perro from Perro
inner join Historial on Historial.Perro = Perro.ID_Perro 
where Fecha < '2021-01-01';


-- Punto 6 Obtener todos los perros que asistieron a la peluquería en 2022.
 
select  p.Nombre, (select year(Fecha)) = '2022-01-01'
from Perro p , Historial h
where Perro.ID_Perro  = Historial.Perro;


