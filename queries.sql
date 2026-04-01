-- =========================
-- BASIC DATA QUERIES
-- =========================

-- Show all clients
SELECT * FROM clientes;

-- Show all orders
SELECT * FROM ordenes;


-- =========================
-- JOIN QUERIES
-- =========================

-- Combine clients with their orders
SELECT 
    c.Nombre_Cliente,
    c.ApellidoP_Cliente,
    o.Nombre_Producto,
    o.Cantidad_Producto,
    o.Precio_Producto
FROM clientes c
INNER JOIN ordenes o 
ON c.Id_Cliente = o.Id_Cliente;


-- =========================
-- AGGREGATION QUERIES
-- =========================

-- Count total orders per client
SELECT 
    Id_Cliente,
    COUNT(*) AS total_ordenes
FROM ordenes
GROUP BY Id_Cliente;


-- Calculate total money spent per client
SELECT 
    Id_Cliente,
    SUM(Cantidad_Producto * Precio_Producto) AS total_gastado
FROM ordenes
GROUP BY Id_Cliente;


-- =========================
-- DATE FILTER
-- =========================

-- Show orders from a specific year
SELECT *
FROM ordenes
WHERE YEAR(Fecha) = 2024;
