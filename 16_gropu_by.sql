/*Se usa para agrupar filas que tienen el mismo valor de una o varias columnas
y así aplicar funciones de agregación sobre cada grupo.*/

SELECT MAX(age) FROM GROUP BY users;
SELECT COUNT(age), age FROM users GROUP BY age;
SELECT MAX(age), age FROM users GROUP BY age ORDER BY age ASC; 
SELECT COUNT(age), age FROM users WHERE age > 15 GROPU BY age ASC;


--Cantidad de productos por sección: Muestra el nombre de la seccion y el total de artículos que pertenecen a cada una.

select p.seccion, count(codigo_articulo) as total_articulos_seccion from productos p group by seccion

--Promedio de precio por país: Obtén el pais_origen y el precio promedio de sus productos

select p.pais_origen, avg(p.precio) as promedio_precios from productos p group by p.pais_origen  

--Precio máximo y mínimo por sección: Muestra la seccion, el precio más alto (MAX) y el precio más bajo (MIN) de cada sección.

select p.seccion, max(precio) as precio_mas_alto, min(precio) as precio_mas_bajo from productos p group by seccion

--Clientes por población: Muestra cada poblacion y la cantidad total de clientes que viven en ella.

select c.poblacion, count(c.codigo_cliente ) as total_poblacion from clientes c group by c.poblacion 

--Clientes asignados por responsable: Muestra el nombre del responsable y cuántos clientes tiene a su cargo.

select c.responsable, count(c.codigo_cliente) as total_clientas_a_cargo from clientes c group by c.responsable 

--Secciones con muchos productos: Muestra las secciones que tengan más de 4 productos registrados en total.

select p.seccion, count(p.codigo_articulo) as total_articulos from productos p 
group by p.seccion 
having count(codigo_articulo) > 4

--Países costosos: Obtén los países de origen cuyo precio promedio de productos sea mayor a 100.

select p.pais_origen, avg(precio) as precio_promedio from productos p
group by p.pais_origen 
having avg(precio) > 100

Secciones con precios promedio bajos: Muestra las secciones cuyo precio promedio sea menor o igual a 150.

select p.seccion, avg(precio) as precio_promedio from productos p group by p.seccion having avg(precio) >= 150

--Poblaciones con concentración de clientes: Muestra únicamente las poblaciones que tengan más de 3 clientes registrados.

select c.poblacion, count(c.codigo_cliente) as total_poblacion from clientes c 
group by c.poblacion
having count(c.codigo_cliente) > 3

--Responsables con alta carga de clientes: Muestra los responsables que gestionen 2 o más clientes.

select c.responsable, count(c.codigo_cliente) as total_clientes_responsables from clientes c 
group by c.responsable 
having count(c.codigo_cliente) >= 2

--cuenta cuantos productos importados hay por cada sección, pero muestra solo las secciones
-- que tengan más de dos productos importados

select seccion, count(*) as productos_importados from productos where importado = true 
group by seccion having count(*) > 2

--select * from productos

--calcula el precio promedio por pais_origen considerando unicamente los productos cuya fecha
-- sea del año 2001 en adelante (fecha >= '2001-01-01'). Filtra solo los paises cuyo
-- promedio supere los 50

select p.pais_origen, avg(p.precio) as precio_promedio from productos p where p.fecha >= '2001-01-01' 
group by p.pais_origen having avg(p.precio ) > 50

-- Para los productos con un precio menor a 200, muestra la seccion y la suma de sus precios,
-- pero solo de aquellas secciones cuya suma supere los 300

select seccion, sum(p.precio) as suma_precios from productos p
where precio < 200 group by p.seccion having sum(precio) > 300

-- Muestra las poblaciones donde el responsable NO sea 'JUAN GARCÍA', contando el total de clientes
-- por poblacion, y muestra solo las poblaciones que tengan más de 1 cliente.

select c.poblacion, count(*) as total_clientes from clientes c
where c.responsable  != 'JUAN GARCÍA'
group by c.poblacion having count(*) > 1

-- Muestra todas las secciones con su precio promedio y su precio máximo, filtra para mostrar
-- solo las secciones con un promedio mayor a 80 y ordena el resultado de mayor a menor segun el promedios

select p.seccion, avg(p.precio) as precio_promedio, max(p.precio) as precio_maximo from productos p 
group by p.seccion  having avg(precio) > 80 order by precio_promedio desc

