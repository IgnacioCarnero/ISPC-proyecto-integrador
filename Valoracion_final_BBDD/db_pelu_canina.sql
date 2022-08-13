use db_pelu_canina;

create table dueno
(
DNI int,
Nombre varchar (25) not null,
Apellido varchar (25) not null,
Telefono varchar (12) unique not null,
Direccion varchar (25),
primary key (DNI)
);

create table perro
(
ID_perro int,
Nombre_perro varchar (25) not null,
Fecha_nac_perro date,
Sexo varchar (10) not null,
DNI int not null,
primary key (ID_perro),
constraint dni_dueno foreign key (DNI) references dueno(DNI),
constraint tipo_sexo check (Sexo = 'Hembra' or Sexo = 'Macho')
);

create table historial
(
ID_historial int auto_increment not null,
Fecha_servicio date not null,
Perro int not null,
Descripcion varchar (100),
Monto decimal not null,
primary key (ID_historial),
constraint id_perro foreign key (Perro) references perro(ID_perro),
constraint valor_monto check (Monto > 0)
);