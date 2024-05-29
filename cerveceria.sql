Create Database Cerveceria;

use Cerveceria;


create table: Cerveza(
id int AUTO_INCREMENT identity PRIMARY KEY,
nombre VARCHAR (100),
ingredientes TEXT (100),
precio float (30),
presentacion VARCHAR (100)
FOREIGN KEY (id_categoria) references categoria(id),
)

create table: Materia_prima(
id int AUTO_INCREMENT identity PRIMARY KEY,
nombre VARCHAR (100),
Descripcion TEXT (100),
cantidad float (30),
presentacion VARCHAR (100)
)


create table: cerveza_Materia_prima(
id_cerveza int ,
id _materia_prima int,
PRIMARY KEY (id_cerveza, id_materia_prima),
FOREIGN KEY (id_cerveza) references cerveza(id),
FOREIGN KEY (id_materia_prima) references materia_prima(id),

)


Create table:  categoria(
id int AUAUTO_INCREMENTTO PRIMARY KEY,
nombre VARCHAR (100),
ingredientes TEXT (100),
precio decimal (30),
presentacion VARCHAR (100),


)

 Create table:  tipo(
id int AUTO_INCREMENTTO PRIMARY KEY,
nombre VARCHAR (100),
ingredientes TEXT (100),
precio decimal (30),
presentacion VARCHAR (100),

 )

create table: categoria_tipo(
id_cerveza int ,
id _materiaprima int,
PRIMARY KEY (id_categoria, id_tipo),
FOREIGN KEY (id_categoria) references categoria(id),
FOREIGN KEY (id_tipo) references tipo(id),

)