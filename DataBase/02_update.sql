/*La declaración UPDATE se utiliza para modificar los registros existentes de una tabla
Sintaxis:
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;*/

UPDATE customers SET Contacto = 'Alfred Schmidt', Ciudad = 'Frankfurt' 
WHERE idCustomers = 1;

UPDATE users SET init_date = '2011-02-2' WHERE id_users = 6;

- Actualizar multiples registros

UPDATE customers SET CodigoPostal = 00000
WHERE Pais = 'Mexico';
