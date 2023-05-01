use juego;
GO

-- -- Usuarios admin

-- insert into usuario (idUsuario,nombre,apellido,fechaNacimiento,contraseña,correo,telefono,pais,[admin]) values
--     ('AldeDios','Aldehil','Sánchez','2003-07-05','7d4e3eec80026719639ed4dba68916eb94c7a49a053e05c8f9578fe4e5a3d7ea','sanheraldehil@outlook.com','+52558578513','México',1);
-- insert into usuario (idUsuario,nombre,apellido,fechaNacimiento,contraseña,correo,telefono,pais,[admin]) values
--     ('VMink','Eduardo','Lugo','2002-09-23','7d4e3eec80026719639ed4dba68916eb94c7a49a053e05c8f9578fe4e5a3d7ea','vmink@gmail.com','+525584759627','México',1);
-- GO

-- -- usuarios sin permisos de administrador

-- insert into usuario (idUsuario,nombre,apellido,fechaNacimiento,contraseña,correo,telefono,pais) values
--     ('Danna SN','Danna','Sánchez','2002-01-17','190d4f2affe76144c9eafdac2ad60d3a27d69eb96078f8db34fa7184dc4f487a','dannasn@outlook.com','+525526933533','México');
-- GO



--minijuegos
-- asteroides 3 - perseverancia
-- estacionarse 5 - autoaprendizaje
-- laberinto 3 - logica
-- frutas 5 - mate
-- cajas 5 - pensamiento innovador

insert into minijuego (idMinijuego,nombre,cantidadNiveles) values (1,'asteroides',3);
insert into minijuego (idMinijuego,nombre,cantidadNiveles) values (2,'estacionarse',5);
insert into minijuego (idMinijuego,nombre,cantidadNiveles) values (3,'laberinto',3);
insert into minijuego (idMinijuego,nombre,cantidadNiveles) values (4,'frutas',5);
insert into minijuego (idMinijuego,nombre,cantidadNiveles) values (5,'cajas',5);

GO

-- habilidades
-- autoaprendizaje
-- pensamiento matematico
-- logica
-- perseverancia
-- pensamiento innovador

insert into habilidad (idMinijuego,nombreHabilidad) values (1,'perseverancia');
insert into habilidad (idMinijuego,nombreHabilidad) values (2,'autoaprendizaje');
insert into habilidad (idMinijuego,nombreHabilidad) values (3,'logica');
insert into habilidad (idMinijuego,nombreHabilidad) values (4,'habilidad matemática');
insert into habilidad (idMinijuego,nombreHabilidad) values (5,'pensamiento innovador');

GO


