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
-- Base de datos: `endeavor_mentors_live`
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
('manuel.montoya@endeavor.org.co', 10, '');

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
('mia@aequales.com', 17, 24, 0, 0),
('labgella@gmail.com', 21, 14, 0, 0);

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
(0, '0', '0', '0', '0'),
(1, 'Estrategia', '¿Cómo monetizar mi data?', 'https://link1', 'pass1'),
(2, 'Estrategia', '¿Cómo crear una empresa con triple impacto?', 'https://link2', 'pass2'),
(3, 'Estrategia', '¿Cómo mejorar o mantener la experiencia de nuestros clientes B2B por medio de la virtualidad?', 'https://link3', 'pass3'),
(4, 'Estrategia', '¿Cómo identificar a qué ciudades expandirme?', 'https://link4', 'pass4'),
(5, 'Finanzas & Fundraising', 'Fundraising en la era virtual', 'https://link5', 'pass5'),
(6, 'Finanzas & Fundraising', 'Alternativas fintech para startups', 'https://link6', 'pass6'),
(7, 'Finanzas & Fundraising', 'Errores más comunes al abordar entidades financieras', 'https://link7', 'pass7'),
(8, 'Finanzas & Fundraising', 'Instrumentos de financiación', 'https://link8', 'pass8'),
(9, 'Transformación digital', '¿Cómo abordar la transformación digital de mi empresa?', 'https://link9', 'pass9'),
(10, 'Ventas', 'Herramientas para potenciar mis ventas online B2C', 'https://link10', 'pass10'),
(11, 'Ventas', '¿Cómo iniciar mi gestión de ventas?', 'https://link11', 'pass11'),
(12, 'Talento', '¿Cómo construir la cultura de mi empresa durante el trabajo remoto?', 'https://link12', 'pass12'),
(13, 'Talento', '¿Cómo crear un equipo de alto desempeño?', 'https://link13', 'pass13'),
(14, 'Talento', 'Habilidades invisibles para emprender', 'https://link14', 'pass14'),
(15, 'Estrategia', '¿Cómo identificar áreas de innovación?', 'https://link15', 'pass15'),
(16, 'Estrategia', 'Métricas de salud de negocio', 'https://link16', 'pass16'),
(17, 'Estrategia', '¿Cómo lograr una cultura de innovación en mi compañía?', 'https://link17', 'pass17'),
(18, 'Estrategia', '¿Cómo monetizar mi data?', 'https://link18', 'pass18'),
(19, 'Estrategia', '¿Cómo crear una empresa con triple impacto?', 'https://link19', 'pass19'),
(20, 'Estrategia', '¿Cómo mejorar o mantener la experiencia de nuestros clientes B2C por medio de la virtualidad?', 'https://link20', 'pass20'),
(21, 'Finanzas & Fundraising', '¿Cómo conocer el valor de mi compañía?', 'https://link21', 'pass21'),
(22, 'Finanzas & Fundraising', '¿Cómo mantener mis finanzas ordenadas desde el día 1?', 'https://link22', 'pass22'),
(23, 'Transformación digital', '¿Cómo abordar la transformación digital de mi empresa?', 'https://link23', 'pass23'),
(24, 'Ventas', 'Herramientas para potenciar mis ventas online B2C', 'https://link24', 'pass24'),
(25, 'Ventas', 'Herramientas para potenciar mis ventas online B2B', 'https://link25', 'pass25'),
(26, 'Ventas', '¿Cómo crecer mis ventas en tiempos de incertidumbre?', 'https://link26', 'pass26'),
(27, 'Ventas', 'Compensación a mi fuerza comercial', 'https://link27', 'pass27'),
(28, 'Talento', '¿Cómo construir la cultura de mi empresa durante el trabajo remoto?', 'https://link28', 'pass28'),
(29, 'Talento', '¿Cómo crear un equipo de alto desempeño?', 'https://link29', 'pass29');
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
('nicolas.toro.am', 1),
('nicolas.toro.pm', 21),
('ana.rocha.am', 2),
('ana.rocha.pm', 19),
('juliana.covezdy.pm', 17),
('mary.nunez.am', 4),
('mary.nunez.pm', 20),
('felipe.comi.am', 5),
('felipe.comi.pm', 18),
('silvia.florez.am', 6),
('maria.uribe.am', 7),
('maria.uribe.pm', 27),
('vanessa.guerrero.am', 8),
('pablo.camacho.am', 9),
('pablo.camacho.pm', 24),
('susana.restrepo.am', 10),
('susana.restrepo.am', 23),
('mariana.pineres.am', 11),
('mariana.pineres.pm', 25),
('alejandra.gonzalez.am', 12),
('alejandra.gonzalez.pm', 22),
('hernando.trinidad.am', 13),
('hernando.trinidad.pm', 29),
('erika.vergara.am', 14),
('erika.vergara.pm', 16),
('pasanteproyectos.pm', 15),
('sebastian.lozano.pm', 28);




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
('jtrujillo@merqueo.com', 1),
('camilo@sistemab.org', 2),
('elizabeth@sistemab.org', 19),
('juan.gualteros@miaguila.com', 3),
('gaspar@nazca.vc', 5),
('adolfo@nazca.vc', 5),
('presidencia@colombiafintech.co', 6),
('ev@sempli.co', 7),
('pbarrientos@inqlab.co', 8),
('dgarzon@azuriantransforma.com', 9),
('lmontesa@google.com', 10),
('vicente.quintero@bodytechcorp.com', 11),
('j.oseguera@platzi.com', 12),
('jorgesoto@alegra.com', 13),
('bclancy@linkedin.com', 14),
('rmarino@matrixconsulting.com', 15),
('mariano.amartino@microsoft.com', 16),
('renatonobre@google.com', 17),
('carpatino@lulobank.com', 18),
('paularincon@thinkandtalk.co', 20),
('fll@sempli.co', 21),
('knudsen@ziriux.co', 22),
('eduardo.nader@mercadolibre.com.co', 23),
('dcristian.rodriguez@mercadolibre.com.co', 23),
('juan.riveroll@mercadolibre.com.co', 23),
('ext_carduart@mercadolibre.com.co', 23),
('jmora@atlantiasearch.com', 24),
('mvelazquez@atlantiasearch.com', 24),
('dnikitina@atlantiasearch.com', 24),
('jair.cuervo@sap.com', 25),
('rikardo.parra@gmail.com', 27),
('paola.santos@sap.com', 28),
('adriana.morales@sap.com', 28),
('santiago.villegas@alegra.com', 29);

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
('Prueba', 'Admin', '', 'prueba.admin@endeavor.org.co', 1, '', '', '', '', '', '', '', '', ''),
('Manuel', 'Montoya', '', 'manuel.montoya@endeavor.org.co', 1, '', '', '', '', '', '', '', '', ''),
('Juan Diego', 'Pulido', '', 'juan.pulido@endeavor.org.co', 1, '', '', '', '', '', '', '', '', ''),
('Julian', 'Castro', '', 'julian.castro@endeavor.org.co', 1, '', '', '', '', '', '', '', '', ''),
('Valentina', 'Pachón', '', 'valentina.pachon@endeavor.org.co', 1, '', '', '', '', '', '', '', '', ''),
('Carolina', 'Salazar', '', 'carolina.salazar@endeavor.org.co', 1, '', '', '', '', '', '', '', '', ''),
('Camila', 'Morales', '', 'camila.morales@endeavor.org.co', 1, '', '', '', '', '', '', '', '', ''),
('Ximena', 'Velasquez', '', 'info@endeavor.org.co', 1, '', '', '', '', '', '', '', '', ''),
('Juan Sebastián', 'Barrero', '', 'sebastian.barrero@endeavor.org.co', 1, '', '', '', '', '', '', '', '', ''),
('Lina', 'Gomez', '', 'lina.gomez@endeavor.org.co', 1, '', '', '', '', '', '', '', '', ''),
('Camila', 'Salamanca', '', 'camila.salamanca@endeavor.org.co', 1, '', '', '', '', '', '', '', '', ''),
('Esteban ', 'Mora', '', 'pasantemedellin@endeavor.org.co', 1, '', '', '', '', '', '', '', '', ''),
('Francisco', 'Martinez', '', 'pasante.od@endeavor.org.co', 1, '', '', '', '', '', '', '', '', ''),
('Juan Jose', 'De la RosaA', '', 'pasantecaribe@endeavor.org.co', 1, '', '', '', '', '', '', '', '', ''),
('Alejandra', 'Martinez', '', 'eventos@endeavor.org.co', 1, '', '', '', '', '', '', '', '', ''),
('Ana Maria', 'Currea', '', 'diseno.endeavor@gmail.com', 1, '', '', '', '', '', '', '', '', ''),
('Nicolas', 'Nieto', '', 'audiovisual@endeavor.org.co', 1, '', '', '', '', '', '', '', '', ''),
('Stefany', 'Jaramillo', '', 'stefany.jaramillo@endeavor.org.co', 1, '', '', '', '', '', '', '', '', ''),
('Ana María', 'Sierra', '', 'ana.sierra@endevor.org.co', 1, '', '', '', '', '', '', '', '', ''),
('Johanna', 'Martínez', '', 'jmartinez@cámarabaq.org.co', 1, '', '', '', '', '', '', '', '', ''),
('Kandya', 'Obezo', '', 'kobezo@cccartagena.org.co', 1, '', '', '', '', '', '', '', '', ''),
('Yina', 'Perazzo', '', 'yperazzo@cccartagena.org.co', 1, '', '', '', '', '', '', '', '', ''),
('Maria Camila', 'Morales', '', 'mariacamilam02@gmail.com', 1, '', '', '', '', '', '', '', '', ''),
('Camila', 'Mancera', '', 'andimancerar@gmail.com', 1, '', '', '', '', '', '', '', '', ''),
('Daniel', 'Ospina', '', 'daniel.ospina@endeavor.org.co', 1, '', '', '', '', '', '', '', '', ''),
('Diana ', 'Osorio', '', 'diana.osorio@sap.com', 1, '', '', '', '', '', '', '', '', ''),
('Maria', 'Quevedo', '', 'maria.quevedo@sap.com', 1, '', '', '', '', '', '', '', '', ''),
('', '', '', 'nicolas.toro.am', 2, '', '', '', '', '', '', '', '', ''),
('', '', '', 'nicolas.toro.pm', 2, '', '', '', '', '', '', '', '', ''),
('', '', '', 'ana.rocha.am', 2, '', '', '', '', '', '', '', '', ''),
('', '', '', 'ana.rocha.pm', 2, '', '', '', '', '', '', '', '', ''),
('', '', '', 'juliana.covezdy.pm', 2, '', '', '', '', '', '', '', '', ''),
('', '', '', 'mary.nunez.am', 2, '', '', '', '', '', '', '', '', ''),
('', '', '', 'mary.nunez.pm', 2, '', '', '', '', '', '', '', '', ''),
('', '', '', 'felipe.comi.am', 2, '', '', '', '', '', '', '', '', ''),
('', '', '', 'felipe.comi.pm', 2, '', '', '', '', '', '', '', '', ''),
('', '', '', 'silvia.florez.am', 2, '', '', '', '', '', '', '', '', ''),
('', '', '', 'maria.uribe.am', 2, '', '', '', '', '', '', '', '', ''),
('', '', '', 'maria.uribe.pm', 2, '', '', '', '', '', '', '', '', ''),
('', '', '', 'vanessa.guerrero.am', 2, '', '', '', '', '', '', '', '', ''),
('', '', '', 'pablo.camacho.am', 2, '', '', '', '', '', '', '', '', ''),
('', '', '', 'pablo.camacho.pm', 2, '', '', '', '', '', '', '', '', ''),
('', '', '', 'susana.restrepo.am', 2, '', '', '', '', '', '', '', '', ''),
('', '', '', 'susana.restrepo.am', 2, '', '', '', '', '', '', '', '', ''),
('', '', '', 'mariana.pineres.am', 2, '', '', '', '', '', '', '', '', ''),
('', '', '', 'mariana.pineres.pm', 2, '', '', '', '', '', '', '', '', ''),
('', '', '', 'alejandra.gonzalez.am', 2, '', '', '', '', '', '', '', '', ''),
('', '', '', 'alejandra.gonzalez.pm', 2, '', '', '', '', '', '', '', '', ''),
('', '', '', 'hernando.trinidad.am', 2, '', '', '', '', '', '', '', '', ''),
('', '', '', 'hernando.trinidad.pm', 2, '', '', '', '', '', '', '', '', ''),
('', '', '', 'erika.vergara.am', 2, '', '', '', '', '', '', '', '', ''),
('', '', '', 'erika.vergara.pm', 2, '', '', '', '', '', '', '', '', ''),
('', '', '', 'pasanteproyectos.pm', 2, '', '', '', '', '', '', '', '', ''),
('', '', '', 'sebastian.lozano.pm', 2, '', '', '', '', '', '', '', '', ''),
('', '', '', 'jtrujillo@merqueo.com', 4, '', '', '', '', '', '', '', '', ''),
('', '', '', 'camilo@sistemab.org', 4, '', '', '', '', '', '', '', '', ''),
('', '', '', 'elizabeth@sistemab.org', 4, '', '', '', '', '', '', '', '', ''),
('', '', '', 'juan.gualteros@miaguila.com', 4, '', '', '', '', '', '', '', '', ''),
('', '', '', 'gaspar@nazca.vc', 4, '', '', '', '', '', '', '', '', ''),
('', '', '', 'adolfo@nazca.vc', 4, '', '', '', '', '', '', '', '', ''),
('', '', '', 'presidencia@colombiafintech.co', 4, '', '', '', '', '', '', '', '', ''),
('', '', '', 'ev@sempli.co', 4, '', '', '', '', '', '', '', '', ''),
('', '', '', 'pbarrientos@inqlab.co', 4, '', '', '', '', '', '', '', '', ''),
('', '', '', 'dgarzon@azuriantransforma.com', 4, '', '', '', '', '', '', '', '', ''),
('', '', '', 'lmontesa@google.com', 4, '', '', '', '', '', '', '', '', ''),
('', '', '', 'vicente.quintero@bodytechcorp.com', 4, '', '', '', '', '', '', '', '', ''),
('', '', '', 'j.oseguera@platzi.com', 4, '', '', '', '', '', '', '', '', ''),
('', '', '', 'jorgesoto@alegra.com', 4, '', '', '', '', '', '', '', '', ''),
('', '', '', 'bclancy@linkedin.com', 4, '', '', '', '', '', '', '', '', ''),
('', '', '', 'rmarino@matrixconsulting.com', 4, '', '', '', '', '', '', '', '', ''),
('', '', '', 'mariano.amartino@microsoft.com', 4, '', '', '', '', '', '', '', '', ''),
('', '', '', 'renatonobre@google.com', 4, '', '', '', '', '', '', '', '', ''),
('', '', '', 'carpatino@lulobank.com', 4, '', '', '', '', '', '', '', '', ''),
('', '', '', 'paularincon@thinkandtalk.co', 4, '', '', '', '', '', '', '', '', ''),
('', '', '', 'fll@sempli.co', 4, '', '', '', '', '', '', '', '', ''),
('', '', '', 'knudsen@ziriux.co', 4, '', '', '', '', '', '', '', '', ''),
('', '', '', 'eduardo.nader@mercadolibre.com.co', 4, '', '', '', '', '', '', '', '', ''),
('', '', '', 'dcristian.rodriguez@mercadolibre.com.co', 4, '', '', '', '', '', '', '', '', ''),
('', '', '', 'juan.riveroll@mercadolibre.com.co', 4, '', '', '', '', '', '', '', '', ''),
('', '', '', 'ext_carduart@mercadolibre.com.co', 4, '', '', '', '', '', '', '', '', ''),
('', '', '', 'jmora@atlantiasearch.com', 4, '', '', '', '', '', '', '', '', ''),
('', '', '', 'mvelazquez@atlantiasearch.com', 4, '', '', '', '', '', '', '', '', ''),
('', '', '', 'dnikitina@atlantiasearch.com', 4, '', '', '', '', '', '', '', '', ''),
('', '', '', 'jair.cuervo@sap.com', 4, '', '', '', '', '', '', '', '', ''),
('', '', '', 'rikardo.parra@gmail.com', 4, '', '', '', '', '', '', '', '', ''),
('', '', '', 'paola.santos@sap.com', 4, '', '', '', '', '', '', '', '', ''),
('', '', '', 'adriana.morales@sap.com', 4, '', '', '', '', '', '', '', '', ''),
('', '', '', 'santiago.villegas@alegra.com', 4, '', '', '', '', '', '', '', '', '');
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
