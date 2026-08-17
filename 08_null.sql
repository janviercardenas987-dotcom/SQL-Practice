SELECT * FROM users WHERE email is null; -- para buscar un campo que se igual a null o que este vacío.
SELECT * FROM hellow_mysq.users;SELECT * FROM users WHERE email is NOT null; -- para buscar el email que no sea null
SELECT name, surname, IFNULL(age, 0) AS age FROM users;  

SELECT Nombre, Contacto, CodigoPostal FROM customers WHERE Contacto IS NULL;
