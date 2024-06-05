Create Database Escuela;

use Escuela;


create table: Curso(
id int AUTO_INCREMENT identity PRIMARY KEY,
nombre VARCHAR (100),
descripcion TEXT (100),  

)

Create table:  Estudiante(
id int AUAUTO_INCREMENTTO identity PRIMARY KEY,
nombre VARCHAR (100),
correo VARCHAR (100),
FOREIGN KEY (id_curso) references curso(id),

)

Create table:  Perfil(
id int AUTO_INCREMENT PRIMARY KEY,
Bibligrafia VARCHAR (100),
correo VARCHAR (100),
FOREIGN KEY (id_estudiante) references estudiante(id),

)


Create table:  Profesor(
id int AUTO_INCREMENT  identity PRIMARY KEY;
nombre VARCHAR (100),
departamento VARCHAR (100),  

)

Create table:  Curso_Asignado(
id_curso int ,
id _asignado int,
PRIMARY KEY (id_curso, id_profesor),
FOREIGN KEY (id_curso) references curso(id),
FOREIGN KEY (id_profesor) references profesor(id),

)
