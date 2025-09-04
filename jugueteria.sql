-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-09-2025 a las 21:51:08
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
-- Base de datos: `jugueteria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `nombre`) VALUES
(1, 'Muñecas'),
(2, 'Carros'),
(3, 'Construcción'),
(4, 'Educativos'),
(5, 'De mesa'),
(6, 'Electrónicos'),
(7, 'Peluches'),
(8, 'Deportes'),
(9, 'Arte y manualidades'),
(10, 'Bebés'),
(11, 'Coleccionables'),
(12, 'Puzzle'),
(13, 'Ciencia'),
(14, 'Robótica'),
(15, 'Instrumentos musicales'),
(16, 'Cocina de juguete'),
(17, 'Disfraces'),
(18, 'Superhéroes'),
(19, 'Videojuegos'),
(20, 'Exterior');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `edades`
--

CREATE TABLE `edades` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `edades`
--

INSERT INTO `edades` (`id`, `nombre`) VALUES
(1, '0-1 años'),
(2, '2-3 años'),
(3, '4-5 años'),
(4, '6-7 años'),
(5, '8-9 años'),
(6, '10-11 años'),
(7, '12-13 años'),
(8, '14-15 años'),
(9, '16-17 años'),
(10, '18+'),
(11, 'Bebés'),
(12, 'Niños pequeños'),
(13, 'Niños en edad escolar'),
(14, 'Pre-adolescentes'),
(15, 'Adolescentes'),
(16, 'Adultos jóvenes'),
(17, 'Adultos'),
(18, 'Mayores'),
(19, 'Familia'),
(20, 'Todos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `rol` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `nombre`, `rol`) VALUES
(1, 'Carlos Pérez', 'Cajero'),
(2, 'Ana Torres', 'Vendedora'),
(3, 'Luis Fernández', 'Gerente'),
(4, 'María Gómez', 'Atención al cliente'),
(5, 'Jorge Ruiz', 'Reponedor'),
(6, 'Lucía Sánchez', 'Cajera'),
(7, 'Pedro Díaz', 'Seguridad'),
(8, 'Sofía Romero', 'Vendedora'),
(9, 'Martín López', 'Cajero'),
(10, 'Julieta Vega', 'Supervisora'),
(11, 'Camila Herrera', 'Vendedora'),
(12, 'Diego Castro', 'Reponedor'),
(13, 'Valeria Torres', 'Caja'),
(14, 'Andrés Navarro', 'Gerente'),
(15, 'Florencia Silva', 'Atención al cliente'),
(16, 'Pablo Morales', 'Seguridad'),
(17, 'Micaela Quiroz', 'Cajera'),
(18, 'Rodrigo Arias', 'Vendedor'),
(19, 'Natalia Méndez', 'Supervisora'),
(20, 'Santiago León', 'Reponedor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE `marcas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `marcas`
--

INSERT INTO `marcas` (`id`, `nombre`) VALUES
(1, 'LEGO'),
(2, 'Mattel'),
(3, 'Hasbro'),
(4, 'Playmobil'),
(5, 'Fisher-Price'),
(6, 'Hot Wheels'),
(7, 'Barbie'),
(8, 'Nerf'),
(9, 'Bandai'),
(10, 'Disney'),
(11, 'Marvel'),
(12, 'DC Comics'),
(13, 'Star Wars'),
(14, 'Nintendo'),
(15, 'Sony'),
(16, 'VTech'),
(17, 'Mega Bloks'),
(18, 'Cocomelon'),
(19, 'Paw Patrol'),
(20, 'Funko');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `precio` decimal(10,2) NOT NULL,
  `destacado` tinyint(1) DEFAULT 0,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `destacado`, `stock`) VALUES
