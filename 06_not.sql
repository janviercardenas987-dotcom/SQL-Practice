SElECT * FROM users WHERE NOT email = 'janviercardenas987@gmail.com';   -- para buscar un dato que no sea igual al que se especifica

SElECT * FROM users WHERE NOT email = 'janviercardenas987@gmail.com' AND age = 19;

SElECT * FROM users WHERE NOT email = 'janviercardenas987@gmail.com' OR age = 15;

SELECT * FROM Customers WHERE Pais = 'Alemania' AND Ciudad = 'Berlin';

SELECT * FROM Customers WHERE Pais = 'Alemania' OR Ciudad = 'Stuttgart';

SELECT * FROM Customers WHERE NOT Pais = 'Alemania'; -- selecciona todos los campos de "Customers" donde el pais NO(NOT) es Alemania.

--Tambien se pueden combinar:
SELECT * FROM Customers WHERE Pais = 'Alemania' AND (Ciudad = 'Berlin' OR 'Stuttgart'); 
-- al igual que en programacion con los or, and y not
