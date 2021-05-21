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
('alejandrojpf@hotmail.com', 9, ''),
('comercial@retoucherie.com.co', 9, ''),
('juanestebanduque@ilisto.co', 10, ''),
('viso16@gmail.com', 10, ''),
('gerenciaoperativa@inpre.com.co', 9, ''),
('jose.mora@databiz.co', 10, 'me gustó mucho la organización, los mentores y el contenido. ');

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
('bogotan@gmail.com', 8, 2, 0, 0),
('suministrosardila@gmail.com', 9, 11, 0, 0),
('milene.jauregui@social-mente.org', 10, 11, 0, 0),
('juan@koggi.co', 5, 8, 17, 17),
('henaoanamia@hotmail.com', 1, 6, 0, 0),
('admin@lilianurse.com', 15, 25, 0, 0),
('nico.concha@dipro.com.co', 22, 22, 0, 0),
('danymonry@gmail.com', 11, 10, 25, 15),
('davidnajera@dnamusic.edu.co', 13, 4, 22, 24),
('gerencia@horeli.com.co', 9, 8, 0, 0),
('contacto@d5lab.com', 1, 13, 0, 0),
('alejandroyacelga@outlook.com', 8, 1, 0, 0),
('contacto@myorangeapp.com', 5, 8, 0, 0),
('erick.olmostrujillo@gmail.com', 10, 9, 0, 0),
('obregonjuanmf@gmail.com', 17, 20, 0, 0),
('info@inmoleatherbags.com', 2, 7, 20, 23),
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
('mary.nunez@endeavor.org.co', 1),
('silvia.florez@endeavor.org.co', 2);


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
('prueba.mentor@endeavor.org.co', 1);

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

-- ('Prueba', 'Mentor', '1129570123', 'prueba.mentor@endeavor.org.co', 4),


