-- ============================================================
-- Paso 3 — Datos de ejemplo (cafenorte_XX → SQL)
-- ============================================================

USE cafenorte_XX;

INSERT INTO Clientes (Nombre, Telefono, Email) VALUES
('Ana García',    '3001112233', 'ana@email.com'),
('Luis Martínez', '3004445566', 'luis@email.com'),
('María López',   '3007778899', 'maria@email.com');

INSERT INTO Productos (Nombre, Precio, Stock) VALUES
('Café americano',  4500, 100),
('Capuchino',       6500, 80),
('Croissant',       3500, 50),
('Jugo natural',    5000, 40);

INSERT INTO Pedidos (ClienteID, Total) VALUES
(1, 11000),
(2, 6500),
(1, 8000);

INSERT INTO DetallePedidos (PedidoID, ProductoID, Cantidad, PrecioUnitario) VALUES
(1, 1, 2, 4500),
(1, 3, 1, 3500),
(2, 2, 1, 6500),
(3, 4, 1, 5000),
(3, 3, 1, 3500);
