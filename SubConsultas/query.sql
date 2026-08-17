--select nombre_articulo, seccion, precio from productos where precio  > (select avg(precio) from productos p)

--select * from productos p  where p.precio  > all (select precio from productos p2 where seccion = 'JUGUETERÍA')

--select * from productos p where precio > all (select precio from productos where seccion = 'CERÁMICA')

--select * from productos p S


/*Nivel 1: Subconsultas Escalares (Devuelven un único valor)
1. El estándar superior

Enunciado: Obtén el codigo_articulo, nombre_articulo, seccion y precio de todos los productos cuyo precio sea estrictamente 
menor que el precio promedio de todos los productos importados (donde importado = '[v]' o TRUE según el tipo de dato).*/

--select codigo_articulo, nombre_articulo, seccion, precio from productos where precio > (select avg(precio) from productos where importado = true)


/*Enunciado: Muestra todos los campos de los artículos que fueron registrados en una fecha posterior a la fecha de registro del artículo con código 'AR01'.*/

--select * from productos p where fecha > (select fecha from productos where codigo_articulo = 'AR07')


--Enunciado: Selecciona el nombre_articulo, seccion y precio de los productos que pertenecen a la sección 'FERRETERÍA' y cuyo precio sea 
--superior al precio promedio específico de la sección 'DEPORTES'.

select nombre_articulo, seccion, precio from productos where seccion = 'FERRETERÍA' and precio > (select avg(precio) from productos where seccion = 'DEPORTES')
--SELECT DISTINCT * FROM productos

select * from productos p where precio > (select  avg(p.precio)  from productos p) order by precio desc 
