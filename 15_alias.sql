SELECT name, init_date AS 'fecha de inicio en programacion' FROM users WHERE age  BETWEEN 20 AND 30;
SELECT CONCAT ('Nombre: ', name, ', Apellidos: ', surname) FROM users; 

SELECT nombre_producto, seccion, precio, ROUND(precio * 0.7) AS descuento_7, NOW() AS dia_de_hoy FROM productos