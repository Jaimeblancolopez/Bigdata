-- ============================================================
-- TALLER COMPLETO — Tablas + datos (sin USE)
-- 1. Sustituye XX por tu código si editas el archivo (ej. p07).
-- 2. En phpMyAdmin: clic en tu base cafenorte_XX (panel izquierdo).
-- 3. Importar → elegir este archivo → Continuar.
-- El facilitador ya creó la base; este script solo crea tablas e inserta datos.
-- ============================================================

CREATE TABLE Clientes (
    ClienteID      INT AUTO_INCREMENT PRIMARY KEY,
    Nombre         VARCHAR(80)  NOT NULL,
    Telefono       VARCHAR(20),
    Email          VARCHAR(100),
    FechaRegistro  DATE DEFAULT (CURDATE())
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE Productos (
    ProductoID     INT AUTO_INCREMENT PRIMARY KEY,
    Nombre         VARCHAR(80)  NOT NULL,
    Precio         DECIMAL(10,2) NOT NULL,
    Stock          INT NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE Pedidos (
    PedidoID       INT AUTO_INCREMENT PRIMARY KEY,
    ClienteID      INT NOT NULL,
    FechaPedido    DATETIME DEFAULT CURRENT_TIMESTAMP,
    Total          DECIMAL(10,2),
    CONSTRAINT FK_Pedidos_Clientes
        FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE DetallePedidos (
    DetalleID      INT AUTO_INCREMENT PRIMARY KEY,
    PedidoID       INT NOT NULL,
    ProductoID     INT NOT NULL,
    Cantidad       INT NOT NULL,
    PrecioUnitario DECIMAL(10,2) NOT NULL,
    CONSTRAINT FK_Detalle_Pedidos
        FOREIGN KEY (PedidoID) REFERENCES Pedidos(PedidoID),
    CONSTRAINT FK_Detalle_Productos
        FOREIGN KEY (ProductoID) REFERENCES Productos(ProductoID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
