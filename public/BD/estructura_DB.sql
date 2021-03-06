-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: mentors-db-instance.c9esrffqfktp.us-east-1.rds.amazonaws.com:3306
-- Tiempo de generación: 27-05-2020 a las 19:35:49
-- Versión del servidor: 5.7.22-log
-- Versión de PHP: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mentors_live`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nps`
--

CREATE TABLE IF NOT EXISTS `nps` (
  `email` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `score` tinyint(2) NOT NULL,
  `opinion` varchar(1000) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `nps`
--

INSERT INTO `nps` (`email`, `score`, `opinion`) VALUES
('attendee@attendee.com', 10, 'Comentarios del evento');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `records`
--

CREATE TABLE IF NOT EXISTS `records` (
  `email` varchar(50) NOT NULL,
  `first_session` tinyint(4) NOT NULL,
  `second_session` tinyint(4) NOT NULL,
  `third_session` tinyint(4) NOT NULL,
  `fourth_session` tinyint(4) NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `records`
--

INSERT INTO `records` (`email`, `first_session`, `second_session`, `third_session`, `fourth_session`) VALUES
('attendee@attendee.com', 1, 2, 3, 'null');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `id` tinyint(3) NOT NULL,
  `area` varchar(30) NOT NULL,
  `name` varchar(140) NOT NULL,
  `link` varchar(140) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `area`, `name`, `link`, `password`) VALUES
(1, '0', '0', '0', '0'),
(2, '0', '0', '0', '0'),
(3, '0', '0', '0', '0'),
(4, '0', '0', '0', '0');
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `staff_meeting`
--

CREATE TABLE IF NOT EXISTS `staff_meeting` (
  `email` varchar(50) NOT NULL,
  `id_session` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `staff_meeting`
--

INSERT INTO `staff_meeting` (`email`, `id_session`) VALUES
('staff@staff.com', 1);




-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mentors_meeting`
--

CREATE TABLE IF NOT EXISTS `mentors_meeting` (
  `email` varchar(50) NOT NULL,
  `session` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `staff_meeting`
--

INSERT INTO `mentors_meeting` (`email`, `session`) VALUES
('mentor@mentor.com', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `Name` varchar(50) NOT NULL,
  `Last_name` varchar(50) NOT NULL,
  `id` varchar(15) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Tipo` tinyint(20) NOT NULL,
  `company`varchar(50) NOT NULL,
  `position` varchar(50) NOT NULL,
  `website` varchar(50) NOT NULL,
  `billing` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `q_first` varchar(500) NOT NULL,
  `q_second` varchar(500) NOT NULL,
  `q_third` varchar(500) NOT NULL,
  `q_fourth` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--


INSERT INTO `users` (`Name`, `Last_name`, `id`, `Email`, `Tipo`, `company`, `position`, `website`, `billing`, `description`, `q_first`, `q_second`, `q_third`, `q_fourth`) VALUES
('Prueba', 'Admin', '', 'prueba.admin@prueba.com', 1, '', '', '', '', '', '', '', '', '');
('Prueba', 'Mentor', '', 'mentor@mentor.com', 4, '', '', '', '', '', '', '', '', '');
('Prueba', 'Attendee', '', 'attendee@attendee.com', 3, '', '', '', '', '', '', '', '', '');
('Prueba', 'Staff', '', 'staff@staff.com', 2, '', '', '', '', '', '', '', '', '');


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_type`
--

CREATE TABLE IF NOT EXISTS `user_type` (
  `Id` tinyint(4) NOT NULL,
  `Name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `user_type`
--

INSERT INTO `user_type` (`Id`, `Name`) VALUES
(1, 'Admin'),
(2, 'Staff'),
(3, 'Attendee'),
(4, 'Mentor'),
(5, 'Ally');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `nps`
--
ALTER TABLE `nps`
  ADD KEY `emai_nps` (`email`);

--
-- Indices de la tabla `records`
--
ALTER TABLE `records`
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `email_record` (`email`),
  ADD KEY `first_session` (`first_session`),
  ADD KEY `second_session` (`second_session`),
  ADD KEY `third_session` (`third_session`),
  ADD KEY `fourth_session` (`fourth_session`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `staff_meeting`
--
ALTER TABLE `staff_meeting`
  ADD KEY `email_staff` (`email`),
  ADD KEY `session_staff` (`id_session`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Email`),
  ADD KEY `user_type` (`Tipo`);

--
-- Indices de la tabla `user_type`
--
ALTER TABLE `user_type`
  ADD PRIMARY KEY (`Id`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `nps`
--
ALTER TABLE `nps`
  ADD CONSTRAINT `emai_nps` FOREIGN KEY (`email`) REFERENCES `users` (`Email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `records`
--
ALTER TABLE `records`
  ADD CONSTRAINT `email_record` FOREIGN KEY (`email`) REFERENCES `users` (`Email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `first_session` FOREIGN KEY (`first_session`) REFERENCES `sessions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `second_session` FOREIGN KEY (`second_session`) REFERENCES `sessions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `third_session` FOREIGN KEY (`third_session`) REFERENCES `sessions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fourth_session` FOREIGN KEY (`fourth_session`) REFERENCES `sessions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `staff_meeting`
--
ALTER TABLE `staff_meeting`
  ADD CONSTRAINT `email_staff` FOREIGN KEY (`email`) REFERENCES `users` (`Email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `session_staff` FOREIGN KEY (`id_session`) REFERENCES `sessions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `user_type` FOREIGN KEY (`Tipo`) REFERENCES `user_type` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
