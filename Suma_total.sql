-- Sumar ventas y obtenere promedio por categoria
SELECT Intrumentos, SUM(precio) AS precio_total, AVG(precio) 
AS promedio_total
FROM Instrumentos
GROUP BY precio;