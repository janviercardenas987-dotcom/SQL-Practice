--select * from clientes inner join pedidos on clientes.codigo_cliente = pedidos.codigo_cliente
/*(INNER) JOIN: DEVUELVE SOLO LAS FILAS QUE TIENEN VALORES COINCIDENTES EN AMBAS TABLAS

SINTAXIS DE INNER JOIN.

SELECT COLUMN_NAME FROM TABLE INNER JOIN TABLE2 ON TABLE1.COLUMN_NAME = TABLE2.COLUMN_NAME.

LA SINTAXIS COMBINA DOS TABLAS BASADAS EN UNA COLUMNA RELACIONADA Y EL ON LA PALABRA CLAVE PARA ESPECIFICAR LA CONDICION
COINCIDENTE*/

select c.codigo_cliente from clientes c inner join pedidos p on c.codigo_cliente = p.codigo_cliente

/*para quitarle la ambugüedad, se debe anteponer el nombre de la tabla (o un alias corto) antes de la 
columna en el select. El estandar en backend es usar alias cortor (c para clientes, p para para pedidos)
para que el codigo quede limpio y legible*/

/*un cliente puede hacer muchos pedidos. Si el cliente 101 hace 5 pedidos diferentes, la consulta de arriba
te va a devolver el numero 101 repetido 5 veces en la lista

si el objetivo saber cuales clientes han hecho al menos un pedido (es decir, interseccion pura de los dos conjuntos))
debes usar DISNTICT para eliminar los duplicados y ahorrarle trabajo al procesador y a la memoria RAM*/

select distinct c.codigo_cliente from clientes c inner join pedidos p on c.codigo_cliente = p.codigo_cliente

 /*JOINy INNER JOINDevolverá el mismo resultado.

/*INNEREs el tipo de unión predeterminado para JOIN, Así que cuando escribes JOINEl analizador realmente escribe INNER JOIN.*/

ÚNETE A Múltiples Tablas

Puedes unir más de dos tablas añadiendo múltiples INNER JOINCláusulas en su consulta.

El siguiente SQL selecciona todos los pedidos con la información del cliente y del remitente:
Ejemplo*/
SELECT Orders.OrderID, Customers.CustomerName, Shippers.ShipperName
FROM Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID
INNER JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID; 

select c.codigo_cliente, responsable r from clientes c inner join pedidos p on c.codigo_cliente = p.codigo_cliente order by codigo_cliente

select c.codigo_cliente from clientes c join pedidos p on c.codigo_cliente = p.codigo_cliente where c.codigo_cliente = 'CT01'

select * from clientes join pedidos on clientes.codigo_cliente = pedidos.codigo_cliente

select c.codigo_cliente, responsable r, numero_pedido from clientes c join pedidos p on c.codigo_cliente = p.codigo_cliente where c.codigo_cliente = 'CT01'



select c.codigo_cliente, poblacion, responsable, p.numero_pedido, p.forma_pago from clientes c left join pedidos p on c.codigo_cliente = p.codigo_cliente where c.poblacion = 'MADRID' and p.codigo_cliente is null  

/*Si combinas tus JOINs con funciones de agregación (COUNT, SUM, GROUP BY), puedes armar el backend para gráficos brutales:*/

select c.poblacion, count(p.numero_pedido) as total_ventas from clientes c inner join
pedidos p on c.codigo_cliente  = p.codigo_cliente group by c.poblacion order by total_ventas desc

select c.codigo_cliente, c.responsable ,count(p.numero_pedido) as total_pedidos from clientes c 
inner join pedidos p on c.codigo_cliente = p.codigo_cliente group by c.codigo_cliente, c.responsable  order by c.codigo_cliente 
