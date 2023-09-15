use aereopuerto;
create database aereopuerto;

create table vuelos(
codigo_vuelo varchar(50) primary key not null,
origen varchar(255),
destino varchar(255),
fecha_partida datetime,
fecha_llegada datetime,
precio decimal(10,2),
asientos_disponibles int,
fk_id_tipo_vuelo int,
fk_id_aereolinea int,
foreign key (fk_id_tipo_vuelo) references tipovuelos(id_tipo_vuelo),
foreign key (fk_id_aereolinea) references aereolineas(id_aereolinea)
);

create table tipovuelos(
id_tipo_vuelo int primary key not null,
nombre_tipo_vuelo varchar(150)
);

create table aereolineas(
id_aereolinea int primary key not null,
nombre_aereolinea varchar(200)
);

create table pasajeros(
id_pasajero int primary key not null,
nombre_pasajero varchar(255),
apellido_pasajero varchar(255),
telefono int,
correo varchar(255),
pais varchar(255),
ciudad varchar(255)
);

create table reservacion(
codigo_reservacion int primary key not null,
fk_vuelo varchar(50),
fecha_reservacion datetime,
numero_asiento int,
fk_pasajero int,
foreign key (fk_vuelo) references vuelos(codigo_vuelo),
foreign key (fk_pasajero) references pasajeros(id_pasajero)
);
