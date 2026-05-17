-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-05-2026 a las 06:49:49
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mundial de futbol`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `confederacion`
--

CREATE TABLE `confederacion` (
  `id_confederacion` int(11) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `siglas` varchar(10) NOT NULL,
  `region` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `confederacion`
--

INSERT INTO `confederacion` (`id_confederacion`, `nombre`, `siglas`, `region`) VALUES
(1, 'Union of European Football Associations', 'UEFA', 'Europa.'),
(2, 'Confederación Sudamericana de Fútbol', 'CONMEBOL', 'Sudamérica'),
(3, 'Confederación de Norteamérica, Centroamérica y el Caribe de Fútbol', 'CONCACAF', 'América del Norte, Central y el Caribe'),
(4, 'Confederación Africana de Fútbol', 'CAF', 'Africa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo`
--

CREATE TABLE `equipo` (
  `id_equipo` int(11) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `codigo_fifa` char(3) NOT NULL,
  `entrenador` varchar(100) NOT NULL,
  `id_confederacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `equipo`
--

INSERT INTO `equipo` (`id_equipo`, `nombre`, `codigo_fifa`, `entrenador`, `id_confederacion`) VALUES
(1, 'México', 'MEX', 'Javier Aguirre', 3),
(2, 'Estados Unidos', 'USA', 'Mauricio Pochettino', 3),
(3, 'España', 'ESP', 'Luís de la Fuente', 1),
(4, 'Ecuador', 'ECU', 'Sebastián Beccacece', 2),
(5, 'Argentina', 'ARG', 'Lionel Scaloni', 2),
(6, 'Sudáfrica', 'RSA', 'Hugo Broos', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadio`
--

CREATE TABLE `estadio` (
  `id_estadio` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `ciudad` varchar(80) NOT NULL,
  `pais` varchar(80) NOT NULL,
  `capacidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estadio`
--

INSERT INTO `estadio` (`id_estadio`, `nombre`, `ciudad`, `pais`, `capacidad`) VALUES
(1, 'Estadio Azteca', 'Ciudad de México', 'México', 87523),
(2, 'Estadio Monumental', 'Buenos Aires', 'Argentina', 85018),
(3, 'Michigan Stadium', 'Ann Arbor', 'Estados Unidos', 107601),
(4, 'Estadio Akron', 'Guadalajara', 'México', 49850);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugador`
--

CREATE TABLE `jugador` (
  `id_jugador` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `posicion` varchar(30) NOT NULL,
  `numero_dorsal` tinyint(4) NOT NULL,
  `fecha_nac` date NOT NULL,
  `id_equipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `jugador`
--

INSERT INTO `jugador` (`id_jugador`, `nombre`, `posicion`, `numero_dorsal`, `fecha_nac`, `id_equipo`) VALUES
(1, 'Guillermo Ochoa', 'Portero', 13, '1985-07-15', 1),
(2, 'Richard Ledezma', 'Defensa', 37, '2000-09-06', 1),
(3, 'Walter Daniel Benítez', 'Portero', 44, '1993-01-20', 5),
(4, 'Lionel Messi', 'Delantero', 10, '1987-06-24', 5),
(5, 'Kendry Páez', 'Mediocampista', 19, '2007-05-04', 4),
(6, 'Enner Valencia', 'Delantero', 10, '1989-11-04', 4),
(7, 'Jonathan Klinsmann', 'Portero', 33, '1997-04-08', 2),
(8, 'Sean Zawadzki', 'Mediocampista', 25, '2000-04-21', 2),
(9, 'Ronwen Williams', 'Portero', 30, '1992-01-21', 6),
(10, 'Pau Cubarsí', 'Defensa', 5, '2007-01-22', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partido`
--

CREATE TABLE `partido` (
  `id_partido` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `fase` varchar(30) NOT NULL,
  `goles_local` tinyint(4) NOT NULL,
  `goles_visitante` tinyint(4) NOT NULL,
  `id_estadio` int(11) NOT NULL,
  `id_local` int(11) NOT NULL,
  `id_visitante` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `partido`
--

INSERT INTO `partido` (`id_partido`, `fecha`, `fase`, `goles_local`, `goles_visitante`, `id_estadio`, `id_local`, `id_visitante`) VALUES
(1, '2026-05-11 13:00:12', 'Cuartos de Final', 6, 4, 3, 2, 1),
(2, '2026-05-29 08:04:06', 'Fase de Grupos', 5, 2, 4, 1, 4),
(3, '2026-06-10 18:25:11', 'Cuartos de Final', 3, 8, 3, 2, 6),
(4, '2026-05-04 10:20:33', 'Final', 2, 2, 1, 1, 3),
(5, '2026-05-29 11:33:23', 'Fase de Grupos', 14, 9, 2, 5, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `confederacion`
--
ALTER TABLE `confederacion`
  ADD PRIMARY KEY (`id_confederacion`);

--
-- Indices de la tabla `equipo`
--
ALTER TABLE `equipo`
  ADD PRIMARY KEY (`id_equipo`),
  ADD KEY `id_confederacion` (`id_confederacion`);

--
-- Indices de la tabla `estadio`
--
ALTER TABLE `estadio`
  ADD PRIMARY KEY (`id_estadio`);

--
-- Indices de la tabla `jugador`
--
ALTER TABLE `jugador`
  ADD PRIMARY KEY (`id_jugador`),
  ADD KEY `id_equipo` (`id_equipo`);

--
-- Indices de la tabla `partido`
--
ALTER TABLE `partido`
  ADD PRIMARY KEY (`id_partido`),
  ADD KEY `id_local` (`id_local`),
  ADD KEY `id_visitante` (`id_visitante`),
  ADD KEY `id_estadio` (`id_estadio`) USING BTREE;

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `confederacion`
--
ALTER TABLE `confederacion`
  MODIFY `id_confederacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `equipo`
--
ALTER TABLE `equipo`
  MODIFY `id_equipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `estadio`
--
ALTER TABLE `estadio`
  MODIFY `id_estadio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `jugador`
--
ALTER TABLE `jugador`
  MODIFY `id_jugador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `partido`
--
ALTER TABLE `partido`
  MODIFY `id_partido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `equipo`
--
ALTER TABLE `equipo`
  ADD CONSTRAINT `equipo_ibfk_1` FOREIGN KEY (`id_confederacion`) REFERENCES `confederacion` (`id_confederacion`);

--
-- Filtros para la tabla `jugador`
--
ALTER TABLE `jugador`
  ADD CONSTRAINT `jugador_ibfk_1` FOREIGN KEY (`id_equipo`) REFERENCES `equipo` (`id_equipo`);

--
-- Filtros para la tabla `partido`
--
ALTER TABLE `partido`
  ADD CONSTRAINT `partido_ibfk_1` FOREIGN KEY (`id_local`) REFERENCES `equipo` (`id_equipo`),
  ADD CONSTRAINT `partido_ibfk_2` FOREIGN KEY (`id_visitante`) REFERENCES `equipo` (`id_equipo`),
  ADD CONSTRAINT `partido_ibfk_3` FOREIGN KEY (`id_estadio`) REFERENCES `estadio` (`id_estadio`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
