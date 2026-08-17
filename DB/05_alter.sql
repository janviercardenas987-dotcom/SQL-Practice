/*The ALTER TABLE statement is used to add, delete, or modify columns 
in an existing table.*/
ALTER TABLE persons3
ADD surname varchar(150);

ALTER TABLE persons3
RENAME COLUMN surname TO descripcion;

ALTER TABLE persons3
MODIFY COLUMN descripcion varchar(250);

ALTER TABLE persons3
DROP COLUMN descripcion;
