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
('bogotan@gmail.com', 8, 2, 'null', 'null'),
('suministrosardila@gmail.com', 9, 11, 'null', 'null'),
('milene.jauregui@social-mente.org', 10, 11, 'null', 'null'),
('juan@koggi.co', 5, 8, 21, 21),
('henaoanamia@hotmail.com', 1, 6, 'null', 'null'),
('admin@lilianurse.com', 'null', 'null', 19, 29),
('danymonry@gmail.com', 11, 10, 29, 19),
('gerencia@horeli.com.co', 9, 8, 'null', 'null'),
('contacto@d5lab.com', 1, 13, 'null', 'null'),
('alejandroyacelga@outlook.com', 8, 1, 'null', 'null'),
('contacto@myorangeapp.com', 5, 8, 'null', 'null'),
('erick.olmostrujillo@gmail.com', 10, 9, 'null', 'null'),
('obregonjuanmf@gmail.com', 'null', 'null', 21, 24),
('info@inmoleatherbags.com', 2, 7, 24, 27),
('mia@aequales.com', 'null', 'null', 21, 28),
('labgella@gmail.com', 'null', 'null', 25, 18),
('fernando@wasi.co', 1, 3, 22, 26),
('rodrigo.castrillon@intelnova.co', 13, 6, 'null', 'null'),
('emilianodellcarmine@gmail.com', 1, 8, 'null', 'null'),
('nicolasmauricio@gmail.com', 2, 9, 25, 28),
('inge.jlondono@gmail.com', 'null', 'null', 28, 29),
('jmejia@grupologis.co', 'null', 'null', 26, 27),
('gerencia@tenken.com.co', 8, 5, 'null', 'null'),
('jopavisos@gmail.com', 2, 13, 'null', 'null'),
('mc.artetag@gmail.com', 'null', 'null', 22, 24),
('sebastian.uribe@jysindustrial.com', 'null', 'null', 25, 21),
('jrodriguez@instacrops.com', 1, 11, 29, 28),
('rmorales@certika.co', 'null', 'null', 21, 25),
('andcastillo999@hotmail.com', 5, 7, 29, 27),
('marion@snappypet.com.co', 10, 5, 'null', 'null'),
('andres@panainvest.com', 6, 7, 'null', 'null'),
('carolina.hoyos@evertecinc.com', 'null', 'null', 29, 23),
('danielkmilo87@gmail.com', 4, 13, 24, 27),
('santiagojaviergc@hotmail.com', 11, 6, 'null', 'null'),
('camilo@peewah.co', 'null', 'null', 21, 25),
('jhoanandres@gmail.com', 2, 10, 29, 21),
('cvelez@mappex.com.co', 'null', 'null', 29, 25),
('luisbernalb@lya-electronic.com', 10, 8, 'null', 'null'),
('eortegadelrio@agenciapopuli.com', 4, 13, 27, 28),
('dircomercial@maderformas.net', 13, 3, 'null', 'null'),
('mateofh@gmail.com', 1, 5, 'null', 'null'),
('comercial@ubiquom.com', 'null', 'null', 27, 26),
('jenifer.cardenas@ubiquom.com', 12, 10, 'null', 'null'),
('gerencia@bioquigen.com', 'null', 'null', 26, 29),
('dlondono@ubiquom.com', 'null', 'null', 26, 25),
('marut@marutstudio.com', 13, 4, 22, 26),
('jorgearmandosanjuan@gmail.com', 1, 12, 'null', 'null'),
('cgutierrez@changeamericas.com', 2, 10, 'null', 'null'),
('rmr@ruah60mas.co', 'null', 'null', 27, 19),
('carosanta13@hotmail.com', 'null', 'null', 20, 24),
('yessikartunduaga@gmail.com', 'null', 'null', 26, 19),
('leonardo.suarez@clouxter.com', 'null', 'null', 29, 28),
('davidnajera@dnamusic.edu.co', 13, 4, 28, 26),
('edwin.medina@expertech.com.co', 'null', 'null', 27, 29),
('mclavijo@extreme.com.co', 11, 4, 25, 26),
('alfredovegasaltaren@gmail.com', 4, 1, 25, 27),
('eycphp@gmail.com', 'null', 'null', 16, 15),
('camilo.orozco@viliv.com.co', 'null', 'null', 17, 16),
('luchovivesg@hotmail.com', 11, 10, 20, 25),
('ivanecheverrigomez@gmail.com', 5, 6, 16, 17),
('coordinadorventas@agrofacil.co', 13, 3, 'null', 'null'),
('jisaza@fisapay.com', 2, 10, 'null', 'null'),
('paolobejarano@hotmail.com', 12, 14, 25, 29),
('davidacla@me.com', 9, 11, 21, 29),
('antonio.gonzalez@stackpointer.co', 11, 1, 'null', 'null'),
('atabord3@gmail.com', 2, 11, 'null', 'null'),
('jazmin_gonzalez@itis.com.co', 13, 11, 'null', 'null'),
('victoria.alvaradou@gmail.com', 14, 11, 24, 22),
('luis@incapacidades.co', 'null', 'null', 28, 19),
('acaicedo@chemicalpharma.net', 8, 4, 'null', 'null'),
('trademarketing@naissant.com.co', 12, 1, 'null', 'null'),
('gerencia@itranslate.com.co', 'null', 'null', 28, 25),
('angela@escarola.co', 'null', 'null', 23, 18),
('nico.concha@dipro.com.co', 'null', 'null', 26, 23),
('paula.perotti@valorable.com', 'null', 'null', 24, 19),
('info@waimari.com', 12, 13, 'null', 'null'),
('juan@ecoregistry.io', 'null', 'null', 28, 27),
('dircomercial@gmail.com', 'null', 'null', 24, 15),
('mejiafabio@coltrade.com.co', 2, 13, 'null', 'null'),
('barpaez.96.ap@gmail.com', 'null', 'null', 18, 19),
('roxanna@vendty.com', 'null', 'null', 18, 21),
('ajoya1@babson.edu', 11, 10, 22, 18),
('roomindeco@gmail.com', 10, 9, 'null', 'null'),
('administracion@whitmanstore.com', 'null', 'null', 27, 17),
('operaciones@whitmanstore.com', 'null', 'null', 23, 17),
('hola@somosfilipa.shop', 'null', 'null', 24, 15),
('synergy@fp.skandia.com.co', 'null', 'null', 18, 23),
('camilamontano84@gmail.com', 'null', 'null', 18, 24),
('juliochaparro8706@gmail.com', 6, 9, 'null', 'null'),
('davidmartinez560@gmail.com', 9, 6, 'null', 'null'),
('arnulfo@vendty.com', 12, 2, 'null', 'null'),
('luquecarteras@gmail.com', 'null', 'null', 24, 20),
('javier@acontar.co', 'null', 'null', 16, 24),
('luiscarlosgroup@gmail.com', 7, 1, 'null', 'null'),
('gerencia@btobnegocios.com', 6, 2, 'null', 'null'),
('ing.gracecarrillo@gmail.com', 14, 2, 'null', 'null'),
('diiego.artunduaga@gmail.com', 9, 2, 'null', 'null'),
('pipeparra12@hotmail.com', 4, 2, 'null', 'null'),
('martinfonsecaco@agybo.com', 11, 14, 'null', 'null'),
('terradulcechocolates@gmail.com', 4, 9, 20, 15),
('anam.velasquez@tocaunavida.org', 14, 5, 'null', 'null'),
('gerencia@spectra.com.co', 11, 12, 18, 19),
('jeansatefano@gmail.com', 14, 2, 22, 24),
('laboxlaser@gmail.com', 'null', 'null', 20, 24),
('fernando.jinete@gmail.com', 8, 7, 'null', 'null'),
('jose@clonkapp.com', 7, 12, 18, 16),
('angela@clokapp.com', 6, 4, 15, 22),
('servicioalcliente@lilianurse.com', 4, 7, 'null', 'null'),
('nmercado@tolist.co', 'null', 'null', 19, 15),
('gerencia@tecneo.co', 'null', 'null', 22, 20),
('wamccb@gmail.com', 5, 14, 'null', 'null'),
('gerencia@gevain.com', 5, 14, 15, 16),
('aguzmanl@ingenierosunoa.com.co', 5, 9, 15, 18),
('angelica@komercia.co', 'null', 'null', 19, 22),
('gerencia@neco-power.com', 7, 5, 'null', 'null'),
('mb@bsmart.com.co', 5, 7, 'null', 'null'),
('comercial@dejorwoods.com', 'null', 'null', 23, 18),
('comercial@raspow.com', 'null', 'null', 21, 22),
('rodrigo@appalanca.com', 6, 14, 23, 20),
('juan@mimegafono.com', 6, 12, 'null', 'null'),
('info@theboxxx.co', 'null', 'null', 16, 20),
('santiago@sioma.app', 6, 12, 'null', 'null'),
('maraujo@agenciapopuli.com', 'null', 'null', 15, 20),
('daniel23paredes@hotmail.com', 'null', 'null', 23, 22),
('dcastres@uninorte.edu.co', 'null', 'null', 23, 22),
('gerencia@pngweb.co', 6, 12, 15, 20),
('hun_asistdireccion@uninorte.edu.co', 'null', 'null', 23, 22),
('myrnameyer@gmail.com', 6, 14, 16, 23),
('info@appalanca.com', 7, 6, 15, 20),
('lauhperdomo@gmail.com', 'null', 'null', 17, 23),
('info@ctechnologies.co', 9, 2, 'null', 'null'),
('marceloconto1@gmail.com', 4, 14, 20, 18),
('santiagom@talentu.co', 6, 12, 16, 20),
('gerencia@mesolutions.co', 14, 1, 19, 21);

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
(1, 'Estrategia', '¿Cómo monetizar mi data?', 'https://zoom.us/j/92505815951?pwd=OFhnSXd4NDVmWG00WU14YkE5Qk5LQT09', '218440'),
(2, 'Estrategia', '¿Cómo crear una empresa con triple impacto?', 'https://zoom.us/j/95494570215?pwd=a296K3A4YkVqRzdkOFg0ZkQyZWFJdz09', '198394'),
(3, 'Cerrada', 'Cerrada', 'https://link3', 'pass3'),
(4, 'Estrategia', '¿Cómo identificar a qué ciudades expandirme?', 'https://zoom.us/j/91656521180?pwd=NjJLaVQ4dXBuU0JnZ044WDVVQzIzZz09', '265429'),
(5, 'Finanzas & Fundraising', 'Fundraising en la era virtual', 'https://zoom.us/j/92413038427?pwd=bGNFcFdQYVFVWVY0MC9JcGgvcG1BZz09', '261691'),
(6, 'Finanzas & Fundraising', 'Alternativas fintech para startups', 'https://zoom.us/j/94337215333?pwd=RWNIV0FoNFFKcEx0WkkxL2Y4UjQxZz09', '579520'),
(7, 'Finanzas & Fundraising', 'Errores más comunes al abordar entidades financieras', 'https://zoom.us/j/99496977956?pwd=eCsrN1JaTXlITjR3eVFqbGVJVHN3dz09', '223872'),
(8, 'Finanzas & Fundraising', 'Instrumentos de financiación', 'https://zoom.us/j/98382411525?pwd=VXBUQSt5YmlKK3RIZjVLR3hyemlBdz09', '865546'),
(9, 'Transformación digital', '¿Cómo abordar la transformación digital de mi empresa?', 'https://zoom.us/j/91099918854?pwd=VXBIMXFUZ1ExaEM3WG55Mk8vaG13dz09', '455577'),
(10, 'Ventas', 'Herramientas para potenciar mis ventas online B2C', 'https://zoom.us/j/97497809599?pwd=U1VKUE5pRStacDU1SURFR1JweklYQT09', '557917'),
(11, 'Ventas', '¿Cómo iniciar mi gestión de ventas?', 'https://zoom.us/j/99387283032?pwd=K0o1amF2VkdVaURoVFcraU1pRVVOQT09', '400952'),
(12, 'Talento', '¿Cómo construir la cultura de mi empresa durante el trabajo remoto?', 'https://zoom.us/j/92382172801?pwd=b1JqdmxFSzcxblcxc01lZGU3NjFEUT09', '467773'),
(13, 'Talento', '¿Cómo crear un equipo de alto desempeño?', 'https://zoom.us/j/94123297888?pwd=RTNCTFQ1NHFPQ3RaeW95eWdEN0RuUT09', '936316'),
(14, 'Talento', 'Habilidades invisibles para emprender', 'https://zoom.us/j/95951688045?pwd=ak1VaFozcXRhZGNuTStSNUtCaHJwQT09', '000019'),
(15, 'Estrategia', '¿Cómo identificar áreas de innovación?', 'https://zoom.us/j/92971220290?pwd=aHViV2RNSC9BdE9TQVBUUkNCT3lsdz09', '900254'),
(16, 'Estrategia', 'Métricas de salud de negocio', 'https://zoom.us/j/91204903668?pwd=SG01WFhUOFJyNk5JMmV0NU9kN0lXUT09', '791617'),
(17, 'Estrategia', '¿Cómo lograr una cultura de innovación en mi compañía?', 'https://zoom.us/j/97792236310?pwd=ZTZsdHI1d01TVTVLY3Z1YTFrUW55QT09', '870748'),
(18, 'Estrategia', '¿Cómo monetizar mi data?', 'https://zoom.us/j/94908519415?pwd=K1JvWHU0eml2cFdBV2Q0aEVTZmZaZz09', '393341'),
(19, 'Estrategia', '¿Cómo crear una empresa con triple impacto?', 'https://zoom.us/j/95093148590?pwd=MVhWMldFRG5PeTY5ZjhyakZPd29OUT09', '054430'),
(20, 'Estrategia', '¿Cómo mejorar o mantener la experiencia de nuestros clientes B2C por medio de la virtualidad?', 'https://zoom.us/j/93105489096?pwd=MzZQTWs5UjJSNSs3VGR1Y2pkSmNMUT09', '719938'),
(21, 'Finanzas & Fundraising', '¿Cómo conocer el valor de mi compañía?', 'https://zoom.us/j/98698142618?pwd=NHcvSGdJQTZKNWZzc2tzRUNvMkdDdz09', '132496'),
(22, 'Finanzas & Fundraising', '¿Cómo mantener mis finanzas ordenadas desde el día 1?', 'https://zoom.us/j/94004503139?pwd=Y2E0WlFqaGluZ3RGWTY3aUo1cEhzZz09', '970456'),
(23, 'Transformación digital', '¿Cómo abordar la transformación digital de mi empresa?', 'https://zoom.us/j/99159309032?pwd=MjIrM3FHMjZEYllHZ1Q4U1lqbXljUT09', '459580'),
(24, 'Ventas', 'Herramientas para potenciar mis ventas online B2C', 'https://zoom.us/j/98561560436?pwd=UitwNHJUYVo4TWtKcC9tdU8vQkppUT09', '962535'),
(25, 'Ventas', 'Herramientas para potenciar mis ventas online B2B', 'https://zoom.us/j/98568812074?pwd=ZU8xbzJ1YnFSajJTR0QvaDFRUTVIUT09', '288305'),
(26, 'Cerrada', 'Cerrada', 'https://link26', 'pass26'),
(27, 'Ventas', 'Compensación a mi fuerza comercial', 'https://zoom.us/j/98207885042?pwd=RXpCRk5Zd2l3QVRLSDk5OTBZbkp6QT09', '960095'),
(28, 'Talento', '¿Cómo construir la cultura de mi empresa durante el trabajo remoto?', 'https://zoom.us/j/92879101007?pwd=Z1lxZHBGelBmUWpMZGpwRm1aUWlKQT09', '637236'),
(29, 'Talento', '¿Cómo crear un equipo de alto desempeño?', 'https://zoom.us/j/92783496397?pwd=blR5VXp1T2Rud3JvMTUzVFZTcXFBdz09', '59791');
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
('nicolas.toro@am', 1),
('nicolas.toro@pm', 21),
('ana.rocha@am', 2),
('ana.rocha@pm', 19),
('juliana.covezdy@pm', 17),
('mary.nunez@am', 4),
('mary.nunez@pm', 20),
('felipe.comi@am', 5),
('felipe.comi@pm', 18),
('silvia.florez@am', 6),
('maria.uribe@am', 7),
('maria.uribe@pm', 27),
('vanessa.guerrero@am', 8),
('pablo.camacho@am', 9),
('pablo.camacho@pm', 24),
('susana.restrepo@am', 10),
('susana.restrepo@pm', 23),
('mariana.pineres@am', 11),
('mariana.pineres@pm', 25),
('alejandra.gonzalez@am', 12),
('alejandra.gonzalez@pm', 22),
('hernando.trinidad@am', 13),
('hernando.trinidad@pm', 29),
('erika.vergara@am', 14),
('erika.vergara@pm', 16),
('pasanteproyectos@pm', 15),
('sebastian.lozano@pm', 28);




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
('santiago.villegas@alegra.com', 29),
('gerardo@nazca.vc', 5),
('mpaulina@google.com', 17),
('cpatinof@gmail.com', 18);

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
('Ana María', 'Sierra', '', 'ana.sierra@endeavor.org.co', 1, '', '', '', '', '', '', '', '', ''),
('Johanna', 'Martínez', '', 'jmartinez@cámarabaq.org.co', 1, '', '', '', '', '', '', '', '', ''),
('Kandya', 'Obezo', '', 'kobezo@cccartagena.org.co', 1, '', '', '', '', '', '', '', '', ''),
('Yina', 'Perazzo', '', 'yperazzo@cccartagena.org.co', 1, '', '', '', '', '', '', '', '', ''),
('Maria Camila', 'Morales', '', 'mariacamilam02@gmail.com', 1, '', '', '', '', '', '', '', '', ''),
('Camila', 'Mancera', '', 'andimancerar@gmail.com', 1, '', '', '', '', '', '', '', '', ''),
('Daniel', 'Ospina', '', 'daniel.ospina@endeavor.org.co', 1, '', '', '', '', '', '', '', '', ''),
('Diana ', 'Osorio', '', 'diana.osorio@sap.com', 1, '', '', '', '', '', '', '', '', ''),
('Maria', 'Quevedo', '', 'maria.quevedo@sap.com', 1, '', '', '', '', '', '', '', '', ''),
('', '', '', 'nicolas.toro@am', 2, '', '', '', '', '', '', '', '', ''),
('', '', '', 'nicolas.toro@pm', 2, '', '', '', '', '', '', '', '', ''),
('', '', '', 'ana.rocha@am', 2, '', '', '', '', '', '', '', '', ''),
('', '', '', 'ana.rocha@pm', 2, '', '', '', '', '', '', '', '', ''),
('', '', '', 'juliana.covezdy@pm', 2, '', '', '', '', '', '', '', '', ''),
('', '', '', 'mary.nunez@am', 2, '', '', '', '', '', '', '', '', ''),
('', '', '', 'mary.nunez@pm', 2, '', '', '', '', '', '', '', '', ''),
('', '', '', 'felipe.comi@am', 2, '', '', '', '', '', '', '', '', ''),
('', '', '', 'felipe.comi@pm', 2, '', '', '', '', '', '', '', '', ''),
('', '', '', 'silvia.florez@am', 2, '', '', '', '', '', '', '', '', ''),
('', '', '', 'maria.uribe@am', 2, '', '', '', '', '', '', '', '', ''),
('', '', '', 'maria.uribe@pm', 2, '', '', '', '', '', '', '', '', ''),
('', '', '', 'vanessa.guerrero@am', 2, '', '', '', '', '', '', '', '', ''),
('', '', '', 'pablo.camacho@am', 2, '', '', '', '', '', '', '', '', ''),
('', '', '', 'pablo.camacho@pm', 2, '', '', '', '', '', '', '', '', ''),
('', '', '', 'susana.restrepo@am', 2, '', '', '', '', '', '', '', '', ''),
('', '', '', 'susana.restrepo@pm', 2, '', '', '', '', '', '', '', '', ''),
('', '', '', 'mariana.pineres@am', 2, '', '', '', '', '', '', '', '', ''),
('', '', '', 'mariana.pineres@pm', 2, '', '', '', '', '', '', '', '', ''),
('', '', '', 'alejandra.gonzalez@am', 2, '', '', '', '', '', '', '', '', ''),
('', '', '', 'alejandra.gonzalez@pm', 2, '', '', '', '', '', '', '', '', ''),
('', '', '', 'hernando.trinidad@am', 2, '', '', '', '', '', '', '', '', ''),
('', '', '', 'hernando.trinidad@pm', 2, '', '', '', '', '', '', '', '', ''),
('', '', '', 'erika.vergara@am', 2, '', '', '', '', '', '', '', '', ''),
('', '', '', 'erika.vergara@pm', 2, '', '', '', '', '', '', '', '', ''),
('', '', '', 'pasanteproyectos@pm', 2, '', '', '', '', '', '', '', '', ''),
('', '', '', 'sebastian.lozano@pm', 2, '', '', '', '', '', '', '', '', ''),
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
('', '', '', 'santiago.villegas@alegra.com', 4, '', '', '', '', '', '', '', '', ''),
('', '', '', 'gerardo@nazca.vc', 4, '', '', '', '', '', '', '', '', ''),
('', '', '', 'mpaulina@google.com', 4, '', '', '', '', '', '', '', '', ''),
('', '', '', 'cpatinof@gmail.com', 4, '', '', '', '', '', '', '', '', ''),
('Daniel', 'Garavito', '1032371771', 'bogotan@gmail.com', 3, 'EducALL: Llamadas Para Educar', 'CEO', 'https://educall.co/', 'Todavía no facturo', 'Soñamos que todos los seres humanos tengan al en sus manos el legado de la humanidad y que alcancen su potencial. Transformamos un celular básico para que de acceso a Spotify, asistente de voz e IA', 'null', 'null', 'null', 'null'),
('maria fernanda', 'restrepo montoya', '900932231', 'suministrosardila@gmail.com', 3, 'suministrosardila@gmail.com', 'gerente administrativa y financiera', 'no tenemos actualmente', 'Más de 500 millones', 'somos distribuidores mayoristas ferreteros', 'que pasos debo seguir, debo tercerizar o contratar directamente', 'que pasos debo seguir', 'null', 'null'),
('Milene', 'Jauregui', '63539547', 'milene.jauregui@social-mente.org', 3, 'SocialMente', 'Cofundora', 'www.social-mente.org', 'Todavía no facturo', 'Plataforma de conocimiento colaborativo, empresas comparten conocimiento alineado a necesidades de negocio y contratac, jóvenes se certifican y hacen parte de nube de talentos para el mercado laboral.', '1. Cómo llegar a los cargos más importantes de empresas grandes a través de digital?', 'Cómo generar un plan realmente alcanzable? qué tan ambicioso? Cómo medir?', 'null', 'null'),
('Juan', 'Diaz', '900557218', 'juan@koggi.co', 3, 'Koggi', 'CEO', 'Koggi.co', 'Hasta 70 millones', 'Somos una plataforma con inteligencia artificial que permite facilitar el acceso  a la vivienda simplificando la busqueda, solicitud y aprobación de creditos hipotecarios. ', 'Como acceder a una red de inversionistas en estos momentos?', 'Como son los tipos de levantamiento de capital para una startup?', 'Cómo determinar el cap value de mi compañía?', 'Finanzas & Fundraising: ¿Cómo conocer el valor de mi compañía?'),
('Anamaría', 'Henao', '43157186', 'henaoanamia@hotmail.com', 3, 'Nuba Tecnologia para el campo', 'CEO', 'www.nubatecnologia.co', 'Todavía no facturo', 'Ecosistema digital de información y transacciones que conecta a los transformadores de productos agrícolas con agricultores, permitiendo mejorar la comercialización de estos productos.  ', 'null', 'null', 'null', 'null'),
('Jose', 'Dimate', '80932306', 'admin@lilianurse.com', 3, 'Lilianurse SAS', 'CTO', 'https://www.lilianurse.com/', '151 millones a 200 millones', 'Encuentra una enfermera certificada y calificada por medio de una aplicación móvil.', 'Bootstrapping o mejor buscar financiación siendo una startup?', 'Como contratar ejecutivos que tengan una alto impacto cuando eres una startup?', 'null', 'null'),
('Daniel Gustavo', 'Monroy Cardenas', '1018411526', 'danymonry@gmail.com', 3, 'Ventcar ', 'Director Comercial', 'ventcar.com ', 'Todavía no facturo', 'Marketplace de vehículos en excelentes condiciones (estamos construyendo nuestro sitio) ', 'Como puedo empezar a vender si tan solo tengo un MVP sin tener la versión final.', 'null', 'null', 'Estrategia: ¿Cómo crear una empresa con triple impacto?'),
('Carlos', 'Hoyos', '901317827-4', 'gerencia@horeli.com.co', 3, 'Horeli SAS', 'Fundador', 'www.comprofacil.com.co', 'Todavía no facturo', 'Somos un marketplace dirigido a fondo de empleados, cajas de compensación, cooperativas (www.comprofacil.com.co). Por otro lado comercializamos productos a travez de redes sociales (horelicommerce)', 'me gustaria saber como puedo tener un botón de pago en mi pagina web www.comprofacil.com.co', 'me gustaría saber como puedo conseguir fondos para mi empresa y poder utilizarnos para crecimiento ', 'null', 'null'),
('José Miguél', 'Cuellar Londoño', '8434620', 'contacto@d5lab.com', 3, 'D5Lab', 'Director de mercadeo', 'null', '71 millones a 150 millones', 'Marketing digital para emprendedores. Ads y desarrollo web. ', 'null', 'null', 'null', 'null'),
('Mario Alejandro', 'Vallejo Yacelga', '1.020.786.380', 'alejandroyacelga@outlook.com', 3, 'Ventcar', 'Founder ', 'www.ventcar.com', 'Todavía no facturo', 'Marketplace automotriz dedicado a vehículos en excelentes condiciones ', 'Los tipos de instrumentos de financiación y los datos más relevantes para levantar capital ', 'Como puedo sacar un mejor provecho de mi data ', 'null', 'null'),
('Andrés Felipe', 'Perea Gálvez', '901300586-1 ', 'contacto@myorangeapp.com', 3, 'OMI', 'Ceo', 'Www.myorangeapp.com ', 'Hasta 70 millones', 'Somos la solución digital para la mayoría de procesos de propiedad horizontal ', 'Como obtiene fundraising una empresa basada en crecimiento de usuarios', 'Como obtiene fundraising una empresa basada en', 'null', 'null'),
('Erick', 'Olmos', '1010163256', 'erick.olmostrujillo@gmail.com', 3, 'MercPlaza', 'CEO', 'https://mercplaza.com/', 'Más de 500 millones', 'Somos una empresa que conecta las plazas de mercado a través de la tecnología con los consumidores finales (Hogares y empresas).', 'null', 'Que herramientas son necesarias para esa transformación?  Que equipo de trabajo es necesario? ', 'null', 'null'),
('Juan', 'Obregon', '3806924', 'obregonjuanmf@gmail.com', 3, 'EN construccion', 'Fundador', 'null', 'Todavía no facturo', 'Estamos creado una startup del ecosistema Insurtech', 'Saber el valor de una empresa en etapas iniciales Pre- Semilla y Semilla, como avaluarla', 'null', 'null', 'null'),
('Nicolás', 'Varón', '901191005-3', 'info@inmoleatherbags.com', 3, 'INMO', 'Fundador director general', 'www.inmoleatherbags.com', '201 millones a 250 millones', 'En INMO nos enfocamos en ayudar a las personas a mejorar su desempeño mediante orden diseño y tecnología. ', '¿Cómo aumentar el impacto sin perder foco?', '¿Qué alternativas de financiación a bancos existen?', '¿Además de FB Ads, qué otras herramientas de ventas se pueden utilizar para vender online?', 'Ventas: Compensación a mi fuerza comercial'),
('Mia', 'Perdomo', 'NIT 900794234-8', 'mia@aequales.com', 3, 'Aequales', 'CEO', 'www.aequales.com', 'Más de 500 millones', 'Empresa multilatina que provee herramientas para el cierre de brechas de género en las organizaciones a través de consultoría, medición y tecnología.', 'null', 'null', 'null', 'null'),
('Mario Fernando', 'García Acosta', '901329963', 'labgella@gmail.com', 3, 'GELLA SUSTENTABLE SAS', 'Gerente', 'www.labgella.com', 'Más de 500 millones', 'Nos dedicamos al desarrollo de productos para el cuidado facial de alto valor agregado, desarrollo de tecnologias en manufactura de productos de cuidado facial.', 'null', 'null', 'null', 'null'),
('Fernando', 'Parra', '901037816-1', 'fernando@wasi.co', 3, 'Wasi', 'COO y Co-founder', 'wasi.co', 'Más de 500 millones', 'Plataforma Inmobiliaria que permite organizar las gestiones de ventas, optimizar el marketing inmobiliario, mejorar las relación con los clientes y conectar con una red de más de 20 mil asesores.', '¿Qué modelos son los más efectivos para monetizar los datos que se recolectan a través de una SaaS?', '¿Cómo podemos hacer sentir a gusto a nuestros clientes más allá de la automatización con Talento H?', '¿Cómo ordenarlas cuando no se ordenaron desde el día 1?', 'Ventas: ¿Cómo crecer mis ventas en tiempos de incertidumbre?'),
('Rodrigo', 'Castrillón', '900471789-4', 'rodrigo.castrillon@intelnova.co', 3, 'Intelnova', 'Gerente General', 'www.intelnova.co', 'Más de 500 millones', 'Desarrollamos Apps en la nube para la vertical Industria Farmacéutica.', 'null', 'null', 'null', 'null'),
('stephania', 'Molano', '1020769531', 'emilianodellcarmine@gmail.com', 3, 'ilusclick', 'COO', 'null', 'Todavía no facturo', 'Aplicación con enfoque educativo y recreativo para incentivar la lectura mediante la ilustración y el video. ', '¿Cuales pueden ser mis canales de distribución y flujo de ingreso?', '¿A que puntos de control presentarnos dado que nuestra APP es educativa?', 'null', 'null'),
('Nicolas', 'Parra', '901360618-3', 'nicolasmauricio@gmail.com', 3, 'Psicologa.co', 'Director Ejecutivo', 'www.psicologa.co', 'Más de 500 millones', 'Especialistas en Salud Mental, compuesto por psicólogos clínicos, psiquiatras, neuropsicología.', 'Cual es el siguiente paso para llevar la empresa al otro nivel la empresa', 'Como volver digital la empresa', 'Como abrir mercados en empresas', 'Talento: ¿Cómo construir la cultura de mi empresa durante el trabajo remoto?'),
('Julian', 'Londoño', '901061385', 'inge.jlondono@gmail.com', 3, 'Tus abogados y Contadores', 'CEO', 'https://tusabogadosycontadores.co/', '151 millones a 200 millones', 'Marketplace de abogados y contadores.', 'null', 'null', 'null', 'null'),
('JOSE', 'MEJIA', '900347449-8', 'jmejia@grupologis.co', 3, 'LOGISTICA LABORAL ', 'gerente', 'www.grupologis.co', 'Más de 500 millones', 'Servicios de colaboración temporal: las compañías nos contratan para que seleccionemos y contratemos personas que necesitan para cubrir: picos de producción,  vacantes y/o licencias , etc...', 'null', 'null', 'null', 'null'),
('Herman', 'Roman', '901156186-1', 'gerencia@tenken.com.co', 3, 'TENKEN ENGINEERING SAS', 'CEO', 'www.tenken.com.co', 'Hasta 70 millones', 'Compañía de ingeniería que ofrece servicios de monitoreo en tiempo real y alerta temprana del estado de seguridad de la infraestructura, con sensores IOT y analítica de datos en la nube. ', 'Cómo buscar instrumentos de financiación sin afectar el Equity de mi empresa', 'Conocer entidades, fondos, ángeles inversionistas  enfocados en el sector de la construcción ', 'null', 'null'),
('Julián Estevan', 'Guatibonza Barbosa', '1053855949', 'jopavisos@gmail.com', 3, 'JOP Avisos', 'CEO', 'jopavisos.com', 'Hasta 70 millones', 'JOP Avisos es una pyme que fábrica y comercializa productos de señalización y seguridad industrial.', '¿Que elementos determinan que mi empresa puede y debe escalar? ', '¿Que factores determinan en que momento debo empezar a contratar más talento? ', 'null', 'null'),
('Maria Camila', 'Arteta', '1047356469', 'mc.artetag@gmail.com', 3, 'Artett', 'Fundadora', 'null', 'Todavía no facturo', 'Diseñamos y vendemos productos artesanales para decoración. Buscamos traer el exterior al interior del hogar con piezas únicas que cuentan historias y elaboradas a mano por nuestros artesanos locales.', 'null', 'null', 'null', 'null'),
('SEBASTIAN', 'URIBE', '900563536-6', 'sebastian.uribe@jysindustrial.com', 3, 'JYS INDUSTRIAL SAS', 'GERENCIA', 'www.jysindustrial.com', 'Más de 500 millones', 'INTEGRADORA DE SUMINISTROS E INGENIERIA ELECTRICA, TELECOMUNICACIONES Y TECNOLOGIA.', 'null', 'null', 'null', 'null'),
('Julio César', 'Rodriguez Gómez', '1010167420', 'jrodriguez@instacrops.com', 3, 'Instacrops', 'Country Manager', 'instacrops.com', '201 millones a 250 millones', 'Instacrops es un asesor agrícola virtual que ayuda a los productores agrícolas a maximizar sus producciones entregando información a tiempo real para obtener cosechas excepcionales. ', 'Como el valor de mis datos agricolas pueden generar valor a los bancos y aseguradoras', 'Estoy cerrando mis primeros negocios en Colombia, como debo gestionarla hacia los agricultores', 'Como motivo a mi equipo para lograr los objetivos de la organización', 'Talento: ¿Cómo construir la cultura de mi empresa durante el trabajo remoto?'),
('Roberto Cesar', 'Morales Ortega', '901.409.059-1', 'rmorales@certika.co', 3, 'CERTIKA S.A.S', 'Gerente', 'https://certika.co/', 'Hasta 70 millones', 'CERTIKA ES LA PLATAFORMA DE CERTIFICACIÓN DE DOCUMENTOS DIGITALES BAJO TECNOLOGÍA BLOCKCHAIN PARA DISMINUIR SIGNIFICATIVAMENTE LA FALSIFICACIÓN DE DOCUMENTOS PÚBLICOS Y PRIVADOS', 'null', 'null', 'null', 'null'),
('Andrés', 'Castillo', '900524675-5', 'andcastillo999@hotmail.com', 3, 'D’agri', 'Director General ', 'www.dagricol.com', 'Más de 500 millones', 'Ofrecemos soluciones de calidad para la agricultura por medio de nutrientes con nuevas tecnologías que permiten cuidar el medio ambiente y la salud humana ', 'Que opciones de financiación tenemos por fuera de Colombia para la empresa ', 'A qué instrumentos podemos acceder que no sean los bancos tradicionales cómo evitar errores', 'Cómo puedo identificar personal que sea de alto desempeño y potencializar su gestión ', 'Ventas: Compensación a mi fuerza comercial'),
('marion', 'Vall de ruten', '0000000000', 'marion@snappypet.com.co', 3, 'SNAPPY PET', 'Ceo ', 'www.snappypet.com.co', 'Hasta 70 millones', 'SOmos una plataforma de base tecnológica para el cuidado de mascotas en Colombia ', 'Cómo tener un lan de prospección y cierre d eclientes efectivo en el segmento de mascotas ', 'null', 'null', 'null'),
('Andres Felipe', 'Franco Perez', '1037608709', 'andres@panainvest.com', 3, 'Pana Colombia', 'CRO', 'www.panacash.co', '251 millones a 500 millones', 'Fintech colombiana especializada en préstamos recurrentes de bajo monto', 'null', 'null', 'null', 'null'),
('Carolina', 'Hoyos Maya', '43985637', 'carolina.hoyos@evertecinc.com', 3, 'Placetopay', 'Gerente de Innovación', 'www.placetopay.com', 'Más de 500 millones', 'Placetopay es una plataforma de pagos electrónicos, que cubre toda la cadena transaccional ofreciendo soluciones de seguridad y análisis de datos', 'cómo seleccionar los equipos de innovación ideales,  ágiles y comprometidos con la iniciativa', 'Cómo abordar un proceso de transformación a ágil en una empresa con varios centros de desarrollo ', 'null', 'null'),
('Camilo', 'Salazar', '901360609-7', 'danielkmilo87@gmail.com', 3, 'Bruna lingerie (grupo 2k sas)', 'Director de proyectos (fundador)', 'Www.brunalingerie.com ', 'Más de 500 millones', 'Somos una empresa dedicada al diseño, fabricación y comercialización de lencería femenina; Existimos desde hace 5 años. Tenemos 4 canales: redes sociales , web, multi marca y 3 boutiques ', 'null', 'null', 'null', 'Ventas: Compensación a mi fuerza comercial'),
('Santiago', 'Gálvez', '1016033614', 'santiagojaviergc@hotmail.com', 3, 'CorpMatch', 'Creador', 'www.corpmatch.com.co', 'Todavía no facturo', 'Es una plataforma que permite a emprendimientos y empresas  buscar aliados empresariales.', 'Cómo conseguir clientes en pandemia. ', 'Qué requisitos se deben tener para aspirar a esas alternativas fintech?', 'null', 'null'),
('Camilo', 'Sacanamboy', '1144166371', 'camilo@peewah.co', 3, 'Peewah', 'Director General', 'https://peewah.co', 'Más de 500 millones', 'Plataforma empresarial todo en uno para eventos', '¿Cómo encontrar a los ángeles inversionistas correctos? ', '¿Cómo liderar un nicho corporativo? ¿Cómo implementar una estrategia de ventas B2B? ', 'null', 'null'),
('Andres', 'Mogollon', '901468829-6', 'jhoanandres@gmail.com', 3, 'Acogeme', 'Ceo', 'http://acogeme.com.co/', 'Hasta 70 millones', 'Plataforma para buscar hogares geriátricos', 'null', 'null', 'null', 'Finanzas & Fundraising: ¿Cómo conocer el valor de mi compañía?'),
('Carlos Enrique', 'Velez Restrepo', '901338378', 'cvelez@mappex.com.co', 3, 'MAPPEX', 'Fundador', 'www.mappex.com.co', 'Hasta 70 millones', 'Monitoreo remoto de vehículos mediante  internet de las cosas + analítica avanzada para promover mayor disponibilidad y rentabilidad del activo, disminuir costos de operación y/o mantenimiento', 'Necesitamos un data scientist en la empresa? que tipo de perfil sería el ideal para suplir las needs', 'como le llegamos mejor a nuestros clientes, redes sociales funcionarían?', 'null', 'null'),
('luis', 'bernal barros', '900481079-9', 'luisbernalb@lya-electronic.com', 3, 'LYA ELECTRONIC', 'CEO', 'https://lyaelectronic.com/', '251 millones a 500 millones', 'desarrolladores de hardware y software a medida ', 'mercado USA', 'inversionistas tecnologicos', 'null', 'null'),
('Eduardo', 'Ortega del Río', '900828287-6', 'eortegadelrio@agenciapopuli.com', 3, 'POPULI SAS', 'Director Ejecutivo', 'www.agenciapopuli.com', 'Más de 500 millones', 'Agencia de Mercadeo y Publicidad.', 'Enfoque estratégico por unidad de negocio', 'Desde la virtualidad', 'Esquema adecuado de comisiones', 'Talento: ¿Cómo construir la cultura de mi empresa durante el trabajo remoto?'),
('JOHAN', 'MONTANO', '80002584', 'dircomercial@maderformas.net', 3, 'MAderformassas', 'Gerente Comercial', 'www.maderformas.net', 'Más de 500 millones', 'Fabricante de Carpintería Arquitectónica en Madera para Grandes Proyectos Inmobiliarios: vivienda, hoteles, comercio.', 'Como seleccionar adecuadamente asesore comerciales.', 'como crecer mis ventas en tiempos de incertidumbre', 'null', 'null'),
('mateo', 'folador', '9007645835', 'mateofh@gmail.com', 3, 'Talentu', 'CEO', 'www.talentu.co', 'Más de 500 millones', 'plataforma para ayudar a las empresas a encontrar y retener el talento', 'null', 'null', 'null', 'null'),
('Sandra Milena', 'Ramirez', '900.221.377-4', 'comercial@ubiquom.com', 3, 'Ubiquom SAS', 'Directora Comercial', 'https://www.uqmobile.co/', 'Más de 500 millones', 'Somos un aliado tecnológico con soluciones integrales que impactan la venta, productividad, comunicación y relación de servicio con sus clientes. ', '¿Cómo estructurar un plan de incentivos que realmente aporte al crecimiento de la organización?', '¿Cuáles son las principales acciones que pueden aportar a evitar un estado de parálisis empresarial?', 'null', 'null'),
('Jenifer', 'Cardenas Londoño', '900221377', 'jenifer.cardenas@ubiquom.com', 3, 'Ubiquom SAS', 'Analista de software', 'https://www.uqmobile.co/about-us/', 'Más de 500 millones', 'Somos un aliado tecnológico con soluciones integrales que impactan la venta, productividad, comunicación y relación de servicio con sus clientes.', '¿Qué se debe tener en cuenta para lograr un adecuado proceso de comunicación con equipos de teletrab', '¿Cómo lograr la adecuada apropiación de las herramientas que se implementen?', 'null', 'null'),
('EMERSON', 'LOZANO GARCIA', '900006315-7', 'gerencia@bioquigen.com', 3, 'bioquigen ltda', 'gerente', 'www.bioquigen.com', 'Más de 500 millones', 'empresa dedicada a fabricación de reactivos para análisis en la industria y reactivos para diagnóstico in-vitro, línea industria, línea health care.', 'ventas y crecimiento en época de crisis, viabilidad de lanzar nuevas líneas.', 'como construir un equipo con los empleados actuales mediante inversión en  capacitación', 'null', 'null'),
('David Alejandro', 'Londoño Pardo', '900221377-4', 'dlondono@ubiquom.com', 3, 'Ubiquom SAS', 'Director de operaciones', 'https://www.uqmobile.co/about-us/', 'Más de 500 millones', 'Somos un aliado tecnológico con soluciones integrales que impactan la venta, productividad, comunicación y relación de servicio con sus clientes.', '¿Cómo vencer el miedo a la incertidumbre y liderar adecuadamente un equipo de trabajo para prepararl', '¿Cómo identificar qué herramientas se adaptan mejor a nuestra organización y equipo de trabajo?', 'null', 'null'),
('Maria Ruth', 'Rincón Pardo', '901414276', 'marut@marutstudio.com', 3, 'Marut Design Studio', 'Socia-fundadora - Dir. de Diseño', 'www.marutstudio.com', '251 millones a 500 millones', 'Somos un estudio de diseño de interiores especializado en la creación y transformación de espacios comerciales, corporativos y residenciales.', 'null', 'null', 'null', 'Ventas: ¿Cómo crecer mis ventas en tiempos de incertidumbre?'),
('JORGE ARMANDO', 'SANJUAN ANGARITA', '1082862413', 'jorgearmandosanjuan@gmail.com', 3, 'MAGDALEN', 'CEO', 'www.magdalen.com.co', 'Todavía no facturo', 'Estamos lanzando una aplicación web para inspecciones vehiculares en empresas de transporte de carga liquida.', '¿Qué herramientas usar para monetizar datos?', 'Consejos para construir una cultura a prueba de pandemias', 'null', 'null'),
('Camilo', 'Gutierrez', '830068552-8', 'cgutierrez@changeamericas.com', 3, 'Change Americas', 'CRO', 'www.changeamericas.com', 'Más de 500 millones', 'Consultoria con foco en estrategia, recursos humanos y productos digitales para recursos humanos', 'null', 'null', 'null', 'null'),
('Ricardo', 'Mora Ramirez', '901.358.586-1', 'rmr@ruah60mas.co', 3, 'Ruah60+', 'CEO', 'www.ruah60mas.co', 'Todavía no facturo', 'Prestamos servicios que le generan independencia a las personas mayores de 60 años.', 'Que es mejor, tener salarios básicos altos con perfiles altos o básicos bajos y mas comisiones?', 'Como involucrar en el impacto social al equipo de trabajo?', 'null', 'null'),
('Carolina', 'Santafe', '43973192', 'carosanta13@hotmail.com', 3, 'Tu tranquila ', 'Owner ', 'null', 'Todavía no facturo', 'Venta de camisetas ', 'null', 'null', 'null', 'null'),
('Yessika', 'Artunduaga', '53118607', 'yessikartunduaga@gmail.com', 3, 'Yessikartunduaga', 'CEO ', 'www.yessikartunduaga.com', 'Todavía no facturo', 'Servicios de consultoria de marketing ', 'null', 'null', 'null', 'null'),
('Leonardo', 'Suárez Ruíz', '900200356-1', 'leonardo.suarez@clouxter.com', 3, 'Clouxter', 'CEO', 'https://clouxter.com/', 'Más de 500 millones', 'En Clouxter nos enfocamos en procesos de Adopción y Consolidación del uso de la nube', 'Herramientas, Estrategias de comunicación, Incentivos y demás  información complementaria', 'Herramientas, Estrategias de comunicación, Incentivos y demás  información complementaria', 'null', 'null'),
('David', 'Najera', '900526893-3', 'davidnajera@dnamusic.edu.co', 3, 'DNA Music', 'Director', 'www.dnamusic.edu.co', 'Más de 500 millones', 'Formacion artistica para la proxima generacion que construira la industria naranja en latinoamerica', 'Que estrategias se pueden aplicar para lograr equipos de alto desempeño?', 'Estamos en 4 ciudades y ahora queremos crecer internacionalmente, como empezamos?', 'Como logro que todos los colaboradores se conecten y vivan la Cultura de la empresa?', 'Ventas: ¿Cómo crecer mis ventas en tiempos de incertidumbre?'),
('edwin andres', 'Medina rueda', '900428395', 'edwin.medina@expertech.com.co', 3, 'EXPERTOS TECNOLOGICOS SAS', 'Gerente', 'WWW.EXPERTECH.COM.CO', 'Más de 500 millones', 'Compañía prestadora de servicios de consultoría informática, servicios cloud, y seguridad perimetral.', 'Como estructurar comisiones de acuerdo a lo que se paga en empresas del mismo sector. Como garantiza', 'Indicadores clave, garantizar el cumplimiento de objetivos claves y alineados a la estrategia.', 'null', 'null'),
('MARGARITA', 'CLAVIJO', '900034273-5', 'mclavijo@extreme.com.co', 3, 'EXTREME TECHNOLOGIES S.A.', 'GERENTE COMERCIAL', 'www.extreme.com.co', 'Hasta 70 millones', 'Empresa de base tecnologica que ofrece soluciones especializadas para los sectores de: transporte y la logística, industria, utilities y gobierno.', 'aumentar la conversión de ventas', 'Estrategia de expansión nacional e internacional', 'Estrategias exitosas B2B', 'Ventas: ¿Cómo crecer mis ventas en tiempos de incertidumbre?'),
('Alfredo', 'Vega', '900351983', 'alfredovegasaltaren@gmail.com', 3, 'Red Procesal', 'Gerente ', 'www.redprocesal.com', '71 millones a 150 millones', 'Legal Tech', 'Cuáles son los parámetros a tener en cuenta ', 'Qué datos puedo monetizar legalmente ', 'Qué herramientas existen que realmente pueda utilizar ', 'Ventas: Compensación a mi fuerza comercial'),
('Patricia', 'Herrera', '802016769', 'eycphp@gmail.com', 3, 'Estudios y Consultorias SAS', 'Gerente', 'www.econsultorias.com', 'Más de 500 millones', 'Firma consultora financiera, de investigacion y otros estudios.', 'indicadores relevantes de consultoria', 'precisar diferencias entre modificar procesos e innovar', 'null', 'null'),
('camilo', 'orozco', '00000000', 'camilo.orozco@viliv.com.co', 3, 'Viliv', 'Producto', 'null', '71 millones a 150 millones', 'Marketplace de servicios b2b', 'null', 'null', 'null', 'null'),
('Luis', 'Vives', '1082914231', 'luchovivesg@hotmail.com', 3, 'café Divino', 'Gerente', 'www.cafedivino.co', 'Todavía no facturo', 'comercializamos cafe tostado de la Sierra Nevada de Santa Marta', 'Como estructurar un buen plan de ventas', 'null', 'null', 'Ventas: Herramientas para potenciar mis ventas online B2B'),
('Ivan', 'Echeverri', '80086601', 'ivanecheverrigomez@gmail.com', 3, 'Saloon', 'Gerente General', 'null', 'Todavía no facturo', 'Empresa prestadora de servicios de belleza a domicilio agendados vía app ', '¿Cual es la primera instancia para lograr conseguir capital semilla?', '¿Q alternativas podrían existir para financiar la primera etapa del proyecto y poder comenzar la ope', '¿Cuales son las señales o indicadores claves que me darán una buena gestión?', 'Estrategia: ¿Cómo lograr una cultura de innovación en mi compañía?'),
('Juan Pablo', 'Gonzalez Correa', '900833672-9', 'coordinadorventas@agrofacil.co', 3, 'AGROFACIL', 'COORDINADOR COMERCIAL', 'www.agrofacil.co', 'Más de 500 millones', 'Somos una empresa radicada en Medellín en la cual facilitamos y simplificamos las labores del campo para mejorar la calidad de vida de quienes lo trabajan.', 'Gestión óptima de los procesos de venta en relación a las plataformas, y ventas telefónicas/chat ', 'Estrategias o canales para seguimiento, posventa y recompra especializada', 'null', 'null'),
('jorge', 'isaza', '98543822', 'jisaza@fisapay.com', 3, 'btob negocios', 'ceo', 'www.btobnegocios.com', 'Más de 500 millones', 'suite de servicios financieros y de seguros', 'null', 'null', 'null', 'null'),
('Paolo', 'Bejarano', 'No estoy en colombia', 'paolobejarano@hotmail.com', 3, 'ALaw', 'Co-Fundador', 'https://www.alaw.pe', 'Hasta 70 millones', 'Legaltech peruana de automatización de documentos legales fundada el 2021.', 'null', 'null', 'null', 'Talento: ¿Cómo crear un equipo de alto desempeño?'),
('David', 'Acosta', '830080928-2', 'davidacla@me.com', 3, 'ITIS Support SAS', 'Director de Unidad', 'www.itis.com.co', 'Más de 500 millones', 'Empresa especializada en servicios de consultoría sobre tecnologías de información que busca potenciar la productividad de las empresas a través de la transformación digital.', 'null', 'null', 'null', 'Talento: ¿Cómo crear un equipo de alto desempeño?'),
('Antonio', 'Gonzalez', '8020047581', 'antonio.gonzalez@stackpointer.co', 3, 'stack pointer sas', 'CEO', 'www.stackpointer.co', 'Más de 500 millones', 'Empresa de soluciones de tecnología para sector corporativo', 'null', 'null', 'null', 'null'),
('Ana', 'Taborda', '900958266-9', 'atabord3@gmail.com', 3, 'Piel canela ', 'Gerente ', 'Mipielcanela.com ', '251 millones a 500 millones', 'Empresa que busca que las mujeres se sientan hermosas en cada día de sus vacaciones sin importar el tipo de cuerpo ', 'null', 'null', 'null', 'null'),
('Jazmin Angélica', 'González', '830080928-2', 'jazmin_gonzalez@itis.com.co', 3, 'ITIS SUPPORT SAS', 'Directora Unidad de Negocios', 'itis.com.co', 'Más de 500 millones', 'Servicios especializados de consultoria en soluciones tecnológicas que responden a problemáticas de las organizaciones.', 'null', 'Tips y herramientas para hacer una exitosa gestion de ventas y producir resultados. ', 'null', 'null'),
('Victoria', 'Alvarado', '1094917398 ', 'victoria.alvaradou@gmail.com', 3, 'TSM Negocios Digitales ', 'Dirección de Marketing Digital', 'null', 'Todavía no facturo', 'Asesorías marketing digital, creación de contenidos, imagen de marca, página web y Coaching transformacional como base para un emprendimiento exitoso. ', 'null', 'null', 'null', 'Finanzas & Fundraising: ¿Cómo mantener mis finanzas ordenadas desde el día 1?'),
('Luis Carlos', 'Garcia Urquijo', '900784302-8', 'luis@incapacidades.co', 3, 'Incapacidades.co', 'CEO', 'www.incapacidades.co', '71 millones a 150 millones', 'Ayudamos a empresas y personas naturales en el trámite de reconocimiento y pago de incapacidades laborales ante las diferentes entidades del sistema de seguridad social en Colombia.', 'null', 'null', 'null', 'null'),
('Andres', 'Caicedo', '830141129', 'acaicedo@chemicalpharma.net', 3, 'Chemical Pharma SAS', 'Head', 'www.chemicalpharma.net', 'Más de 500 millones', 'Somos representantes, fabricantes y comercializadores de absorbente de humedad y empaques para protección de productos y procesos en todo tipo de industrias.', '1 Ronda de financiación,  pitch, opciones de financiación (equity, venta accionaria, préstamo)', 'null', 'null', 'null'),
('Julián David', 'Cuevas Castañeda', '800174474', 'trademarketing@naissant.com.co', 3, 'Laboratorios Farmavic S.A.', 'Gestor de proyectos de Innovación y Mercadeo.', 'https://naissant.com/', 'Más de 500 millones', 'Somos una empresa Latina con experiencia de más de 25 años empoderando mujeres reales latinoamericanas.', 'null', 'null', 'null', 'null'),
('Daniel', 'Reyes', '900767164-4', 'gerencia@itranslate.com.co', 3, 'iTranslate ', 'Founder', 'www.cucu.us', '201 millones a 250 millones', 'Es una plataforma marketplace para conectar intérpretes y traductores con usuarios de sus servicios. ', 'null', 'Que herramientas se deben tener para crear un Enterprise Gateway Marketplace?', 'null', 'null'),
('Angela María', 'Bonilla Hernández', 'nit900867693-1', 'angela@escarola.co', 3, 'Escarola SAS', 'Directora Ejecutiva', 'www.escarola.co', '251 millones a 500 millones', 'Empresa de alimentos orgánicos y saludables, que facilita  a los consumidores por medio de un e-commerce más de 220 productos entregados a domicilio,  buscando la rentabilidad de todos los actores.', 'null', 'null', 'null', 'null'),
('nicolas', 'concha lalinde', '800224447', 'nico.concha@dipro.com.co', 3, 'Diseño Industrial Promocional DIPRO S.A.S', 'Gerente de Desarrollo', 'www.dipro.com.co', 'Más de 500 millones', 'Proveemos productos y servicios estratégicos a compañías basados en el  pensamiento de diseño, diseño centrado en el usuario, tecnología y producción industrial', 'como superar la canibalización en el negocio y pasar por encima de las malas practicas del cliente', 'Que oportunidades trae la TD a mi negocio (retail - concepto - diseño - fabricación - ejecución) ', 'null', 'null'),
('PAULA', 'PEROTTI', '901334734', 'paula.perotti@valorable.com', 3, 'VALORABLE SAS', 'FUNDADOR', 'www.valorable.com', 'Hasta 70 millones', 'Valorable es el marketplace para una America Latina responsable y comprometida con nuestros recursos. Así lo soñamos y así lo estamos haciendo realidad.', 'Cual puede ser una estrategia acertada para crecer en este modelo', 'Como validar y priorizar una posible expansion y saber que es un buen momento', 'null', 'null'),
('Stephanie', 'Martinez', '900890443', 'info@waimari.com', 3, 'WAIMARI', 'CEO y Co-founder', 'www.waimari.com', 'Más de 500 millones', 'Marca premieum del universo del Resortwear , productora y comercializadora de prendas femeninas.  Exportamos el 80% de nuestra produccion, trabajamos con madres cabezas de familia.  ', 'null', 'null', 'null', 'null'),
('Juan David', 'Duran Hernandez', 'No Aplica', 'juan@ecoregistry.io', 3, 'EcoRegistry', 'Diseñador de Negocios', 'www.ecoregistry.io', 'Más de 500 millones', 'EcoRegistry es una plataforma de registro y trazabilidad de créditos de carbono', 'null', 'null', 'null', 'null'),
('yvonne melina', 'Naranjo', '900697037-7', 'dircomercial@gmail.com', 3, 'ECOPLUS NM SAS', 'Directora Comercial ', 'www.ecoplusnm.com', '251 millones a 500 millones', 'Somos una organización productora y comercializadora de productos biodegradables para mantenimiento industrial y aseo institucional.', '¿Cuál es la manera más eficiente para llegar a mi buyer persona? ', '¿Existe un  mapa de ruta que facilite la  innovación en la empresa?', 'null', 'null'),
('Fabio', 'Mejía', '1020739640', 'mejiafabio@coltrade.com.co', 3, 'Coltrade', 'CEO', 'www.coltrade.com.co', 'Más de 500 millones', 'Coltrade representa marcas globales de productos tecnológicos y los distribuye en Colombia por medio de los canales; Retail, E.commerce y Corporativo.', '* Claves para establecer la estratégia de una compañia.', '* Claves para atraer equipo con talento ', 'null', 'null'),
('Alexander', 'Rios Paez', '830142407-4', 'barpaez.96.ap@gmail.com', 3, 'Otox Carga', 'General Manager', 'https://barpaez96ap.wixsite.com/otox-carga', 'Todavía no facturo', 'Empresa de economia colaborativa enfocada al transporte de carga entre ciudades. ', 'Tengo la idea. ¿Como puedo empezar a ponerlo a andar mi emprendimiento?', 'Como crear un impacto con mi startsup', 'null', 'null'),
('Roxanna', 'Vergara', '900849294', 'roxanna@vendty.com', 3, 'Vendty', 'Directora Comercial', 'https://vendty.com', 'Más de 500 millones', 'Vendty es una plataforma de comercio omnicanal basada en la nube para pequeñas y medianas empresas, que ayuda a los comercios a vender más.', 'null', 'null', 'null', 'null'),
('ANdres', 'Joya', '901420574', 'ajoya1@babson.edu', 3, 'Coally', 'CEO', 'https://coally.com/', 'Hasta 70 millones', 'Coally is an Edtech + freelance Platform that connects small and medium enterprises with young professionals and directs their professional services using instructions delivered by SHORT VIDEOS.', 'null', 'null', 'null', 'Estrategia: ¿Cómo monetizar mi data?'),
('Valentina', 'Carvajal', '16839639', 'roomindeco@gmail.com', 3, 'Roomin', 'Directora Comercial', 'roomindeco.com.co', 'Hasta 70 millones', 'Somos una empresa de diseño y decoración con regalos bonitos y cálidos para el hogar. Nuestros productos se destacan por sus mensajes y emotividad', 'Cómo lograr potenciar mi ecommerce y cómo hacer mis productos más deseables', 'null', 'null', 'null'),
('VERONICA ALEJANDRA', 'LEAL JIMÉNEZ', '900930635', 'administracion@whitmanstore.com', 3, 'WHITMAN SAS', 'Adminictrativo', 'whitmanstore.com', 'Más de 500 millones', 'Estamos revolucinando el mundo  en moda masculina', 'null', 'null', 'null', 'null'),
('ALEJANDRO', 'FRANCO', '900930635', 'operaciones@whitmanstore.com', 3, 'WHITMAN SAS', 'Director de Operaciones', 'whitmanstore.com', 'Más de 500 millones', 'Estamos revolucionando la moda masculina en el mundo', 'null', 'null', 'null', 'null'),
('MARIA ALEJANDRA', 'ARCILA', '901224634-1', 'hola@somosfilipa.shop', 3, 'FILIPA', 'CEO', 'www.somosfilipa.shop', '71 millones a 150 millones', 'F es una marca de zapatos colombiana creada bajo un concepto estético definido así: femenino, sutil, simple y atemporal.', 'Cómo incursionar en mercados internacionales a través de herramientas digitales.', 'Dónde y como encontrar ese punto o valor de innovación que puede tener mi empresa', 'null', 'null'),
('JUAN PABLO', 'VARON ECHEVERRIA', '830052650-1', 'synergy@fp.skandia.com.co', 3, 'SYNERGY INVESTMENTS SAS ', 'Gerente y socio de la firma', 'www.synergyinv.com.co', 'Más de 500 millones', 'Synergy es una agencia exclusiva de skandia pensiones y cesantias donde se brindamos asesoría financiera. ', 'null', 'Como aprovechar el mundo digital en un modelo de negocio de venta .', 'null', 'null'),
('Johanna', 'Montaño', '53.120.830', 'camilamontano84@gmail.com', 3, 'Independiente', 'Líder del proyecto', 'No aplica', 'Todavía no facturo', 'Me encuentro trabajando en un emprendimiento  aún no está constituida l', '¿  Cuáles son buenas practicas para monetizar la data sin molestar a los clientes actuales?', '¿Cuáles son herramientas  más eficaces para llegar a los adultos mayores? ', 'null', 'null'),
('Julio Andres', 'Chaparro Mendivelso', '1030538479', 'juliochaparro8706@gmail.com', 3, 'Juanchame Software Developer', 'CEO', 'null', 'Hasta 70 millones', 'Es una empresa dedicada al desarrollo de soluciones para mhealth, apps de salud para dispositivos móviles. Contamos con 2 apps actualmente.', 'null', 'null', 'null', 'null'),
('David', 'Martinez', '900890443', 'davidmartinez560@gmail.com', 3, 'VIVA TU CREDITO', 'CEO FUNDADOR', 'null', 'Más de 500 millones', 'VIVA TU CREDITO', 'null', 'null', 'null', 'null'),
('Arnulfo', 'Ospino', '900849294-8', 'arnulfo@vendty.com', 3, 'Vendty', 'CEO', 'https://vendty.com', 'Más de 500 millones', 'Vendty es una plataforma de comercio basada en la nube que impulsa a los pequeños y medianos negocios, en más de 7 países de Latinoamérica.  ', 'null', 'null', 'null', 'null'),
('Johana', 'Ruiz', '53107058', 'luquecarteras@gmail.com', 3, 'Luque Carteras', 'Creativa ', 'www.luquecarteras.com', 'Hasta 70 millones', 'Somos una empresa del sector textil, producimos carteras para mujeres en material PVC, tenemos diseños únicos que van a la vanguardia, son versátiles y durables.', 'null', 'null', 'null', 'null'),
('Javier', 'Paternina', '901467616', 'javier@acontar.co', 3, 'Acontar', 'CEO', 'acontar.co', '71 millones a 150 millones', 'Ayudanos a contadores a estar al día con las fechas de presentación y pago de impuestos en Colombia', 'null', 'null', 'null', 'null'),
('Luis Alejandro', 'Garcia Romero', '900784302', 'luiscarlosgroup@gmail.com', 3, 'Group Gestión Empresarial', 'Gestión Humana', 'www.incapacidades.co', '71 millones a 150 millones', 'Reconocimiento de prestaciones económicas', 'null', 'null', 'null', 'null'),
('Viviana', 'Gomez De La Rosa', '45556121', 'gerencia@btobnegocios.com', 3, 'BTOB Negocios', 'Gerente', 'https://btobnegocios.com/', 'Más de 500 millones', 'Somos una Suite de servicios financieros que busca multiplicar el valor de las compañías apalancando su estrategia por medio de soluciones fácilmente implementables.', 'null', 'null', 'null', 'null'),
('GRACE KELLY', 'CARRILLO REYES', '1082877272', 'ing.gracecarrillo@gmail.com', 3, 'MAGDALEN', 'COO', 'www.magdalen.com.co', 'Todavía no facturo', 'Aplicación web de inspecciones vehiculares ', 'Cuáles son las habilidades claves para afrontar los desafíos actuales al momento de emprender', 'Cómo está enfocado el triple impacto ', 'null', 'null'),
('Diego Luis', 'Artunduaga Guarin', '93416322-1', 'diiego.artunduaga@gmail.com', 3, 'Motos Multimarcas', 'Gerente', 'Moto.smultimarcas', '251 millones a 500 millones', 'Almacen de venta de repuestos para motos', 'Como ser eficiente en ventas por internet', 'Que debo hacer para llegar masivamente a los clientes.. estrat tías comerciales y estrategias financ', 'null', 'null'),
('Juan Felipe', 'Parra Godoy', '1015428184', 'pipeparra12@hotmail.com', 3, 'Psicologa.co', 'Gerente de servicio', 'Psicologa.us', 'Más de 500 millones', 'Ofrecemos servicios de Psicología clínica online y precencial', 'null', 'null', 'null', 'null'),
('martin', 'fonseca', '9014102351', 'martinfonsecaco@agybo.com', 3, 'Agybo', 'CEO', 'agybo.com', 'Hasta 70 millones', 'Hola marca de ropa 100% colombiana, los productos que vendemos son camisetas, buzos y complementarios. Agybo nace de las palabras Amor, Gratitud y Buena Onda', 'Cómo incrementar mis ventas? Cómo llegarle al Target que es?', 'Cómo un emprendedor puede organizar su tiempo', 'null', 'null'),
('Paola Andrea', 'Cardona Hernandez', '41947158', 'terradulcechocolates@gmail.com', 3, 'Terra Dulce Chocolates', 'CEO', 'www.terradulcechocolates.com', 'Hasta 70 millones', 'Fabrica de chocolatería fina artesanal, en la tendencia bean to bar. Fabricamos chocolate con altos porcentajes de cacao, ofrecemos barras y cobertura para uso de repostería.', 'Como abordar el mercado internacional.  ', 'Qué más debo hacer para fortalecer las ventas en línea?', 'null', 'Estrategia: ¿Cómo identificar áreas de innovación?'),
('Ana Margarita', 'Velásquez', '901144889-7', 'anam.velasquez@tocaunavida.org', 3, 'Fundación ROFÉ - Toca una Vida', 'Directora Ejecutiva', 'tocaunavida.org', '151 millones a 200 millones', 'Trabajamos por combatir la pobreza y la desigualdad, dando a poblaciones en condición de vulnerabilidad, la posibilidad de un futuro digno a través de oportunidades de trabajo.', 'null', 'null', 'null', 'null'),
('Mauricio', 'Zuluaga', '805027282', 'gerencia@spectra.com.co', 3, 'Spectra ', 'Ceo', 'Www.spectra.com.co', 'Más de 500 millones', 'Empresa integradora de tecnología en transformación hacía Desarrollo de Software con IA', 'null', 'null', 'null', 'Estrategia: ¿Cómo crear una empresa con triple impacto?'),
('Juan Esteban', 'Sotelo', '900526893-3', 'jeansatefano@gmail.com', 3, 'DNA MUSIC ', 'MAnager', 'https://www.dnamusic.edu.co/', 'Más de 500 millones', 'Somos una Academia de Dj’s, productores y técnicos en audio; nuestro objetivo es cumplir los sueños artísticos de nuestros estudiantes.', 'No se me generan aun dudas, en la marcha saldran dudas.', 'No se me generan aun dudas, en la marcha saldran dudas.', 'No se me generan aun dudas, en la marcha saldran dudas.', 'Ventas: Herramientas para potenciar mis ventas online B2C'),
('Alejandro', 'Murillo', '16839639', 'laboxlaser@gmail.com', 3, 'Labox Láser ', 'Director operativo ', 'laboxlaser.com ', 'Hasta 70 millones', 'Somos una empresa de regalos corporativos, trofeos y recordatorios innovadores y 100% personalizados. ', 'null', 'null', 'null', 'null'),
('Fernando', 'Jinete', '81715098', 'fernando.jinete@gmail.com', 3, 'Personal', 'Docente universitario', 'null', 'Todavía no facturo', 'Interés personal y académico en temas de financiamiento para emprendimientos de alto impacto. ', 'Inversionistas para emprendimientos de alto impacto', 'Inversionistas para emprendimientos de alto impacto', 'null', 'null'),
('Jose', 'Mira', '900669792-1', 'jose@clonkapp.com', 3, 'Clonk', 'CTO', 'https://clonkapp.com', '71 millones a 150 millones', 'Clonk es una aplicación web de gestión humana con el que nuestros clientes logran construir una mejor experiencia para sus empleados, bajando así la rotación laboral y logrando una mejor rentabilidad', 'null', 'null', 'null', 'Estrategia: Métricas de salud de negocio'),
('Angela', 'Medina', '900669792', 'angela@clokapp.com', 3, 'Clonk', 'Gerente Mercadeo y Ventas | Co-fundadora', 'clonkapp.com', '71 millones a 150 millones', 'Software de recursos humanos para la gestión de turnos de trabajo', 'null', 'Si tengo un software as a service, cómo expandirme a paises de latinoamerica remotamente?', 'null', 'Finanzas & Fundraising: ¿Cómo mantener mis finanzas ordenadas desde el día 1?'),
('Liliana', 'Araujo', '80932306', 'servicioalcliente@lilianurse.com', 3, 'Lilianurse SAS', 'CEO', 'https://www.lilianurse.com', '151 millones a 200 millones', 'Solicita una enfermera por internet.', 'null', 'null', 'null', 'null'),
('NATALIA', 'MERCADO', '901378153-1', 'nmercado@tolist.co', 3, 'TOLIST SAS', 'GERENTE', 'TOLIST.CO', 'Hasta 70 millones', 'TOLIST ES UNA RED QUE BUSCA ELEVAR LOS NIVELES DE CALIDAD EDUCATIVA A TRAVES DE LA COMERCIALIZACION DE UTILES ESCOLARES', 'COMO CAPTAR NUEVOS CLIENTES  Y AUMENTAR LAS VENTAS', 'COMO POTENCIALIZAR Y EXPLOTAR LAS AREAS DE INNOVACION DE LA EMPRESA', 'null', 'null'),
('Kathy', 'Lora', '901.008.575-8 ', 'gerencia@tecneo.co', 3, 'Tecneo ', 'Gerente', 'www.tecneo.co', '251 millones a 500 millones', 'Desarrollamos estrategias digitales a las marcas. Marketing digital, social media, apps, ecommerce y páginas web. ', 'Mejorar rentabilidad ', 'null', 'null', 'null'),
('William', 'McCormick', '79379976', 'wamccb@gmail.com', 3, 'Inversiones Anglia SAS', 'Gerente', 'www.hipomoto.com', '71 millones a 150 millones', 'Red de centros de servicio de mantenimiento para motocicletas que pretendemos escalar a nivel nacional a través de franquicias.', 'Fuentes de capital disponibles para financiar la expansion a nivel nacional', 'Ensamblar un equipo de alto desempeño', 'null', 'null'),
('Cesar Augusto', 'Calderon Pineda', '900745496-1', 'gerencia@gevain.com', 3, 'GEVAIN', 'CEO', 'www.gevain.com', '251 millones a 500 millones', 'Empresa dedicada a la prestación de servicios de valoración de bienes muebles y inmuebles.', 'null', 'null', 'null', 'Estrategia: Métricas de salud de negocio'),
('Anthony', 'Guzman Lopez', '900602304-2', 'aguzmanl@ingenierosunoa.com.co', 3, 'INGENIEROS UNOA', 'Director operativo', 'www.ingenierosunoa.com.co', 'Hasta 70 millones', 'Consultoria en el sistema SAP Business One, y desarrollo de software.', 'null', 'null', 'null', 'Estrategia: ¿Cómo monetizar mi data?'),
('Angelica', 'Bohroquez', '901228538', 'angelica@komercia.co', 3, 'Komercia Latam SAS', 'CEO', 'https://komercia.co/', '71 millones a 150 millones', 'Komercia is a cloud platform for creating online stores with powerful e-commerce  tools to manage the business in one place. Quick and easy to set up 1 click  ', 'Estrategias comprobadas para SAAS  B2B de ecommerce ', 'null', 'null', 'null'),
('Javier', 'Cangas', 'NIT: 901219444_7', 'gerencia@neco-power.com', 3, 'Neco power sas', 'Socio', 'null', 'Todavía no facturo', 'Aprovechamiento residuos organicos via biogas y compostajd', 'null', 'null', 'null', 'null'),
('Mauricio', 'Buritica', '900232815', 'mb@bsmart.com.co', 3, 'B Smart E U ', 'CEO', 'Www.bsmart.com.co', 'Más de 500 millones', 'Somos una empresa de desarrollo de iot, hardware para automatizacion de edificios, casas y de la espacios en general. ', 'Como estructurar la presentacion para medios virtuales.', 'null', 'null', 'null'),
('Eder', 'Padilla', '901477923', 'comercial@dejorwoods.com', 3, 'Dekorwoods', 'Gerente ', 'null', 'Todavía no facturo', 'Empresa de fabricación de muebles en madera ', 'Cómo empezar a crear estrategias para generar ventas ', 'Estrategias para generar ventas', 'null', 'null'),
('Victor de Jesús', 'Ortega Hernández', '1102828246', 'comercial@raspow.com', 3, 'Raspow', 'Gerente ', 'www.raspow.com', '251 millones a 500 millones', 'Somos una empresa dedicada a producción y comercialización de bebidas refrescantes de tradición ', 'Cómo valorizar mi empresa ', 'Cómo apalancarnos financieramente para lograr expansión ', 'null', 'null'),
('Rodrigo', 'Navarro', '72134968', 'rodrigo@appalanca.com', 3, 'Appalanca LLC', 'CEO', 'Appalanca.com ', '71 millones a 150 millones', 'Empresa Internacional de Consultoría.Oficina principal en el área de Washington DC', 'null', 'null', 'null', 'Estrategia: ¿Cómo mejorar o mantener la experiencia de nuestros clientes B2C por medio de la virtualidad?'),
('Juan', 'Afanador', '1020742158', 'juan@mimegafono.com', 3, 'Mi Megafono', 'Director operativo', 'Mimegafono.com', '151 millones a 200 millones', 'Somos un marketplace de publicidad en medios tradicionales', 'null', 'null', 'null', 'null'),
('Juan Manuel', 'Cuevas', '1032441410', 'info@theboxxx.co', 3, 'theboxxx', 'CEO', 'Theboxxx.co', 'Todavía no facturo', 'Experiencias eroticas para el empoderamiento sexual femenino', 'null', 'null', 'null', 'null'),
('Santiago', 'Correa', '901351771', 'santiago@sioma.app', 3, 'Sioma', 'CEO', 'www.sioma.app', 'Más de 500 millones', 'Sioma desarrolla un ecosistema tecnologico para la agricultura tropical que simplificala recoleccion y el analisis de la informacion con el objetivo de aumentar la productividad agricola del mundo.', 'Necesito ejecutar una ronda de Inversion. Que debo hacer y que debo evitar.', 'null', 'null', 'null'),
('Merian', 'Araujo', '900828287-6', 'maraujo@agenciapopuli.com', 3, 'Pópuli SAS', 'Directora de Marketing Innovation', 'www.agenciapopuli.com', 'Más de 500 millones', 'Agencia de publicidad ubicada en Barranquilla, con operaciones a nivel nacional. Somos contadores de historias y creadores de experiencias. ', 'Desde mi área de negocio, ¿cómo identifico proyectos de la agencia con potencial de innovación?', 'Profundizar más sobre experiencias virtuales', 'null', 'null'),
('Daniel', 'Paredes', '900662278', 'daniel23paredes@hotmail.com', 3, 'Converging Technologies', 'Consultor', 'www.ctechnologies.co', '201 millones a 250 millones', 'Asesora con nuevo emprendimiento, localiin, desarrollo web para conectar a la oferta de experiencias locales (amigos locales) con personas que deseen vivir esta experiencia.', 'null', 'null', 'null', 'null'),
('DIEGO', 'CASTRESANA', '890112801', 'dcastres@uninorte.edu.co', 3, 'HOSPITAL UNIVERSIDAD DEL NORTE', 'CEO', 'https://www.uninorte.edu.co/web/hospital', 'Más de 500 millones', 'SOMOS UN HOSPITAL QUE PRESTA SEVRICIOS DE SALUD, URGENCIAS, HOSPITALZIACIÓN, CIRUGIA Y CONSULTA EXTERNA.', 'null', 'null', 'null', 'null'),
('Pedro', 'Noguera', '900789218-1', 'gerencia@pngweb.co', 3, 'PNG technology solutions', 'CEO', 'www.pngweb.co', 'Más de 500 millones', 'Somos una empresa Colombiana dedicada al desarrollo de software a la medida.', 'null', 'null', 'null', 'Estrategia: ¿Cómo mejorar o mantener la experiencia de nuestros clientes B2C por medio de la virtualidad?'),
('CIELO', 'ALTAMAR', '890112801', 'hun_asistdireccion@uninorte.edu.co', 3, 'HOSPITAL UNIVERSIDAD DEL NORTE', 'ASISTENTE DE DIRECCION', 'https://www.uninorte.edu.co/web/hospital', 'Más de 500 millones', 'PRESTAMOS SERVICIOS DE SALUD, URGENCIAS, HOSPITALIZACIÓN, UCI, CONSULTA EXTERNA,.', 'null', 'null', 'null', 'null'),
('Myrna', 'Meyer', '39.048.387', 'myrnameyer@gmail.com', 3, 'Appalanca LLC', 'Business Development Director', 'Www.appalanca.com', '71 millones a 150 millones', 'Appalanca es una empresa de consultoría, experta en acompañar empresas a penetrar en nuevos mercados.', 'null', 'null', 'null', 'Transformación digital: ¿Cómo abordar la transformación digital de mi empresa?'),
('Melissa', 'Collante', '55305771', 'info@appalanca.com', 3, 'Appalanca LLC', 'Director de Operaciones LATAM', 'appalanca.com', '71 millones a 150 millones', 'Appalanca es una empresa de consultoría, experta en acompañar empresas a penetrar en nuevos mercados.', 'null', 'null', 'null', 'Estrategia: ¿Cómo mejorar o mantener la experiencia de nuestros clientes B2C por medio de la virtualidad?'),
('Laura', 'Perdomo', '1140891775', 'lauhperdomo@gmail.com', 3, 'Agencia Populi ', 'Ejecutiva Digital', 'www.agenciapopuli.com', 'Más de 500 millones', 'Agencia de comunicación, mercadeo y publicidad ', 'null', 'null', 'null', 'null'),
('Jaime', 'Giraldo', '900662278-5', 'info@ctechnologies.co', 3, 'Converging Technologies', 'Asesor de innovación', 'www.ctechnologies.co', '201 millones a 250 millones', 'Localiin, intramprendimiento tecnológico que conecta "amigos" locales con personas interesadas en vivir experiencias realmente locales en la ciudad donde estén.', '¿Cómo crear una comunidad digital alrededor de un modelo de negocio?', '¿Cómo acelerar rápidamente un modelo de negocio digital en Colombia?', 'null', 'null'),
('Marcelo', 'Conto', '0102699576', 'marceloconto1@gmail.com', 3, 'Traby', 'Fundador', 'www.traby.app', 'Todavía no facturo', 'Conectamos personas con oportunidades de trabajo', 'Como identificar los mecanismos para crecer', 'En que debemos enfocarnos mas', 'Como mejorar experiencia de usuario', 'Estrategia: ¿Cómo monetizar mi data?'),
('Santiago', 'Morales', '9007645835', 'santiagom@talentu.co', 3, 'Talentu', 'CGO', 'www.talentu.co', 'Más de 500 millones', 'Talentu es la HR Tech Colombia, que busca elevar la productividad de Latinoamerica.', 'null', 'null', 'null', 'Estrategia: ¿Cómo mejorar o mantener la experiencia de nuestros clientes B2C por medio de la virtualidad?'),
('Ruby', 'Marquez', '901235909-7', 'gerencia@mesolutions.co', 3, 'Strallie Group', 'Gerente', 'www.mesolutions.co', '201 millones a 250 millones', 'Proveer soluciones a escenarios de transformación en procesos, personas, tecnología y clientes, las cuales impacten positivamente la productividad y la rentabilidad de nuestros aliados.', 'null', 'null', 'null', 'Finanzas & Fundraising: ¿Cómo conocer el valor de mi compañía?');


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
