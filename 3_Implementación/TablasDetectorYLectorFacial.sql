create table rol( 
idrol int constraint Pk_rol primary key,
nombrerol varchar(40)
);

create table usuario(
idusuario int constraint Pk_usuario primary key,
documento varchar(12),
nombres varchar(40),
apellidos varchar(40),
correoinstitucional varchar(45),
direccion varchar(40),
telefono numeric(10),
fotousuario varchar(200),
rol_id int not null,
constraint fk_rol foreign key(rol_id) references rol
);

create table entrada(
identrada int constraint Pk_entrada primary key,
fecha date,
hora varchar(15),
usuario_id int not null,
constraint fk_usuario foreign key(usuario_id) references Usuario
);

create table estado_entrada(
idestentrada int constraint Pk_estado_entrada primary key,
estado bit,
usuario_id int not null,
constraint fk_usuario foreign key(usuario_id) references usuario,
entrada_id int not null,
constraint fk2_entrada foreign key(entrada_id) references entrada
);

create table fotografia(
idfoto int constraint Pk_fotografia primary key,
nombrefoto varchar(200),
usuario_id int not null,
constraint fk_usuario foreign key(usuario_id) references Usuario
);