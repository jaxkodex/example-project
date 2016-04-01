insert into opcion (id_opcion, co_opcion, de_opcion, de_ruta, de_icon) values (1, 'Profesores', 'ADMPROF', '#', 'glyphicon glyphicon-cog');
insert into opcion (id_opcion, id_opcion_padre, co_opcion, de_opcion, de_ruta, de_icon) values (2, 1, 'REGPROF', 'Registro de profesor', '/members/profesores/registro.xhtml', 'glyphicon glyphicon-pencil');

alter SEQUENCE opcion_id_opcion_seq RESTART WITH 3;

insert into usuario (id_usuario, no_cuenta, co_contrasenia) values (1, 'demo', md5('demo'));
alter sequence usuario_id_usuario_seq restart with 2;

insert into rol (id_rol, no_rol) values (1, 'ADMIN');
alter sequence rol_id_rol_seq restart with 2;

insert into rol_opcion (id_rol, id_opcion) values (1, 2);