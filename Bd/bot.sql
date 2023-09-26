-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-07-2023 a las 23:39:49
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bot`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chatbot_respuestas`
--

CREATE TABLE `chatbot_respuestas` (
  `id` int(11) NOT NULL,
  `palabra_clave` varchar(255) NOT NULL,
  `respuesta` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `chatbot_respuestas`
--

INSERT INTO `chatbot_respuestas` (`id`, `palabra_clave`, `respuesta`) VALUES
(57, 'inicio sesión', 'Si ya tienes una cuenta, inicia sesión con tu correo electrónico y contraseña.'),
(58, 'catálogo', 'Puedes ver nuestro catálogo completo en el siguiente enlace: https://www.maderable.com/catalogo'),
(59, 'proveedores', 'Actualmente trabajamos con proveedores nacionales e internacionales.'),
(60, 'compras', 'Nuestro proceso de compra es fácil y seguro. Puedes realizar tus pedidos a través de nuestro sitio web.'),
(61, 'devoluciones', 'Para solicitar una devolución, comunica tu solicitud a nuestro equipo de atención al cliente.'),
(62, 'consultas', 'Estoy aquí para responder todas tus consultas y brindarte la mejor atención.'),
(63, 'enviar', 'Hemos recibido tu mensaje. Nuestro equipo de atención al cliente se pondrá en contacto contigo lo antes posible.'),
(64, 'cambios', 'Si deseas realizar un cambio en tu pedido, comunica tu solicitud a nuestro equipo de atención al cliente.'),
(65, 'consulta pedido', 'Para consultar el estado de tu pedido, ingresa a tu cuenta en nuestro sitio web.'),
(66, 'garantía', 'Todos nuestros productos cuentan con garantía. Si tienes algún problema, contáctanos.'),
(67, 'hermoso', 'porque es un bobo hpta🙈');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `chatbot_respuestas`
--
ALTER TABLE `chatbot_respuestas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `chatbot_respuestas`
--
ALTER TABLE `chatbot_respuestas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
