-- ============================================================
-- Paso 5 — Agregación y fechas (cafenorte_XX)
-- ============================================================

USE cafenorte_XX;

SELECT
    COUNT(*)           AS TotalProductos,
    MAX(Precio)        AS PrecioMaximo,
    MIN(Precio)        AS PrecioMinimo,
    AVG(Precio)        AS PrecioPromedio,
    SUM(Stock)         AS UnidadesEnStock
FROM Productos;

SELECT
    c.Nombre,
    COUNT(p.PedidoID) AS CantidadPedidos
FROM Clientes c
LEFT JOIN Pedidos p ON c.ClienteID = p.ClienteID
GROUP BY c.Nombre;

SELECT
    c.Nombre,
    COUNT(p.PedidoID) AS CantidadPedidos
FROM Clientes c
INNER JOIN Pedidos p ON c.ClienteID = p.ClienteID
GROUP BY c.Nombre
HAVING COUNT(p.PedidoID) > 1;

SELECT
    NOW()                  AS FechaHoraLocal,
    UTC_TIMESTAMP()        AS FechaHoraUTC,
    YEAR(CURDATE())        AS AnioActual,
    MONTH(CURDATE())       AS MesActual,
    DAY(CURDATE())         AS DiaActual;

SELECT Nombre, Precio
FROM Productos
ORDER BY Precio DESC
LIMIT 2;

SELECT DISTINCT Precio FROM Productos ORDER BY Precio;
