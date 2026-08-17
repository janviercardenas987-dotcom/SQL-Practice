/*Filtra los grupos resultantes de un GROUP BY  según una condición (similar a WHERE pero aplicado despues de agrupar
El HAVINGLa cláusula se utiliza para filtrar los resultados de un GROUP BYConsulta basada en funciones agregadas.

A diferencia de la WHEREcláusula, que filtra las filas individuales antes de agrupar, El HAVINGCláusula Filtra grupos después de 
que se ha realizado la agregación
*/
SELECt * FROM users HAVING age > 20;
SELECt COUNT(age) FROM users HAVING COUNT(age) > 3;

select seccion, round(avg(precio)::numeric,2) as media_precio from productos group by seccion having avg(precio) > 50;

--Contar el total de productos en una tabla
SELECT COUNT(*) AS TOTAL_FILAS FROM productos p 

-- Sumar el total de articulos que por seccion y promediar el precio de los ariculos por seccion
select SECCION, COUNT(p.codigo_articulO) as CANTIDAD_PRODUCTOS, AVG(p.precio ) as PROMEDIO_PRECIO 
from productos p group by SECCION 


-- Obtener cuantos productos hay por categoria, filtrando categorias con mas de 3 productos

select seccion, count(*) as cantidad_productos from productos p group by p.seccion having count(*) > 3 

