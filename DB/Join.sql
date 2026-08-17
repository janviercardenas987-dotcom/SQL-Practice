/*La clausula join se utiliza para combinar fials de dos o mas tablas, basadas en una columna
relacionada entre ellas.

podemos creas la siguiente sentencia SQL(con un join), que relaciona registros
que tienen valores coincidentes en ambas tablas:
*/

SELECT producto_id, producto_name, categoria_name
FROM productos
INNER JOIN categorias ON productos.categoria_id = categorias.categoria_id;

/*INNER JOIN: Devuelve registros que tienen valores coincidentes en ambas tablas
LEFT JOIN:  Devuelve todos los registros de la tabla izquierda y los registros coincidentes
de la tabla derecha
RIGHT JOIN: Devuelve todos los registros de la tabla derecha y los registros coincididos
de la tabla izquierda
FULL JOIN: Devuelve todos los registros cuando hay una coincidencia de la tabla
izquierda o derecha 
CROSS JOIN: Devuelve el producto cartesiano de dos o mas tablas(combina cada fila de
la primera tabla con cada fila de la segunda tabla)*/

SELECT 
    r.reserv_code,
    c.name || ' ' || c.surname AS customer,
    a.name AS agency,
    rd.plate_number,
    car.brand || ' ' || car.model AS vehicle,
    rd.price AS vehicle_price,
    r.total_price
FROM reservation r
JOIN customer c ON r.customer_code = c.customer_code
JOIN agency a ON r.agency_code = a.agency_code
JOIN reservation_detail rd ON r.reserv_code = rd.reserv_code
JOIN car ON rd.plate_number = car.plate_number;
