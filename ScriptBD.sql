
create database botasDB;

use botasDB;

create table credenciales (
	id int primary key auto_increment,
    contrasenia varchar(50) not null,
    correo varchar(100) not null
);

create table usuarios (
	id int primary key auto_increment,
    nombres varchar(50) not null,
    apellido_paterno varchar(50) not null,
    apellido_materno varchar(50) not null,
    fecha_nacimiento date not null,
    telefono varchar(20) not null,
    sexo enum('HOMBRE', 'MUJER', 'OTRO'),
    tipo_usuario enum('ENCARGADO', 'CLIENTE'),
    id_credencial int not null,
    foreign key(id_credencial) references credenciales(id)
);

create table direcciones(
	id int primary key auto_increment,
	calle varchar(100) not null,
    numero varchar(10) not null,
    colonia varchar(100) not null,
    ciudad varchar(100) not null,
    estado varchar(100) not null,
    codigo_postal int not null,
    id_usuario int not null,
    foreign key(id_usuario) references usuarios(id)
);

create table destinatarios (
	id int primary key auto_increment,
    nombres varchar(50) not null,
    apellido_paterno varchar(50) not null,
    apellido_materno varchar(50) not null,
    telefono varchar(20) not null,
    id_direccion int not null, 
    foreign key(id_direccion) references direcciones(id)
);





#Inventario
create table categorias(
	id int primary key auto_increment,
    categoria varchar(150) not null unique,
    id_categoria_padre int not null,
    foreign key(id_categoria_padre) references categorias(id)
);

create table estilos(
	id int primary key auto_increment,
    estilo varchar(60) not null unique
);

create table colores(
	id int primary key auto_increment,
    color varchar(60) not null unique
);

create table materiales(
	id int primary key auto_increment,
    material varchar(60) not null unique
);

create table productos (
	id int primary key auto_increment,
    nombre varchar(200) not null unique,
    descripcion longtext not null,
    marca varchar(50) not null,
    id_categoria int not null,
    id_estilo int not null,
    id_color int  not null,
    id_material int not null,
    foreign key(id_categoria) references categorias(id),
    foreign key(id_estilo) references estilos(id),
    foreign key(id_color) references colores(id),
    foreign key(id_material) references materiales(id)
);

create table imagenes(
	id int primary key auto_increment,
    imagen MEDIUMBLOB,
    id_producto int not null,
    foreign key(id_producto) references productos(id)
);

create table tallas(
	id int primary key auto_increment,
    talla_usa varchar(100) not null,
    talla_mex varchar(100) not null
);

create table articulos(
	id int primary key auto_increment,
    codigo_articulo varchar(150) not null unique,
	precio float not null,
    cantidad int not null,
	id_producto int not null,
    id_tallas int not null,
    foreign key(id_producto) references productos(id),
    foreign key(id_tallas) references tallas(id)
);


create table carritos(
	id int primary key auto_increment,
    fecha_hora_creacion datetime not null,
    id_usuario int not null,
	foreign key(id_usuario) references usuarios(id)
);

create table carrito_articulo(
	id int primary key auto_increment,
    cantidad int not null,
    precio_unidad float not null,
    id_carrito int not null,
    id_articulo int not null,
	foreign key(id_carrito) references carritos(id),
    foreign key(id_articulo) references articulos(id)
);

create table pagos(
	id int primary key auto_increment,
    tipo_pago enum('TARJETA', 'TRANSFERENCIA', 'EFECTIVO'),
    estatus enum('PAGADO', 'NO PAGADO'),
    fecha_hora_pago datetime, 
    comprobante MEDIUMBLOB
);

create table tarifa_envios(
	id int primary key auto_increment,
    desripcion varchar(150) not null,
    costo float not null
);

create table pedidos(
	id int primary key auto_increment,
    estatus enum('CANCELADO', 'REMBOLSADO', 'COMPLETADO', 'ENTREGADO', 'ENVIADO', 'PENDIENTE'),
    fecha_hora_pedido datetime not null,
    fecha_hora_envio datetime,
    fecha_entrega date,
    id_usuario int not null,
    id_destinatario int not null,
    id_pago int not null,
    id_tarifa_envio int not null,
    foreign key(id_usuario) references usuarios(id),
    foreign key(id_destinatario) references destinatarios(id),
    foreign key(id_pago) references pagos(id),
    foreign key(id_tarifa_envio) references tarifa_envios(id)
);

create table pedido_articulo(
	id int primary key auto_increment,
    cantidad int not null,
    precio_unidad float not null,
    id_pedido int not null,
    id_articulo int not null,
	foreign key(id_pedido) references pedidos(id),
    foreign key(id_articulo) references articulos(id)
);
