-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 19, 2026 at 07:42 AM
-- Server version: 8.0.31
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hitech`
--

-- --------------------------------------------------------

--
-- Table structure for table `clientes`
--

CREATE TABLE `clientes` (
  `Id_Cliente` int NOT NULL,
  `Nombre_Cliente` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ApellidoP_Cliente` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ApellidoM_Cliente` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Email` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Telefono` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Direccion` varchar(40) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Edad` varchar(3) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clientes`
--

INSERT INTO `clientes` (`Id_Cliente`, `Nombre_Cliente`, `ApellidoP_Cliente`, `ApellidoM_Cliente`, `Email`, `Telefono`, `Direccion`, `Edad`) VALUES
(1, 'Elian', 'Sanchez', 'jimenez', 'SJ@.com', '860-111-1111', 'brazosdemami', '1'),
(2, 'Luis', 'Falcon', 'perez', 'A@a.com', '787-123-1234', 'PuertoRico12', '25'),
(3, 'Jonathan', 'Marrero', 'Marrero', 'JS@.com', '787-888-7777', 'Bayamon98', '26'),
(4, 'Pedro', 'PEPE', NULL, 'Pedro@hotmail.com', '787-123-1234', NULL, '30'),
(5, 'Enrique', 'Sanchez', NULL, 'Enrique.@icloud.com', '787-268-9645', NULL, '33'),
(6, 'Pepe', 'Martes', NULL, '', '787-987-9643', NULL, '40'),
(8, 'Elianny', 'Alcantara', NULL, NULL, NULL, NULL, '23'),
(9, 'Kaled', 'TheOne', NULL, 'JJh@a.com', '787-123-4452', NULL, '28'),
(10, 'Josue', 'p', NULL, 'Josue@gmail.com', '8745556547', NULL, '45'),
(11, 'Ana', 'Rivera', NULL, 'AnaR@icloud.com', '7878887412', NULL, '80'),
(13, 'Marian', 'Marrero', NULL, 'MS@gmail.com', '8602541478', NULL, '29'),
(14, 'Alexa', 'Maro', NULL, 'Alex@gmail.com', '787-888-8745', NULL, '26'),
(15, 'Jun', 'Coco', NULL, 'cocojun@icloud.com', '787-888-5454', NULL, '50');

-- --------------------------------------------------------

--
-- Table structure for table `ordenes`
--

CREATE TABLE `ordenes` (
  `Id_Orden` int NOT NULL,
  `Id_Cliente` int DEFAULT NULL,
  `Nombre_Producto` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Cantidad_Producto` int DEFAULT NULL,
  `Precio_Producto` decimal(6,2) DEFAULT NULL,
  `Fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ordenes`
--

INSERT INTO `ordenes` (`Id_Orden`, `Id_Cliente`, `Nombre_Producto`, `Cantidad_Producto`, `Precio_Producto`, `Fecha`) VALUES
(1, 2, 'HDD', 2, 50.00, '2024-02-15'),
(2, 1, 'RAM', 1, 150.00, '2023-02-15'),
(3, 3, 'Combo logi', 1, 50.00, '2022-02-15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`Id_Cliente`);

--
-- Indexes for table `ordenes`
--
ALTER TABLE `ordenes`
  ADD PRIMARY KEY (`Id_Orden`),
  ADD KEY `Id_Cliente` (`Id_Cliente`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
  MODIFY `Id_Cliente` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `ordenes`
--
ALTER TABLE `ordenes`
  MODIFY `Id_Orden` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ordenes`
--
ALTER TABLE `ordenes`
  ADD CONSTRAINT `ordenes_ibfk_1` FOREIGN KEY (`Id_Cliente`) REFERENCES `clientes` (`Id_Cliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
