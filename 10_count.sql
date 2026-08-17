/*Cuenta el numero de filas (* cuenta todas, tambien se puede usar una columna para contar filas no nulas en esa columna)*/ 

SELECT COUNT(age) FROM users; -- para contar cuantas edades hay en la tabla

SELECT COUNT(*) FROM users; -- para contar cuantos objetos hay en la tabla

SELECT COUNT(DISTINCT(poblacion)) FROM clientes

SELECT COUNT(seccion) FROM productos WHERE seccion = 'DEPORTES'

--Realizar una consulta sobre la tabla “Clientes”  que muestre los campos “Dirección”, “Teléfono” y “Población”. Este último debe 
--aparecer en la consulta con el nombre de “Residencia”. Los registros aparecerán ordenados descendentemente por el campo “Población”.

select  DIRECCION, TELEFONO, poblacion as RESIDENCIA  from clientes order by RESIDENCIA  

--Realizar una consulta que muestre que poblaciones hay en la tabla “Clientes”.

select COUNT(codigo_cliente ) as TOTAL_CLIENTES_POBLACION, poblacion   from CLIENTES group by poblacion 

--Realizar una consulta de agrupación que muestre la media del precio de los artículos de todas las secciones. Mostrar en la consulta los campos sección y suma por sección.
select seccion, AVG(precio) as MEDIA_PRECIO_ARTICULOS from productos group by seccion 
--select * from productos

--Realizar una consulta de agrupación que muestre la media del precio de todas las secciones menos de juguetería. 
--En la consulta deberán aparecer los campos “Sección” y “Media por sección”.

select SECCION, AVG(PRECIO) as MEDIA_PRECIOS from productos where SECCION <> 'JUGUETERÍA' group by SECCION 

--Realizar Una consulta que muestre cuantos artículos hay de la sección “Deportes”.

select SECCION, COUNT(SECCION) as TOTAL_ARTICULOS from productos p where SECCION = 'DEPORTES' group by SECCION