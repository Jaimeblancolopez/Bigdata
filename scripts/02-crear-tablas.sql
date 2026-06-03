-- ============================================================
-- Paso 2 — Crear tablas (phpMyAdmin → seleccionar cafenorte_XX → SQL)
-- Cambia XX por tu código en la línea USE si hace falta.
-- ============================================================

USE cafenorte_XX;

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
