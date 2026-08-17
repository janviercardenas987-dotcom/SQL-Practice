-- La INSERT INTO declaración, se utiliza para insertar nuevos registros en una tabla.

INSERT INTO customers(Nombre, Contacto, Ciudad, CodigoPostal, Pais)
VALUES('Raul Romero', 'Raul', 'Madrid',  '934-12', 'España');

-- insertar datos en columnas especificadas
INSERT INTO customers(Nombre, Ciudad, Pais)
VALUES('Charles', 'Zurich', 'Suiza');

INSERT INTO agency (name) VALUES
('Agencia Central - Madrid'),
('Agencia Aeropuerto - Barcelona'),
('Agencia Norte - Bilbao'),
('Agencia Sur - Sevilla'),
('Agencia Costa - Valencia');

INSERT INTO garage (name) VALUES
('Garaje Principal Centro'),
('Garaje Estación Atocha'),
('Garaje Terminal T4'),
('Garaje Puerto Olímpico'),
('Garaje Polígono Industrial');

INSERT INTO customer (dni, name, surname, phone, address, endorser_code) VALUES
('12345678A', 'Carlos', 'Gómez', '600111222', 'Calle Mayor 12, Madrid', NULL),
('87654321B', 'Ana', 'Martínez', '600333444', 'Av. Diagonal 45, Barcelona', NULL),
('45678912C', 'Luis', 'Fernández', '600555666', 'Gran Vía 88, Bilbao', 1),
('78912345D', 'Elena', 'Sánchez', '600777888', 'Calle Sierpes 5, Sevilla', 1),
('65432198E', 'Roberto', 'Díaz', '600999000', 'Calle Colón 20, Valencia', 2);

INSERT INTO car (plate_number, brand, model, color, garage_code) VALUES
('1234-ABC', 'Toyota', 'Corolla', 'Blanco', 1),
('5678-DEF', 'Seat', 'Ibiza', 'Gris', 1),
('9012-GHI', 'Volkswagen', 'Golf', 'Negro', 2),
('3456-JKL', 'Renault', 'Clio', 'Rojo', 3),
('7890-MNP', 'Peugeot', '308', 'Azul', 4);

INSERT INTO reservation (init_date, end_date, total_price, customer_code, agency_code) VALUES
('2026-08-01', '2026-08-05', 200.00, 1, 1),
('2026-08-02', '2026-08-07', 350.00, 2, 2),
('2026-08-03', '2026-08-06', 150.00, 3, 1),
('2026-08-10', '2026-08-15', 500.00, 4, 3),
('2026-08-12', '2026-08-14', 120.00, 5, 5);