(1, 'Lego City', 'Set de construcción ciudad', 15000.00, 1, 20),
(2, 'Barbie Fashion', 'Muñeca Barbie con accesorios', 8500.00, 1, 15),
(3, 'Hot Wheels Pista', 'Pista de autos con loops', 12000.00, 0, 10),
(4, 'Nerf Blaster', 'Lanzador de dardos de espuma', 9000.00, 1, 25),
(5, 'Puzzle 1000 piezas', 'Rompecabezas paisaje', 6000.00, 0, 30),
(6, 'Osito de Peluche', 'Peluche suave 40cm', 4500.00, 1, 20),
(7, 'Monopoly', 'Juego de mesa clásico', 7000.00, 1, 15),
(8, 'Playmobil Castillo', 'Castillo medieval con figuras', 18000.00, 0, 12),
(9, 'Cocina Infantil', 'Set de cocina de juguete', 11000.00, 1, 10),
(10, 'Balón Infantil', 'Pelota liviana para niños', 3500.00, 0, 40),
(11, 'Microscopio Junior', 'Microscopio educativo', 9500.00, 1, 8),
(12, 'Nintendo Switch', 'Consola de videojuegos', 120000.00, 1, 5),
(13, 'Funko Pop Marvel', 'Figura coleccionable Marvel', 5000.00, 0, 25),
(14, 'Carrito RC', 'Auto a control remoto', 8000.00, 0, 18),
(15, 'Disfraz de Batman', 'Disfraz para niños', 6500.00, 1, 14),
(16, 'Set de Pintura', 'Kit de arte y manualidades', 5500.00, 0, 20),
(17, 'Ajedrez Infantil', 'Juego de ajedrez para principiantes', 4000.00, 0, 22),
(18, 'Robot Programable', 'Robot educativo', 20000.00, 1, 6),
(19, 'Guitarra de Juguete', 'Instrumento musical para niños', 7500.00, 0, 10),
(20, 'Patineta Infantil', 'Skateboard para niños', 9500.00, 1, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `correo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `nickname`, `password`, `correo`) VALUES
(1, 'Juan Pérez', 'juanp', '12345', 'juanp@gmail.com'),
(2, 'Ana López', 'anita', 'abcde', 'ana@gmail.com'),
(3, 'Carlos Díaz', 'carlitox', 'qwerty', 'carlos@gmail.com'),
(4, 'Lucía Torres', 'luci', 'clave123', 'lucia@gmail.com'),
(5, 'Pedro Gómez', 'pedrog', 'admin123', 'pedro@gmail.com'),
(6, 'María Sánchez', 'mary', 'mypass', 'maria@gmail.com'),
(7, 'Roberto Castro', 'roby', 'pass123', 'roberto@gmail.com'),
(8, 'Sofía Herrera', 'sofi', 'sofi123', 'sofia@gmail.com'),
(9, 'Diego Romero', 'diego', 'dieguito', 'diego@gmail.com'),
(10, 'Florencia Silva', 'flor', 'florcita', 'flor@gmail.com'),
(11, 'Martín Fernández', 'martin', 'martin123', 'martin@gmail.com'),
(12, 'Valentina Ruiz', 'valen', 'valen123', 'valen@gmail.com'),
(13, 'Esteban Quiroz', 'esteban', 'passesteban', 'esteban@gmail.com'),
(14, 'Camila Vega', 'camiv', 'cami123', 'camila@gmail.com'),
(15, 'Gonzalo Arias', 'gonza', 'gonzapass', 'gonza@gmail.com'),
(16, 'Micaela López', 'mica', 'mica123', 'mica@gmail.com'),
(17, 'Pablo Navarro', 'pablo', 'pablito', 'pablo@gmail.com'),
(18, 'Julieta Méndez', 'juli', 'julieta', 'julieta@gmail.com'),
(19, 'Santiago León', 'santi', 'santi123', 'santi@gmail.com'),
(20, 'Carolina Morales', 'caro', 'caro123', 'caro@gmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `edades`
--
ALTER TABLE `edades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nickname` (`nickname`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `edades`
--
ALTER TABLE `edades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `marcas`
--
ALTER TABLE `marcas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
