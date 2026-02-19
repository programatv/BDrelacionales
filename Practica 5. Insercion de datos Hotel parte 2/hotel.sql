-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 192.168.10.20
-- Generation Time: Feb 19, 2026 at 03:14 PM
-- Server version: 10.11.10-MariaDB
-- PHP Version: 8.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `atencion`
--

CREATE TABLE `atencion` (
  `id_atencion` int(11) NOT NULL,
  `id_reserva` int(11) NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `nota` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `atencion`
--

INSERT INTO `atencion` (`id_atencion`, `id_reserva`, `id_empleado`, `fecha`, `nota`) VALUES
(1, 4, 1, '2026-03-01', 'El cliente le solicitó al conserje una limpieza en su habitación'),
(2, 5, 2, '2026-01-08', 'La cliente solicitó una colaboración de redes sociales a la publicista del hotel'),
(3, 6, 3, '2025-12-26', 'El cliente pidió al recepcionista un cambio de habitación'),
(4, 3, 4, '2026-02-16', 'La cliente solicitó hablar con el gerente del hotel debido al comportamiento de los empleados'),
(5, 10, 5, '2026-01-20', 'El cliente solicitó ayuda a la guardia');

-- --------------------------------------------------------

--
-- Table structure for table `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefono` varchar(12) NOT NULL,
  `fecha_registro` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nombre`, `email`, `telefono`, `fecha_registro`) VALUES
(1, 'Pamela Sánchez', 'pamela_sanchez@gmail.com', '6679264295', '2026-01-23'),
(2, 'Armida Gastelum', 'armidagastelum@gmail.com', '6639242953', '2025-09-03'),
(3, 'Alicia Matu', 'alicia.matu@gmail.com', '2223927420', '2026-02-06'),
(4, 'Gerardo Figueroa', 'gerardo_figueroa@gmail.com', '5538295735', '2025-09-24'),
(5, 'Dante Muñoz', 'dantemuñoz@gmail.com', '6489225569', '2025-08-08');

-- --------------------------------------------------------

--
-- Table structure for table `empleado`
--

CREATE TABLE `empleado` (
  `id_empleado` int(11) NOT NULL,
  `id_hotel` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `puesto` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `empleado`
--

INSERT INTO `empleado` (`id_empleado`, `id_hotel`, `nombre`, `puesto`, `email`) VALUES
(1, 1, 'Juan Bojorquez', 'Conserje', 'juanbojorquez@gmail.com'),
(2, 1, 'Madeleine Garate', 'Publicista', 'madeleinegarate@gmail.com'),
(3, 2, 'Ian Echeagaray', 'Recepcionista', 'Ian.echeagaray@gmail.com'),
(4, 3, 'Santiago Sanchez', 'Gerente', 'santiago_sanchez@gmail.com'),
(5, 2, 'Lucia Moreno', 'Guardia', 'lucia.moreno@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `habitacion`
--

CREATE TABLE `habitacion` (
  `id_habitacion` int(11) NOT NULL,
  `id_hotel` int(11) NOT NULL,
  `numero` varchar(12) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `precio_noche` double NOT NULL,
  `estado` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `habitacion`
--

INSERT INTO `habitacion` (`id_habitacion`, `id_hotel`, `numero`, `tipo`, `precio_noche`, `estado`) VALUES
(1, 3, '290', 'Doble', 1200, 'Ocupado'),
(2, 2, '34', 'Individual', 980, 'Libre'),
(3, 2, '72', 'Suite', 4000, 'Ocupado'),
(4, 1, '89', 'Triple', 3300, 'Ocupado'),
(5, 3, '470', 'Ejecutiva', 3900, 'Libre');

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `id_hotel` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `ciudad` varchar(50) NOT NULL,
  `telefono` varchar(12) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`id_hotel`, `nombre`, `ciudad`, `telefono`) VALUES
(1, 'Trivago', 'Tijuana', '6649876543'),
(2, 'Lucerna', 'Culiacán', '6671234567'),
(3, 'Fiesta Inn', 'Monterrey', '8124680135');

-- --------------------------------------------------------

--
-- Table structure for table `pago`
--

CREATE TABLE `pago` (
  `id_pago` int(11) NOT NULL,
  `id_reserva` int(11) NOT NULL,
  `fecha_pago` date NOT NULL,
  `monto` double NOT NULL,
  `metodo` varchar(20) NOT NULL,
  `referencia` int(200) NOT NULL,
  `estado_pago` int(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pago`
--

INSERT INTO `pago` (`id_pago`, `id_reserva`, `fecha_pago`, `monto`, `metodo`, `referencia`, `estado_pago`) VALUES
(1, 5, '2026-01-06', 9900, 'Tarjeta de crédito', 2428, 1),
(2, 7, '2026-02-11', 35100, 'Tarjeta de débito', 5537, 2),
(3, 2, '2026-01-08', 21560, 'Tarjeta de crédito', 9635, 1),
(4, 4, '2026-02-26', 4800, 'Efectivo', 7689, 1),
(5, 8, '2026-02-22', 8000, 'Tarjeta de débito', 2022, 3);

-- --------------------------------------------------------

--
-- Table structure for table `reserva`
--

CREATE TABLE `reserva` (
  `id_reserva` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_habitacion` int(11) NOT NULL,
  `fecha_entrada` date NOT NULL,
  `fecha_salida` date NOT NULL,
  `num_huespedes` int(30) NOT NULL,
  `estado_reserva` varchar(20) NOT NULL,
  `fecha_creacion` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reserva`
--

INSERT INTO `reserva` (`id_reserva`, `id_cliente`, `id_habitacion`, `fecha_entrada`, `fecha_salida`, `num_huespedes`, `estado_reserva`, `fecha_creacion`) VALUES
(1, 5, 5, '2025-12-31', '2026-01-09', 4, 'vigente', '2025-12-31'),
(2, 2, 2, '2026-01-08', '2026-03-31', 2, 'vigente', '2026-01-08'),
(3, 1, 4, '2026-02-13', '2026-02-20', 1, 'cancelada', '2026-02-11'),
(4, 4, 1, '2026-02-26', '2026-03-02', 1, 'vigente', '2026-02-26'),
(5, 2, 4, '2026-01-06', '2026-01-09', 3, 'vigente', '2026-01-05'),
(6, 2, 2, '2025-12-17', '2025-12-27', 2, 'cancelada', '2025-12-02'),
(7, 3, 5, '2026-02-11', '2026-02-18', 4, 'vigente', '2026-02-01'),
(8, 1, 3, '2026-02-22', '2026-02-24', 2, 'vigente', '2026-02-15'),
(9, 4, 1, '2026-02-02', '2026-02-09', 1, 'vigente', '2026-02-02'),
(10, 3, 2, '2026-01-19', '2026-01-20', 3, 'cancelada', '2026-01-19');

-- --------------------------------------------------------

--
-- Table structure for table `reserva_servicio`
--

CREATE TABLE `reserva_servicio` (
  `id_reserva` int(11) NOT NULL,
  `id_servicio` int(11) NOT NULL,
  `cantidad` varchar(50) NOT NULL,
  `precio_unitario` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reserva_servicio`
--

INSERT INTO `reserva_servicio` (`id_reserva`, `id_servicio`, `cantidad`, `precio_unitario`) VALUES
(1, 1, '2', 1000),
(3, 3, '3', 600),
(4, 4, '1', 350),
(5, 2, '1', 150),
(8, 5, '3', 900),
(7, 4, '5', 1750),
(8, 1, '2', 1000),
(3, 2, '1', 150),
(2, 3, '1', 200),
(9, 4, '2', 700);

-- --------------------------------------------------------

--
-- Table structure for table `servicio`
--

CREATE TABLE `servicio` (
  `id_servicio` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `precio_base` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `servicio`
--

INSERT INTO `servicio` (`id_servicio`, `nombre`, `precio_base`) VALUES
(1, 'Comida a la habitación', 500),
(2, 'Lavandería', 150),
(3, 'Minibar', 200),
(4, 'WiFi', 350),
(5, 'Gimnasio', 300);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `atencion`
--
ALTER TABLE `atencion`
  ADD PRIMARY KEY (`id_atencion`),
  ADD KEY `id_reserva` (`id_reserva`),
  ADD KEY `id_empleado` (`id_empleado`);

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indexes for table `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`id_empleado`),
  ADD KEY `id_hotel` (`id_hotel`);

--
-- Indexes for table `habitacion`
--
ALTER TABLE `habitacion`
  ADD PRIMARY KEY (`id_habitacion`),
  ADD KEY `id_hotel` (`id_hotel`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`id_hotel`);

--
-- Indexes for table `pago`
--
ALTER TABLE `pago`
  ADD PRIMARY KEY (`id_pago`),
  ADD KEY `id_reserva` (`id_reserva`);

--
-- Indexes for table `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`id_reserva`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_habitacion` (`id_habitacion`);

--
-- Indexes for table `reserva_servicio`
--
ALTER TABLE `reserva_servicio`
  ADD KEY `id_reserva` (`id_reserva`),
  ADD KEY `id_servicio` (`id_servicio`);

--
-- Indexes for table `servicio`
--
ALTER TABLE `servicio`
  ADD PRIMARY KEY (`id_servicio`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `atencion`
--
ALTER TABLE `atencion`
  MODIFY `id_atencion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `empleado`
--
ALTER TABLE `empleado`
  MODIFY `id_empleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `habitacion`
--
ALTER TABLE `habitacion`
  MODIFY `id_habitacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `id_hotel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pago`
--
ALTER TABLE `pago`
  MODIFY `id_pago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `reserva`
--
ALTER TABLE `reserva`
  MODIFY `id_reserva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `servicio`
--
ALTER TABLE `servicio`
  MODIFY `id_servicio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
