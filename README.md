 sql-relational-database-project
 Relational database design and multi-table SQL queries demonstrating joins, aggregations, and data integrity.

 SQL Relational Database Project (Hitech System)

 Overview

 This project demonstrates the design and implementation of a relational database using MySQL. The system models clients and their purchase orders, allowing structured         reporting through multi-table queries.

 Database Structure

 clientes table storing client information
 ordenes table storing transactional order data
 Primary and foreign key relationships
 InnoDB storage engine

 Example Query

 sql
 SELECT 
    CONCAT(c.Nombre_Cliente, ' ', c.ApellidoP_Cliente, ' ', c.ApellidoM_Cliente) AS Nombre_Completo,
    COUNT(o.Id_Orden) AS Total_Ordenes,
    SUM(o.Cantidad_Producto * o.Precio_Producto) AS Total_Gastado
FROM Clientes c
INNER JOIN Ordenes o 
    ON c.Id_Cliente = o.Id_Cliente
GROUP BY Nombre_Completo
ORDER BY Total_Gastado DESC;
