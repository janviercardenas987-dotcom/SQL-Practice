SELECT nombre, precio FROM Instrumentos;
SELECT DISTINCT 'yamaha' FROM Instrumentos;
SELECT * FROM Instrumentos WHERE nombre LIKE 'viol%';
SELECT * FROM Instrumentos ORDER BY precio < 1000;
SELECT * FROM Instrumentos LIMIT 3;

SELECt DISTINCT nombre, marca, precio
FROM Instrumentos 
WHERE nombre LIKE '%viol%'
ORDER BY precio DESC 
LIMIT 3;