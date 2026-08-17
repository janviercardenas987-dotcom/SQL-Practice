SELECT AVG(age) FROM users; -- para calcular la media de un atributo 
SELECT seccion,  AVG(precio) AS media_precios_seccion FROM productos GROUP BY seccion
SELECT seccion, AVG(precio) AS media_precio FROM productos WHERE seccion <> 'JUGUETERÍA' GROUP BY seccion