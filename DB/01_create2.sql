/*The CREATE TABLE statements is used to create a new table in a databaese.
CREATE TABLE table_name (
    column1 datatype,
    column2 datatype,
    column3 datatype,
   ....
);*/

CREATE TABLE persons2(
	id int,
	name varchar(100),
	age int,
	email varchar(50),
	created date
	);
	
    CREATE TABLE persons2(
	id int NOT NULL,   /*By default, a column can hold NULL values.The NOT NULL constraint enforces a column to NOT accept NULL values.*/
	name varchar(100),
	age int,
	email varchar(50),
	created date
	);

    CREATE TABLE persons3(
	id int NOT NULL,
	name varchar(100) NOT NULL,
	age int,
	email varchar(50),
	created datetime DEFAULT CURRENT_TIMESTAMP(), /*The DEFAULT constraint is used to set a default value for a column.*/
	UNIQUE (id),	/*The UNIQUE constraint ensures that all values in a column are different.*/
	PRIMARY KEY(id),	/*The PRIMARY KEY constraint uniquely identifies each record in a table.*/
	CHECK(age >= 18) /*The CHECK constraint is used to limit the value range that can be placed in a column.*/


	);

/*realizar una consulta de accion de cracion de tabla a partir de la tabla clientes, utilzando
 * todos los campos de la tabla, pero unicamente los registros que sean de población madrid.
 * el nuevo objeto los nombramos con el texto "CLIENTES_DE_MADRID". Luego ejecutamos la consulta
 */

create table CLIENTES_MADRID as select * from clientes  where poblacion = 'MADRID'; 

/*realizar una consulta de accion de cracion de tabla a partir de la tabla PRODUCTOS,
 * utilizando todos los campos de la tabla, pero solo los registros que sean de la seccion
 * DEPORTES. El nuevo objeto - tabla los nombramos con el texto "ARTICULOS_DE_DEPORTE"
 */

create table articulos_de_deporte as select * from productos where seccion = 'DEPORTES';

/*realizar una consulta de accion de cracion de tabla a partir de la tabla PEDIDOS,
 * utilizando todos los campos de la tabla, pero sólo los registros que tengan registrada
 * la forma de pago TARJETA. El nuevo objeto - tabla
 * lo nombramos con el texto "PEDIDO_PAGADOS_CON_TARJETA".
 */

create table pedidos_pagados_con_tarjeta as select * from pedidos where forma_pago = 'TARJETA'

select * from pedidos_pagados_con_tarjeta


create table customer(
	customer_code int generated always as identity,
	dni varchar(20) not null,
	name varchar(60) not null,
	surname varchar(60) not null,
	phone varchar(20),
	address varchar(60),
	endorser_code int,
	constraint pk_customer primary key (customer_code),
	constraint uk_customer_dni unique(dni),
	constraint fk_endorser_code foreign key(endorser_code)
	references customer(customer_code)
);

create table agency(
	agency_code int generated always as identity,
	name varchar(60) not null,
	constraint pk_agency_code primary key(agency_code)
);

create table garage(
	garage_code int generated always as identity,
	name varchar(60) not null,
	constraint pk_garage_code primary key(garage_code)
);

create table car(
	plate_number varchar(20),
	brand varchar(20) not null,
	model varchar(20) not null,
	color varchar(20),
	garage_code int not null,
	constraint pk_plate_number primary key(plate_number),
	constraint fk_garage_code foreign key(garage_code)
	references garage(garage_code)
);

create table reservation(
	reserv_code int generated always as identity,
	init_date date default current_timestamp,
	end_date date,
	customer_code int,
	agency_code int,
	
	constraint pk_reserv_code primary key(reserv_code),
	constraint fk_customer_code foreign key(customer_code)
	references customer(customer_code),
	constraint fk_agency_code foreign key(agency_code)
	references agency(agency_code)
); 

create table reservation_detail(
	reserv_code int not null,
	plate_number varchar(20) not null,
	liter int not null,
	price decimal(10, 2) not null,
	is_delivered boolean default false,
	
	constraint pj_reservation_detail primary key(reserv_code, plate_number),
	constraint fk_reserv_code foreign key(reserv_code)
	references reservation(reserv_code),
	constraint fk_plate_number foreign key(plate_number)
	references car(plate_number)
);
