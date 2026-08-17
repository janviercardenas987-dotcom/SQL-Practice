/*La palabra clave ORDER BY se utiliza para ordenar el conjunto de resultados em orden ascendente o descendente*/

SELECT * FROM Customers ORDER BY Pais;
SELECT * FROM Customers ORDER BY Pais, Nombre;
SELECT name FROM users ORDER BY age -- para ordenar los datos de la tabla
SELECT name FROM users ORDER BY age ASC -- para ordenar de forma ascendente
SELECT name FROM users ORDER BY age DESC -- para odenar de forma descendente

SELECT * FROM users WHERE email = 'janviercardenas987@gmail.com' ORDER BY age DESC

SELECT empresa, direccion, poblacion FROM clientes ORDER BY poblacion ASC, direccion DESC

SELECT direccion, telefono, poblacion AS residencia FROM clientes ORDER BY poblacion

--. Realizar una consulta que muestre aquellos productos españoles cuya fecha esté
--comprendida entre febrero y mayo del 2002. Ordenar los resultados por el campo
--“Nombre artículo” descendentemente.

--select * from productos p 
--select * from PRODUCTOS where TO_DATE(FECHA 'MM/DD/YYYY') between '01/02/2002' and '31/05/2002'


