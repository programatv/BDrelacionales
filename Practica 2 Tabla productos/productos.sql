-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-02-2026 a las 16:20:28
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
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `precio` double NOT NULL,
  `marca` varchar(50) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`, `marca`, `descripcion`, `cantidad`) VALUES
(0, 'GeForce GTX 1070 G1 - Tarjetas gráficas para Videojuegos/gráficos GV-N1070G1 GAMING-8GD', 7300, 'GIGABYTE', 'La tarjeta gráfica Gigabyte Nvidia GeForce GTX 1070 8GB te permitirá jugar y renderizar gráficos con la mejor experiencia', 55),
(1, 'Café Soluble Reserva Mexicana Verarica Origen 100% Veracruzano, con notas Afrutadas Frasco de 180g', 159, 'Nescafé', 'Nescafé Reserva Verarica Disfruta del sabor único de este café soluble hecho con granos 100% mexicanos, proveniente de las hermosas montañas de Veracruz, región que brinda un grano único. Cosechado a mano con esfuerzo y dedicación por artesanos del café para que tú disfrutes una rica taza con notas afrutadas, llena de orgullo mexicano.', 155),
(2, 'The Dark Side of the Moon (50th Anniversary Remaster) (Vinil)\r\n', 709.99, 'Pink Floyd', 'Álbum de estudio original remasterizado por James Guthrie en vinilo de 180 g en una chamarra plegable con carteles y pegatinas originales', 66),
(3, 'Chocolates Nestlé - Bastones Carlos V Cero', 50, 'Carlos V', 'Carlos V es El Rey de los Chocolates, favorito de chicos y grandes, disfrútalo solo o con tu familia y amigos. Chocolate sin azúcar en una bolsa con 14 piezas de 8gr cada una.', 203),
(4, 'Cereal Marshmallows Hojuelas de Maíz Integral con Forma de Conejitos y Trozos de Malvaviscos Caja de 230g', 49.5, 'Trix', 'Trix de Nestlé es un cereal integral elaborado con maíz y trigo, donde el grano entero es el ingrediente número uno. Gracias a su textura, se mantiene choco crujiente hasta la última cucharada* (conforme a estudio cuantitativo de consumidores)\r\n\r\n', 500),
(5, 'Jugo de Manzana, Jugo Del Valle, 6 Pack - 1l/botella', 126, 'Del Valle', 'Disfruta del delicioso sabor del jugo de manzana de Del Valle en tu desayuno y comienza tu día de la mejor manera posible. Del Valle te da del jugo de fruta.', 323),
(6, 'Nintendo Switch 2 + Mario Kart World Bundle', 10896, 'Nintendo', 'Comienza tus inolvidables aventuras en la consola Nintendo Switch™ 2 con este paquete que incluye la consola y la descarga del juego completo Mario Kart™ World, exclusivo para Nintendo Switch 2. Nintendo Switch 2 es la siguiente evolución de la consola Nintendo Switch, ¡y está llena de mejoras y divertidas maneras de conectarte con otros para que jueguen todos juntos! Descubre Nintendo Switch 2 Tus juegos cobrarán vida en la deslumbrante pantalla 1080p de 7.9 pulgadas (20.06 cm) que resalta la p', 120),
(7, 'Snickers, M&Ms y Milky Way Surtido de Chocolates -14 piezas', 193.99, 'Snickers', 'Tus chocolates favoritos Snickers, MilkyWay y M&M\'S en un solo empaque. Contiene 14 piezas surtidas. Presentación ideal para compartir, para tus piñatas, fiestas o un tazón de dulces en casa.', 43),
(8, 'Coca-Cola Original, 12 Pack - 355 ml/lata', 263, 'Coca-Cola', 'Disfruta del auténtico sabor de Coca-Cola en cualquier lugar y comparte momentos únicos con tu familia y amigos. Cualquier ocasión es perfecta para disfrutar de tu Coca-Cola.', 382),
(9, 'EPOMAKER x Aula F65 65% Teclado Mecánico Inalámbrico, Hot Swappable Gasket Custom Gaming Keyboard with Five-Layer Padding, RGB Backlit, BT/2.4GHz/USB-C (Black, Reaper Switch)', 1588, 'EPOMAKER', 'Teclado para gaming', 437);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