INSERT INTO `users` (`Name`, `Last_name`, `id`, `Email`, `Tipo`, `company`, `position`, `website`, `billing`, `description`, `q_first`, `q_second`, `q_third`, `q_fourth`) VALUES
('Manuel', 'Montoya', '', 'manuel.montoya@endeavor.org.co', 1, '', '', '', '', '', '', '', '', ''),
('Prueba', 'Mentor', '', 'prueba.mentor@endeavor.org.co', 4, '', '', '', '', '', '', '', '', ''),
('Mary', 'Nuñez', '', 'mary.nunez@endeavor.org.co', 2, '', '', '', '', '', '', '', '', ''),
('Silvia', 'Florez', '', 'silvia.florez@endeavor.org.co', 2, '', '', '', '', '', '', '', '', ''),
('maria fernanda', 'restrepo montoya', '900932231', 'suministrosardila@gmail.com', 3, 'suministrosardila@gmail.com', 'gerente administrativa y financiera', 'no tenemos actualmente', 'Más de 500 millones', 'somos distribuidores mayoristas ferreteros', 'que pasos debo seguir, debo tercerizar o contratar directamente', 'que pasos debo seguir', 'null', 'null'),
('Milene', 'Jauregui', '63539547', 'milene.jauregui@social-mente.org', 3, 'SocialMente', 'Cofundora', 'www.social-mente.org', 'Todavía no facturo', 'Plataforma de conocimiento colaborativo, empresas comparten conocimiento alineado a necesidades de negocio y contratac, jóvenes se certifican y hacen parte de nube de talentos para el mercado laboral.', '1. Cómo llegar a los cargos más importantes de empresas grandes a través de digital?', 'Cómo generar un plan realmente alcanzable? qué tan ambicioso? Cómo medir?', 'null', 'null'),
('Juan', 'Diaz', '900557218', 'juan@koggi.co', 3, 'Koggi', 'CEO', 'Koggi.co', 'Hasta 70 millones', 'Somos una plataforma con inteligencia artificial que permite facilitar el acceso  a la vivienda simplificando la busqueda, solicitud y aprobación de creditos hipotecarios. ', 'Como acceder a una red de inversionistas en estos momentos?', 'Como son los tipos de levantamiento de capital para una startup?', 'Cómo determinar el cap value de mi compañía?', 'Finanzas & Fundraising: ¿Cómo conocer el valor de mi compañía?'),
('Anamaría', 'Henao', '43157186', 'henaoanamia@hotmail.com', 3, 'Nuba Tecnologia para el campo', 'CEO', 'www.nubatecnologia.co', 'Todavía no facturo', 'Ecosistema digital de información y transacciones que conecta a los transformadores de productos agrícolas con agricultores, permitiendo mejorar la comercialización de estos productos.  ', 'null', 'null', 'null', 'null'),
('Jose', 'Dimate', '80932306', 'admin@lilianurse.com', 3, 'Lilianurse SAS', 'CTO', 'https://www.lilianurse.com/', '151 millones a 200 millones', 'Encuentra una enfermera certificada y calificada por medio de una aplicación móvil.', 'Bootstrapping o mejor buscar financiación siendo una startup?', 'Como contratar ejecutivos que tengan una alto impacto cuando eres una startup?', 'null', 'null'),
('nicolas', 'concha lalinde', '800224447', 'nico.concha@dipro.com.co', 3, 'Diseño Industrial Promocional DIPRO S.A.S', 'Gerente de Desarrollo', 'www.dipro.com.co', 'Más de 500 millones', 'Proveemos productos y servicios estratégicos a compañías basados en el  pensamiento de diseño, diseño centrado en el usuario, tecnología y producción industrial', 'Que oportunidades trae la TD a mi negocio (retail - concepto - diseño - fabricación - ejecución) ', 'como superar la canibalización en el negocio y pasar por encima de las malas practicas del cliente', 'null', 'null'),
('Daniel Gustavo', 'Monroy Cardenas', '1018411526', 'danymonry@gmail.com', 3, 'Ventcar ', 'Director Comercial', 'ventcar.com ', 'Todavía no facturo', 'Marketplace de vehículos en excelentes condiciones (estamos construyendo nuestro sitio) ', 'Como puedo empezar a vender si tan solo tengo un MVP sin tener la versión final.', 'null', 'null', 'Estrategia: ¿Cómo crear una empresa con triple impacto?'),
('David', 'Najera', '900526893-3', 'davidnajera@dnamusic.edu.co', 3, 'DNA Music', 'Director', 'www.dnamusic.edu.co', 'Más de 500 millones', 'Formacion artistica para la proxima generacion que construira la industria naranja en latinoamerica', 'Que estrategias se pueden aplicar para lograr equipos de alto desempeño?', 'Estamos en 4 ciudades y ahora queremos crecer internacionalmente, como empezamos?', 'Como incentivar a las personas a tomar nuestros programas durante esta incertidumbre', 'Talento: ¿Cómo construir la cultura de mi empresa durante el trabajo remoto?'),
('Carlos', 'Hoyos', '901317827-4', 'gerencia@horeli.com.co', 3, 'Horeli SAS', 'Fundador', 'www.comprofacil.com.co', 'Todavía no facturo', 'Somos un marketplace dirigido a fondo de empleados, cajas de compensación, cooperativas (www.comprofacil.com.co). Por otro lado comercializamos productos a travez de redes sociales (horelicommerce)', 'me gustaria saber como puedo tener un botón de pago en mi pagina web www.comprofacil.com.co', 'me gustaría saber como puedo conseguir fondos para mi empresa y poder utilizarnos para crecimiento ', 'null', 'null'),
('José Miguél', 'Cuellar Londoño', '8434620', 'contacto@d5lab.com', 3, 'D5Lab', 'Director de mercadeo', 'null', '71 millones a 150 millones', 'Marketing digital para emprendedores. Ads y desarrollo web. ', 'null', 'null', 'null', 'null'),
('Mario Alejandro', 'Vallejo Yacelga', '1.020.786.380', 'alejandroyacelga@outlook.com', 3, 'Ventcar', 'Founder ', 'www.ventcar.com', 'Todavía no facturo', 'Marketplace automotriz dedicado a vehículos en excelentes condiciones ', 'Los tipos de instrumentos de financiación y los datos más relevantes para levantar capital ', 'Como puedo sacar un mejor provecho de mi data ', 'null', 'null'),
('Andrés Felipe', 'Perea Gálvez', '901300586-1 ', 'contacto@myorangeapp.com', 3, 'OMI', 'Ceo', 'Www.myorangeapp.com ', 'Hasta 70 millones', 'Somos la solución digital para la mayoría de procesos de propiedad horizontal ', 'Como obtiene fundraising una empresa basada en crecimiento de usuarios', 'Como obtiene fundraising una empresa basada en', 'null', 'null'),
('Erick', 'Olmos', '1010163256', 'erick.olmostrujillo@gmail.com', 3, 'MercPlaza', 'CEO', 'https://mercplaza.com/', 'Más de 500 millones', 'Somos una empresa que conecta las plazas de mercado a través de la tecnología con los consumidores finales (Hogares y empresas).', 'null', 'Que herramientas son necesarias para esa transformación?  Que equipo de trabajo es necesario? ', 'null', 'null'),
('Juan', 'Obregon', '3806924', 'obregonjuanmf@gmail.com', 3, 'EN construccion', 'Fundador', 'null', 'Todavía no facturo', 'Estamos creado una startup del ecosistema Insurtech', 'Saber el valor de una empresa en etapas iniciales Pre- Semilla y Semilla, como avaluarla', 'null', 'null', 'null'),
('Nicolás', 'Varón', '901191005-3', 'info@inmoleatherbags.com', 3, 'INMO', 'Fundador director general', 'www.inmoleatherbags.com', '201 millones a 250 millones', 'En INMO nos enfocamos en ayudar a las personas a mejorar su desempeño mediante orden diseño y tecnología. ', '¿Cómo aumentar el impacto sin perder foco?', '¿Qué alternativas de financiación a bancos existen?', '¿Además de FB Ads, qué otras herramientas de ventas se pueden utilizar para vender online?', 'Ventas: Compensación a mi fuerza comercial'),
('Mia', 'Perdomo', 'NIT 900794234-8', 'mia@aequales.com', 3, 'Aequales', 'CEO', 'www.aequales.com', 'Más de 500 millones', 'Empresa multilatina que provee herramientas para el cierre de brechas de género en las organizaciones a través de consultoría, medición y tecnología.', 'null', 'null', 'null', 'null'),
('Mario Fernando', 'García Acosta', '901329963', 'labgella@gmail.com', 3, 'GELLA SUSTENTABLE SAS', 'Gerente', 'www.labgella.com', 'Más de 500 millones', 'Nos dedicamos al desarrollo de productos para el cuidado facial de alto valor agregado, desarrollo de tecnologias en manufactura de productos de cuidado facial.', 'null', 'null', 'null', 'null');
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
  ADD KEY `third_session` (`third_session`);

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
  ADD CONSTRAINT `third_session` FOREIGN KEY (`third_session`) REFERENCES `sessions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
