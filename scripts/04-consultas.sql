-- ============================================================
-- Paso 4 — Consultas (seleccionar cafenorte_XX en phpMyAdmin)
-- ============================================================

USE cafenorte_XX;

SELECT * FROM Clientes;

SELECT Nombre, Precio
FROM Productos
WHERE Precio > 4000
ORDER BY Precio DESC;

SELECT
    p.PedidoID,
    c.Nombre AS Cliente,
    p.FechaPedido,
    p.Total
FROM Pedidos p
INNER JOIN Clientes c ON p.ClienteID = c.ClienteID;

SELECT
    p.PedidoID,
    c.Nombre AS Cliente,
    pr.Nombre AS Producto,
    d.Cantidad,
    d.PrecioUnitario,
    (d.Cantidad * d.PrecioUnitario) AS Subtotal
FROM DetallePedidos d
INNER JOIN Pedidos p    ON d.PedidoID = p.PedidoID
INNER JOIN Clientes c   ON p.ClienteID = c.ClienteID
INNER JOIN Productos pr ON d.ProductoID = pr.ProductoID
ORDER BY p.PedidoID;

SELECT Nombre, Email
FROM Clientes
WHERE Nombre LIKE '%Garc%';

SELECT Nombre, Precio
FROM Productos
WHERE Precio BETWEEN 4000 AND 6000;
