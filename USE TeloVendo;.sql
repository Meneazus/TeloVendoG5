USE TeloVendo;

ALTER TABLE Producto
ADD COLUMN Precio INT;

ALTER TABLE Cliente
ADD COLUMN Total_pagado INT;

ALTER TABLE Vendedor
ADD COLUMN Salario INT;

INSERT INTO Vendedor (RUN, Nombre, Apellido, Fecha_nacimiento, Sección, Salario) VALUES
('12345678-9', 'Juan', 'Pérez', '1985-01-15', 'Electrónica', 500000),
('23456789-2', 'María', 'González', '1990-02-20', 'Ropa', 550000),
('34567890-3', 'Carlos', 'Ramírez', '1982-03-25', 'Deportes', 520000),
('45678901-4', 'Ana', 'Martínez', '1995-04-30', 'Electrónica', 530000),
('56789012-5', 'Luis', 'Fernández', '1988-05-10', 'Juguetes', 480000),
('67890123-6', 'Sofía', 'López', '1992-06-15', 'Hogar', 600000),
('78901234-7', 'Miguel', 'Díaz', '1983-07-20', 'Deportes', 510000),
('89012345-8', 'Lucía', 'Sánchez', '1991-08-25', 'Ropa', 570000),
('90123456-9', 'Pedro', 'Cruz', '1986-09-30', 'Juguetes', 540000),
('12309876-5', 'Elena', 'Hernández', '1989-10-05', 'Hogar', 620000);


INSERT INTO Cliente (ClienteID, Nombre, Apellido, Teléfono, Dirección, Comuna, Correo_electrónico, Fecha_registro, Total_pagado) VALUES
(1, 'Carlos', 'Gómez', '987654321', 'Av. Providencia 123', 'Providencia', 'carlos.gomez@example.com', '2023-01-15', 250000),
(2, 'María', 'Torres', '987654322', 'Calle San Diego 456', 'Santiago Centro', 'maria.torres@example.com', '2023-01-20', 300000),
(3, 'Juan', 'Rodríguez', '987654323', 'Av. Apoquindo 789', 'Las Condes', 'juan.rodriguez@example.com', '2023-02-10', 150000),
(4, 'Ana', 'López', '987654324', 'Calle Huérfanos 1011', 'Santiago Centro', 'ana.lopez@example.com', '2023-02-15', 350000),
(5, 'Pedro', 'Sánchez', '987654325', 'Av. La Florida 1213', 'La Florida', 'pedro.sanchez@example.com', '2023-02-20', 450000),
(6, 'Lucía', 'Martínez', '987654326', 'Calle General Velásquez 1415', 'Quilicura', 'lucia.martinez@example.com', '2023-03-05', 275000),
(7, 'Miguel', 'Pérez', '987654327', 'Av. Matta 1617', 'Santiago Centro', 'miguel.perez@example.com', '2023-03-10', 225000),
(8, 'Elena', 'Hernández', '987654328', 'Calle San Pablo 1819', 'Quinta Normal', 'elena.hernandez@example.com', '2023-03-15', 400000),
(9, 'José', 'Díaz', '987654329', 'Av. Independencia 2021', 'Independencia', 'jose.diaz@example.com', '2023-04-05', 500000),
(10, 'Rosa', 'Morales', '987654330', 'Calle San Martín 2223', 'Santiago Centro', 'rosa.morales@example.com', '2023-04-10', 275000),
(11, 'Luis', 'Vega', '987654331', 'Av. Irarrázaval 2425', 'Ñuñoa', 'luis.vega@example.com', '2023-04-15', 325000),
(12, 'Sofía', 'Rojas', '987654332', 'Calle Mac Iver 2627', 'Santiago Centro', 'sofia.rojas@example.com', '2023-05-05', 375000),
(13, 'Andrés', 'Fuentes', '987654333', 'Av. Italia 2829', 'Providencia', 'andres.fuentes@example.com', '2023-05-10', 450000),
(14, 'Paula', 'Castro', '987654334', 'Calle Monjitas 3031', 'Santiago Centro', 'paula.castro@example.com', '2023-05-15', 225000),
(15, 'Fernando', 'Ortiz', '987654335', 'Av. Vitacura 3233', 'Vitacura', 'fernando.ortiz@example.com', '2023-06-05', 325000);


INSERT INTO Producto (SKU, Nombre, Categoría, Fabricante, Stock, Precio) VALUES
('001', 'Televisor LED 50"', 'Electrónica', 'Samsung', 30, 299990),
('002', 'Laptop 15"', 'Computación', 'Dell', 20, 599990),
('003', 'Refrigerador 400L', 'Electrodomésticos', 'LG', 15, 399990),
('004', 'Lavadora 10kg', 'Electrodomésticos', 'Bosch', 25, 249990),
('005', 'Smartphone 6.5"', 'Telefonía', 'Apple', 50, 799990),
('006', 'Cafetera Automática', 'Electrodomésticos', 'Philips', 40, 199990),
('007', 'Consola de Juegos', 'Videojuegos', 'Sony', 35, 499990),
('008', 'Bicicleta Montaña', 'Deportes', 'Trek', 10, 349990),
('009', 'Parlante Bluetooth', 'Audio', 'JBL', 45, 99990),
('010', 'Tablet 10"', 'Computación', 'Huawei', 25, 249990);


-- Seleccione los vendedores que tienen un salario superior al promedio

SELECT * FROM Vendedor WHERE Salario > (SELECT AVG(Salario) FROM Vendedor);


-- Seleccione los productos más caros que el promedio

SELECT * FROM Producto WHERE Precio > (SELECT AVG(Precio) FROM Producto);


-- Seleccione los clientes que han pagado más que el promedio

SELECT * FROM Cliente WHERE Total_pagado > (SELECT AVG(Total_pagado) FROM Cliente);


-- Indique cuántos vendedores tienen un salario inferior al promedio

SELECT * FROM Vendedor WHERE Salario < (SELECT AVG(Salario) FROM Vendedor);


-- Indique cuántos productos son más baratos que el promedio

SELECT * FROM Producto WHERE Precio < (SELECT AVG(Precio) FROM Producto);


-- Seleccione el nombre y el apellido de los vendedores que tienen un salario superior al promedio.

SELECT Nombre, Apellido, Salario FROM Vendedor WHERE Salario > (SELECT AVG(Salario) FROM Vendedor); 


-- Indique cuál es el producto más barato y el producto más caro del inventario

-- Producto con el recio más barato
SELECT * FROM Producto WHERE Precio = (SELECT MIN(Precio) FROM Producto);

-- Producto con el precio más caro
SELECT * FROM Producto WHERE Precio = (SELECT MAX(Precio) FROM Producto);


-- Indique cual es el costo de comprar uno de cada producto en el inventario

SELECT SUM(Precio) AS Costo_total FROM Producto;


-- Identifique la comuna que tiene más clientes registrados

SELECT Comuna, COUNT(*) AS Cantidad_Clientes FROM Cliente GROUP BY Comuna ORDER BY Cantidad_Clientes DESC LIMIT 1;


-- Identifique los productos que tienen más de 5 unidades en stock

SELECT Nombre, Stock FROM Producto WHERE Stock > 5;