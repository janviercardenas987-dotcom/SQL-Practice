SELECT * FROM users WHERE age = 19; -- para buscar atributos exactos en la tabla para saber "donde estan".

SELECT name FROM users WHERE age = 19;

SELECT DISTINCT name FROM users WHERE age = 30;

SELECT * FROM Customers WHERE idCustomers = 1;

SELECT seccion, precio FROM productos WHERE seccion = 'DEPORTES' AND precio BETWEEN 100 AND 200

SELECT * FROM productos WHERE seccion = 'DEPORTES' AND precio >= 100 AND precio <= 200

SELECT * FROM productos WHERE pais_origen <> 'ESPAÑA';

SELECT * FROM productos WHERE pais_origen = 'ESPAÑA' AND seccion = 'DEPORTES' OR  precio > 350