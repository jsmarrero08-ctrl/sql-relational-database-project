# SQL Relational Database & Reporting Project (Hitech System)

Relational database design and multi-table SQL queries demonstrating JOIN operations, aggregations, and data integrity using MySQL.

## Overview

This project demonstrates the design and implementation of a relational database using MySQL.  
The system models clients and their purchase orders, enabling structured reporting through multi-table queries.

The objective of this project was to apply relational database principles and generate analytical reports using SQL.

## Database Structure

- `Clientes` table storing client information  
- `Ordenes` table storing transactional order data  
- Primary and foreign key relationships  
- InnoDB storage engine for referential integrity  


## Example Analytical Query

The following query calculates the total number of orders and total spending per client by joining the `Clientes` and `Ordenes` tables:

```sql
SELECT 
    CONCAT(c.Nombre_Cliente, ' ', c.ApellidoP_Cliente, ' ', c.ApellidoM_Cliente) AS Nombre_Completo,
    COUNT(o.Id_Orden) AS Total_Ordenes,
    SUM(o.Cantidad_Producto * o.Precio_Producto) AS Total_Gastado
FROM Clientes c
INNER JOIN Ordenes o 
    ON c.Id_Cliente = o.Id_Cliente
GROUP BY Nombre_Completo
ORDER BY Total_Gastado DESC;
