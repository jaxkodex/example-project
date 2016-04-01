CREATE TABLE usuario
(
  id_usuario serial NOT NULL,
  id_persona integer,
  no_cuenta character varying(30),
  co_contrasenia character varying(32),
  fe_crea_registro timestamp with time zone,
  id_crea_registro integer,
  fe_mod_registro timestamp with time zone,
  id_mod_registro integer,
  CONSTRAINT usuario_pk PRIMARY KEY (id_usuario)
);

CREATE TABLE rol
(
  id_rol serial NOT NULL,
  no_rol character varying(50),
  fe_crea_registro timestamp with time zone,
  id_crea_registro integer,
  fe_mod_registro timestamp with time zone,
  id_mod_registro integer,
  CONSTRAINT rol_pk PRIMARY KEY (id_rol)
);

CREATE TABLE usuario_rol
(
  id_usuario integer,
  id_rol integer,
  fe_crea_registro timestamp with time zone,
  id_crea_registro integer,
  fe_mod_registro timestamp with time zone,
  id_mod_registro integer,
  CONSTRAINT usuario_rol_id_rol_fk FOREIGN KEY (id_rol)
      REFERENCES rol (id_rol) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT usuario_rol_id_usuario_fk FOREIGN KEY (id_usuario)
      REFERENCES usuario (id_usuario) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
);

create table opcion (
	id_opcion serial,
	id_opcion_padre int,
	co_opcion varchar(10),
	de_opcion varchar (50),
	de_ruta varchar (50),
	de_icon varchar (50),
	constraint opcion_id_opcion_pk primary key (id_opcion),
	constraint opcion_opcion_padre_fk foreign key (id_opcion_padre) references opcion (id_opcion)
);

create table rol_opcion (
  id_opcion int,
  id_rol int,
  constraint opcion_rol_pl primary key (id_opcion, id_rol),
  constraint opcion_id_opcion_fk foreign key (id_opcion) references opcion (id_opcion),
  constraint rol_id_rol_fk foreign key (id_rol) references rol (id_rol)
);