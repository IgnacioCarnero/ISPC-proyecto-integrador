create database peluqueria_canina;
use peluqueria_canina;
create table Dueno(
DNI int not null,
Nombre varchar (45),
Apellido varchar (45),
Telefono int,
Direccion varchar (250),
Primary Key (DNI)
);

create table Perro(
ID_perro int not null,
Nombre varchar (45),
Fecha_nac date,
Sexo varchar (40),
DNI_dueno int,
Primary Key (ID_perro),
Foreign Key (DNI_dueno) references Dueno(DNI)
);

create table historial(
ID_historial int not null,
Fecha date,
Perro int,
Descripcion varchar (500),
Monto int,
Primary Key (ID_historial),
Foreign Key (Perro) references Perro(ID_perro)
);
