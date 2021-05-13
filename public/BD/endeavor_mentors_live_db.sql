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
('jose.mora@databiz.co', 10, 'me gustó mucho la organización, los mentores y el contenido. '),
('juan.acevedo@malakaigroup.com', 9, 'interesante compartir visión y experiencia del mentor y los participantes'),
('juan.pena@endeavor.org.co', 10, ''),
('felipechaparro28@gmail.com', 10, ''),
('felipe@elsocio.tv', 9, 'muchas gracias, fue muy edificante contar con la experiencia de cada uno de los mentores, en los diferentes temas totalmente satisfactorio y espero seguir con endeavor para lo siguiente '),
('sales@waxa.co', 10, 'Muy poderoso y muy práctico para tomar acción. '),
('jose.cabello@live.com', 8, ''),
('diana.rodriguez@malakaigroup.com', 10, 'Muy interesante el espacio, aunque considero que el tiempo es algo corto y mas teniendo en cuenta las dificultades tecnicas del inicio. Sin embargo muy interesante y me gustaria conocer mas de ustedes.'),
('lospantolocos@gmail.com', 10, 'Muy importante, corto pero sabroso\r\n'),
('director@ubuntec.net', 10, ''),
('potencializamos@gmail.com', 8, 'Oportuno, facilitadores preparados y empapados de sus temas '),
('clara@transformaciondenegocios.com', 10, 'Aprendí mucho, gracias. Con algunos mentores pude desde tener una visión de cambio y pasos para llevarla a cabo. Muy valiosa la experiencia de cada mentor y cómo desde su rol puede jalonar y motivar para enfrentar mis desafíos empresariales.'),
('dtecnica@labgella.com', 10, 'Excelente.'),
('walterdll@hotmail.com', 9, 'Muy bueno, al inicio me enviaron a la reunion equivocada, pero luego se resolvieron los problemas. Creo que hace falta un poco mas de networking, donde podamos comparir con los demas participanes sobre lo que hace cada uno, y donde contactarnos.'),
('info@fundaciongero.org', 10, ''),
('jg@workki.com.co', 10, 'Buenísimo!'),
('ana.rocha@endeavor.org.co', 10, ''),
('kennybarriosjure1@gmail.com', 10, 'por favor hagannn más genialll, el calibre de los mentores es brutallllllllll, gracias'),
('q2masquequeso@gmail.com', 10, 'el evento totalmente positivo , aportante y constructivo . como única recomendación que siempre se muestren algunas diapositivas que nos sirvan de ayuda ,, mil gracias '),
('alexbenavides28@gmail.com', 3, 'Dos de las tres sesiones en las que participe no abordaron el tema principal, es decir no resolvieron la pregunta de la sesión, los moderadores no facilitan la interacción de los participantes, no hay un control y manejo de tiempo para resolver preguntas y se dispersa hacia el contenido principal. La única por la cual rescato al evento es la primera sesión de Marketing con el CEO de Allegra  al igual que su moderador.'),
('curibe@smartcommerceinc.com', 8, ''),
('caldas.juancamilo@gmail.com', 10, 'muy valiosa la informacion recibida'),
('bioflycolombia@gmail.com', 9, 'Interesante, creo que si pueden segmentar un poco más las iniciativas tecnologia, alimentos, legal, logística, educación u otros seria genial '),
('gerencia@huevocreativo.com', 10, ''),
('pasantecaribe@endeavor.org.co', 10, ''),
('francisco@salu.com.co', 8, 'En lo personal, hubo molestias logísticas en el principio y errores en la comunicación. Pero de resto bien. Valió la pena'),
('luis.lorenzo@f2x.com.co', 7, 'Bien organizado. Muchas Gracias. El nivel algo disparejo. Quizá compartir a priori quién está en la reunión y los temas de interés de cada persona ayudaría a alinear la reunión, incluso a favorecer contactos 1 a 1, hacer las preguntas y respuestas más cándidas y profundas. '),
('nicolas@honestocafe.com', 10, 'Excelente'),
('sabbathcolombia@gmail.com', 7, 'Siento que deberia haberse dado una intervención inicial del ponente de al menos 15 - 20 minutos, para hablar de los temas generales y responder a la pregunta que se planteaba y ahi si entrar uno a preguntar, porque asi de 0 o casi 0 la verdad uno no tiene como muchas dudas establecidas'),
('gerenciacomercial@tiablanca.com', 7, 'El evento fue bueno, importante los grupos con poca gente para tener espacio para preguntas. '),
('mccordova@clubdeinnovacion.co', 9, 'Les voy a mandar un mail a con feedback detallado del evento a Ana María Rocha y a Camila Morales. En resumen, me encantó. ¡Gracias! :) '),
('print@calamus.com.co', 10, ''),
('alfredovegasaltaren@gmail.com', 10, 'Es una oportunidad única para dialogar con líderes empresariales de hoy'),
('carlosc.18100@gmail.com', 10, 'Excelente evento, gracias a la fundaciôn Endeavor por todo lo que hace por el ecosistema de emprendimiento del paîs. '),
('jlizaraz@ecoeffy.com', 10, 'Muchas gracias por la coordinación de tan buenos participantes'),
('paulacgalop@gmail.com', 10, ''),
('katyaquiroz@hotmail.com', 10, 'Muy enriquecedor! Me hubiera encantado conocer otras temáticas, pues el tema de MARKETING DIGITAL se agotó demasiado pronto.  Esperamos que puedan hacer uno basado especificamente en el.  Gracias gracias gracias'),
('imayorga@changeamericas.com', 6, 'Algunos mentores no eran específicos en sus respuestas, daban respuestas generales sin ejemplos o experiencias vividas. Es importante que proporcionen más método en los comos. '),
('ricardo.aya@bidomusic.com', 10, 'Gracias'),
('lbaldovino.calamus@gmail.com', 10, ''),
('javier@tectonico.com.co', 10, ''),
('nathalia.serna@malakaigroup.com', 9, ''),
('jgarzonebrath08@gmail.com', 9, ''),
('jcamperos91@gmail.com', 10, 'Excelente'),
('angie.meneses.gil@gmail.com', 9, ''),
('roma@pidebeni.com', 6, 'La logística de las salas no fue buena. '),
('lucianos.ap17@gmail.com', 3, 'Muy buenos mentores, la calidad y experiencia de cada uno es increíble. Sin embargo, al no haber un moderador y una estructura de preguntas las respuestas era respondiendo a solo los que preguntaban. La calidad de las preguntas no eran tan buenas y no le generaba valor a los demás participantes en la sala, se centraban en los proyectos puntuales de cada uno. Por ejemplo, en varias charlas nunca respondieron la pregunta principal de la charla como en \"¿Cómo prepararme para buscar capital y cómo estimar el monto?\"'),
('mapombo@vaovatravel.com', 9, ''),
('jd.cardeno@gmail.com', 10, ''),
('juliancrg@gmail.com', 8, 'En la primera sesión \"¿Cómo hacer una correcta planeación financiera para optimizar mis recursos?\" con Alba, no me gustó que se llevó casi la mitad de la mentoría una conversación con 1 solo participante. Ojalá en todas las mentorías se hubiera hecho lo que aquí se hizo en \"¿Cómo liderar la generación de nuevos productos?\", al recopilar los nombres del los libros y de los recursos (white papers). '),
('salvatoredirector@gmail.com', 10, 'Me parceció totalmente increíble la calidad del contenido, los speakers estuvieron excelente, me encantó lo personalizado, lo VIP. Me gustó mucho el énfasis y ánimo de dar respuestas a todas las preguntas. Sin duda, me encantaría que se haga más seguido. Propuestas: Tener una ficha de cada usuario con ingo general de la empresa y redes para hacer networking con otros emprendedores. 2: redes sociales y correo del speaker. Mil gracias!\r\n\r\nDaniel Salvatore, CEO Megapixel Group.'),
('adrimorr1@hotmail.com', 10, 'Extraordinaria oportunidad! gracias por compartir conocimiento. Una muy efectiva herramienta para impactar el emprendimiento y asi el pais.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `records`
--

CREATE TABLE IF NOT EXISTS `records` (
  `email` varchar(50) NOT NULL,
  `first_session` tinyint(4) NOT NULL,
  `second_session` tinyint(4) NOT NULL,
  `third_session` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `records`
--

INSERT INTO `records` (`email`, `first_session`, `second_session`, `third_session`) VALUES
('administracion@protesisadv.com', 12, 20, 4),
('administrador@gtcingenieria.com', 11, 19, 8),
('administrativa@ubuntec.net', 4, 15, 20),
('administrativo@mscol.co', 3, 15, 21),
('adrimorr1@hotmail.com', 6, 7, 14),
('alanmauriciopinto@gmail.com', 19, 14, 21),
('albertomejia@ambientalmente.com', 19, 6, 13),
('alejandro.mesa@entornojuridico.co', 20, 10, 13),
('alejandrojpf@hotmail.com', 23, 13, 15),
('alexander.jimenezf@outlook.com', 13, 14, 8),
('alexbenavides28@gmail.com', 6, 4, 3),
('alfredovegasaltaren@gmail.com', 6, 13, 19),
('alianzas@ubuntec.net', 7, 10, 14),
('amoryartefundacion@gmail.com', 7, 14, 5),
('andres@dopamini.com', 2, 4, 12),
('andreshdzz@hotmail.com', 22, 8, 5),
('andresidra@gmail.com', 16, 12, 21),
('angie.meneses.gil@gmail.com', 17, 12, 14),
('angievanerivera070@gmail.com', 4, 6, 12),
('arq.negocio@ubuntec.net', 21, 18, 22),
('baruch.abin@gmail.com', 17, 16, 9),
('bioflycolombia@gmail.com', 12, 8, 2),
('caldas.juancamilo@gmail.com', 14, 9, 13),
('camilaobandob@gmail.com', 23, 9, 5),
('camilo@churnless.ai', 24, 14, 6),
('camilo@peewah.co', 21, 25, 4),
('carlos.serrano@publicom.co', 11, 19, 17),
('carlosc.18100@gmail.com', 5, 2, 16),
('carlosdonado@hotmail.com', 9, 5, 11),
('charly@elemento43.com', 1, 2, 3),
('clara@transformaciondenegocios.com', 13, 24, 25),
('claudiocastrillonz@gmail.com', 6, 19, 9),
('cmauriciovelasquez@hotmail.com', 2, 1, 14),
('cmtechnologysas@gmail.com', 24, 12, 12),
('comercial@angopi.co', 10, 6, 21),
('comercial@retoucherie.com.co', 3, 13, 18),
('contabilidad@tectonico.com.co', 5, 22, 10),
('contactbolivia@gmail.com', 13, 14, 19),
('contacto@eys-solutions.co', 1, 2, 23),
('curibe@smartcommerceinc.com', 1, 4, 2),
('danielcuervo@datatraffic.com.co', 14, 12, 24),
('david.garcia@fruttec.co', 14, 22, 24),
('dbaenavargas@gmail.com', 22, 11, 4),
('diana.garzon@somostunegocio.com', 7, 13, 2),
('diana.rodriguez@malakaigroup.com', 7, 2, 8),
('director@ubuntec.net', 1, 2, 3),
('distintocolombia@gmail.com', 14, 5, 17),
('dlopez@neu.com.co', 6, 13, 18),
('dotero@muvobike.com', 15, 3, 7),
('dr.ivanperez@tupediahome.com', 11, 21, 11),
('dtecnica@labgella.com', 19, 15, 16),
('eric@bbelanguages.com', 11, 10, 22),
('erika@dsd.dev', 9, 5, 20),
('fcastro@cesionbnk.com', 21, 25, 1),
('felipe@elsocio.tv', 7, 12, 10),
('felipechaparro28@gmail.com', 8, 14, 22),
('felipefalla@whitmanstore.com', 11, 24, 5),
('fpenate@convergentsecurity.com.co', 4, 3, 6),
('francisco@salu.com.co', 3, 1, 4),
('Fredy.abella@gamescol.co', 11, 10, 17),
('gabriel.maria@cargoapp.com.co', 13, 1, 6),
('gerencia@bionix.com.co', 16, 1, 3),
('gerencia@electricosei.com', 1, 1, 1),
('gerencia@gatitud.com', 24, 17, 14),
('gerencia@huevocreativo.com', 13, 9, 6),
('gerencia@itranslate.com.co', 3, 17, 15),
('gerencia@kipclin.com', 24, 6, 1),
('gerencia@locativo.co', 12, 13, 10),
('gerencia@meelacademia.com', 8, 19, 9),
('gerencia@nicalimpresores.com', 8, 7, 13),
('gerencia@rimsagroup.com', 6, 3, 11),
('gerenciacomercial@tiablanca.com', 9, 4, 7),
('gerenciaoperativa@inpre.com.co', 24, 12, 14),
('gmontana@credifomento.com', 1, 6, 3),
('gmontana@oplcolombia.com', 12, 6, 3),
('gustavo@comidin.com', 23, 25, 5),
('imayorga@changeamericas.com', 13, 14, 3),
('info@cityprime.club', 17, 10, 2),
('info@creva.co', 6, 4, 23),
('info@fundaciongero.org', 17, 4, 7),
('info@smor.life', 11, 4, 7),
('inmerdome@gmail.com', 19, 17, 1),
('jairo.munoz@efena.co', 19, 14, 17),
('jairo.villaveces@certainternacional.com', 8, 10, 4),
('jarahara@hotmail.com', 13, 11, 9),
('javier@suplai.app', 12, 13, 9),
('javier@tectonico.com.co', 4, 1, 3),
('jcamperos91@gmail.com', 7, 20, 19),
('jcespedes@vaovatravel.com', 25, 22, 2),
('jd.cardeno@gmail.com', 11, 21, 9),
('je.ramirezmaya@gmail.com', 3, 5, 13),
('jg@workki.com.co', 3, 4, 10),
('jgarzonebrath08@gmail.com', 17, 10, 9),
('jlizaraz@ecoeffy.com', 2, 6, 3),
('jomaxdrone@gmail.com', 9, 15, 17),
('jorge.sanjuan@magdalen.com.co', 5, 17, 9),
('jose.cabello@live.com', 1, 3, 19),
('jose.mora@databiz.co', 8, 9, 15),
('jrpinedam@entopro.com.co', 5, 12, 17),
('juan.acevedo@malakaigroup.com', 15, 4, 11),
('juan@valienta.co', 2, 6, 11),
('juanc.puerta@hotmail.com', 11, 17, 1),
('juanestebanduque@ilisto.co', 2, 3, 10),
('juanpablo@vaovatravel.com', 15, 19, 25),
('julian.lopez@gol2soul.com', 10, 4, 1),
('julian@suricatalabs.com', 10, 11, 14),
('julian@ubits.co', 15, 16, 2),
('julianaceballosm@gmail.com', 4, 15, 17),
('juliancrg@gmail.com', 5, 9, 11),
('katyaquiroz@hotmail.com', 8, 19, 9),
('kennybarriosjure1@gmail.com', 7, 23, 5),
('koppsierrasas@gmail.com', 19, 8, 7),
('laayalai@genomaempresarial.com.co', 17, 5, 7),
('lahabanasand@gmail.com', 4, 17, 11),
('lbaldovino.calamus@gmail.com', 10, 7, 13),
('leonardo@ledelab.group', 16, 15, 14),
('leryinfo@gmail.com', 22, 6, 5),
('lilianhani@hotmail.com', 6, 24, 4),
('lina@prisier.com', 19, 17, 13),
('lorena.arias@gamescol.co', 13, 9, 14),
('lorenaortizrivera@gmail.com', 6, 1, 1),
('lospantolocos@gmail.com', 14, 15, 12),
('lucianos.ap17@gmail.com', 17, 2, 3),
('luis.avila@pirpos.com', 5, 12, 4),
('luis.leon@innveca.com', 3, 1, 9),
('luis.lorenzo@f2x.com.co', 10, 3, 2),
('luis@superlikers.com', 12, 2, 12),
('mangoatc1@gmail.com', 5, 17, 12),
('mapombo@vaovatravel.com', 9, 8, 7),
('margaritacastro@dosymedios.com', 19, 9, 17),
('mariaalejandra.velasquez@hotmail.com', 17, 7, 8),
('marisoljolyvillarreal@hotmail.com', 5, 14, 22),
('mccordova@clubdeinnovacion.co', 10, 11, 17),
('mercadeo@tybso.com', 20, 22, 24),
('mercadeo@ubuntec.net', 6, 7, 24),
('mfernandez@camarabaq.org.co', 19, 14, 7),
('miguel@lucysodas.com', 1, 6, 23),
('milena.barreto@nexgen-soluciones.com', 5, 2, 1),
('monica.ramirez@towertechamericas.co', 3, 2, 4),
('monidelae1@gmail.com', 4, 9, 8),
('nathalia.serna@malakaigroup.com', 9, 10, 15),
('nchacon@lavaive.com', 19, 17, 15),
('nicolas@honestocafe.com', 14, 17, 7),
('nogueralecompte@gmail.com', 3, 22, 6),
('oarangor@andali.co', 2, 13, 21),
('opcastano@isa.com.co', 2, 12, 12),
('patricia.fallon@quickbalance.co', 6, 11, 5),
('patricia.lago@qubit.com.co', 10, 3, 13),
('paulacgalop@gmail.com', 7, 19, 4),
('pedro@b2chat.io', 2, 1, 21),
('pedro@inciti.co', 12, 24, 13),
('pnovoa@mscol.co', 8, 13, 6),
('potencializamos@gmail.com', 9, 5, 16),
('pperucho@fundacionbd.org', 9, 14, 17),
('print@calamus.com.co', 10, 7, 13),
('puntadaspremium@gmail.com', 22, 5, 12),
('q2masquequeso@gmail.com', 4, 11, 8),
('ricardo.aya@bidomusic.com', 13, 3, 2),
('rjacir@estructurasjye.com', 4, 11, 18),
('rmr74@mac.com', 1, 3, 11),
('rodrigosanchez-rios@lahaus.com', 20, 7, 2),
('roma@pidebeni.com', 17, 1, 3),
('rubbercorp@hotmail.com', 19, 5, 7),
('sabbathcolombia@gmail.com', 7, 11, 4),
('sales@waxa.co', 13, 7, 6),
('saludosinsignia@gmail.com', 9, 10, 11),
('salvatoredirector@gmail.com', 9, 8, 5),
('santiago@enlau.co', 20, 23, 24),
('sebas@torre.co', 2, 3, 1),
('sebastian2zen@gmail.com', 3, 12, 19),
('sergiosusa104@gmail.com', 14, 19, 5),
('sruap@hotmail.com', 7, 13, 21),
('Tatiana@imuko.co', 1, 5, 21),
('tonyname@yahoo.com', 5, 8, 10),
('viso16@gmail.com', 8, 9, 15),
('vivianarevelo99@gmail.com', 17, 8, 6),
('walterdll@hotmail.com', 2, 9, 1),
('wamccb@gmail.com', 14, 19, 24),
('zunigaanamaria@gmail.com', 12, 7, 24);

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
(1, 'Capital', '¿Qué tipo de inversión necesito de acuerdo a la etapa de crecimiento de mi empresa?', 'https://endeavor-co.webex.com/endeavor-co/onstage/g.php?MTID=e013d3e6faa6b1bac8845762a1a4e45f7', 'NPmks6VqC42'),
(2, 'Capital', 'Panorama de inversión en LATAM.', 'https://endeavor-co.webex.com/endeavor-co/onstage/g.php?MTID=ed45293ed1fc5a99a9c73d9daf716469a', '8MRmedymp54'),
(3, 'Capital', '¿Cómo prepararme para buscar capital y cómo estimar el monto?', 'https://endeavor-co.webex.com/endeavor-co/onstage/g.php?MTID=e0f6dc3d05d72d9e6b8a47db283321cae', 'mAkmSX6Fp35'),
(4, 'Finanzas', '¿Cómo hacer una correcta planeación financiera para optimizar mis recursos?', 'https://endeavor-co.webex.com/endeavor-co/onstage/g.php?MTID=e8874ebe0114d587f3bc6422c7ff6a626', 'xAG6pZxVR54'),
(5, 'Finanzas', '¿Cómo hacer una correcta planeación financiera para optimizar mis recursos? Sala 2.', 'https://endeavor-co.webex.com/endeavor-co/onstage/g.php?MTID=e39fde9b26441a70c4da52e406ceb00a9', 'k7Cdn2nFEY7'),
(6, 'Marketing  y comunicaciones', 'Herramientas de Marketing Digital para impulsar mi compañía.', 'https://endeavor-co.webex.com/endeavor-co/onstage/g.php?MTID=e3db7695142e58efe8c879ee275733659', '4RMiPJgUv73'),
(7, 'Marketing  y comunicaciones', 'Estrategia y manejo de comunicaciones en tiempos de crisis.', 'https://endeavor-co.webex.com/endeavor-co/onstage/g.php?MTID=e354e9af00cc009efe8a9f7e319e5a1e8', '2grMxHnPW23'),
(8, 'Estrategia', '¿Cómo crear una cultura de innovación en mi empresa?', 'https://endeavor-co.webex.com/endeavor-co/onstage/g.php?MTID=ec4682afc28242589223b8942e3187355', '8msJ3KNqu5p'),
(9, 'Estrategia', '¿Cómo liderar la generación de nuevos productos?', 'https://endeavor-co.webex.com/endeavor-co/onstage/g.php?MTID=e4b4b3371a26d2aae44801230249a2885', '2m5pU8382TF'),
(10, 'Estrategia', '¿Cómo redefinir mi estrategia con base en los grandes cambios en el mundo?', 'https://endeavor-co.webex.com/endeavor-co/onstage/g.php?MTID=e4a93dd0996016d38b6a4ac08cc27d0a9', '2mnVpsy8Yf6'),
(11, 'Estrategia', '¿Cómo mapear los riesgos principales de mi empresa?', 'https://endeavor-co.webex.com/endeavor-co/onstage/g.php?MTID=ea353b188632ca965efe0fd1b5d1be932', 'ruSaiK5GS39'),
(12, 'Capital', '¿Qué tipo de inversión necesito de acuerdo a la etapa de crecimiento de mi empresa? Sala 2.', ' https://endeavor-co.webex.com/endeavor-co/onstage/g.php?MTID=e9b16284ccaf1308a14233de85cc6fe38', '8JdtdNRju39'),
(13, 'Ventas', '¿Cómo pasar de un proceso de venta presencial a uno virtual? (B2B)', 'https://endeavor-co.webex.com/endeavor-co/onstage/g.php?MTID=e1d89637a926cdc1b463ed84375561923', 'MggY896bjq8'),
(14, 'Ventas', 'Transición de canales físicos a canales digitales para venta y distribución.', 'https://endeavor-co.webex.com/endeavor-co/onstage/g.php?MTID=e19840ca2dc49f2a49f0c7fe6e91474f3', 'drHmPHYX893'),
(15, 'Talento', 'Motivación y productividad de equipos remotos.', 'https://endeavor-co.webex.com/endeavor-co-sp/onstage/g.php?MTID=e71c28443e8803ccaab317d989eba711d ', '3xJa4AcDJp7'),
(16, 'Talento', 'Contratación y onboarding virtual de nuevos equipos.', 'https://endeavor-co.webex.com/endeavor-co/onstage/g.php?MTID=e0322919c10bff856890c4bfbb78690c6', 'mgMWC6xEh25'),
(17, 'Tecnología', '¿Qué plataformas o herramientas de tecnología pueden potencializar mi empresa?', 'https://endeavor-co.webex.com/endeavor-co/onstage/g.php?MTID=eecb377e82285f1bbfb8db989df108252', '2HAz6Uax9yp'),
(18, 'Tecnología', '¿Cómo aumentar la ciberseguridad de mi empresa?', 'https://endeavor-co.webex.com/endeavor-co/onstage/g.php?MTID=ebffe12fc434cfc6576858b2359253742', 'dTgAAjP36H8'),
(19, 'Tecnología', '¿Cómo acelerar la transformación digital de mi empresa?', 'https://endeavor-co.webex.com/endeavor-co/onstage/g.php?MTID=edda05b4482b88480cbc3d6d67b19c0c4', '7kmNH5rVB9h'),
(20, 'Talento', 'Herramientas para un buen manejo de talento frente a la situación actual.', 'https://endeavor-co.webex.com/endeavor-co/onstage/g.php?MTID=e0b40b0e29c0205c5f789e0dcc7dce244', 'YUtp4Pgkh73'),
(21, 'Legalidad', '¿Cómo asegurar un correcto tratamiento de datos?', 'https://endeavor-co.webex.com/endeavor-co/onstage/g.php?MTID=e8b8f4e7e054afbaaa20a95f4c3bfdf82', 'HwY3jMhu7f3'),
(22, 'Operaciones', '¿Cómo reestructurar y adaptar mis operaciones a la nueva realidad?', 'https://endeavor-co.webex.com/endeavor-co/onstage/g.php?MTID=e920118e82c2b2f43edf1d4a33c6a0105', 'T3akV7rpn8t'),
(23, 'Sectores', '¿De qué manera sobrepasar los desafíos actuales de los restaurantes?', 'https://endeavor-co.webex.com/endeavor-co/onstage/g.php?MTID=e87dd0e21021e49c8078e861a4365ee53', 'Z74SfxA22jY'),
(24, 'Sectores', 'Panorama, retos y desafíos del sector retail (B2C)', 'https://endeavor-co.webex.com/endeavor-co/onstage/g.php?MTID=e8de165558b6807960f2c6590ecddc22e', 'PRqf9uGNM32'),
(25, 'Sectores', 'Una conversación alrededor de los mayores retos que enfrenta el turismo.', 'https://endeavor-co.webex.com/endeavor-co/onstage/g.php?MTID=e144ed5f2e283e15c97142543d055ec2c', 'x7A3PFiFbD3');

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
('silvia.florez@endeavor.org.co', 2),
('daniel.bayram@endeavor.org.co', 3),
('carlos.crismatt@endeavor.org.co', 4),
('mariana.pineres@endeavor.org.co', 5),
('sebastian.lozano@endeavor.org.co', 6),
('ana.rocha@endeavor.org.co', 7),
('alejandro.rojas@endeavor.org.co', 8),
('jimena.lopez@endeavor.org.co', 9),
('pasanteseleccion@endeavor.org.co', 10),
('maria.uribe@endeavor.org.co', 11),
('pasantemedellin@endeavor.org.co', 12),
('manuela.matamala@endeavor.org.co', 13),
('nicolas.toro@endeavor.org.co', 14),
('juan.pena@endeavor.org.co', 15),
('pasantecaribe@endeavor.org.co', 16),
('valentina.pachon@endeavor.org.co', 17),
('estefania.arenas@endeavor.org.co', 18),
('erika.vergara@endeavor.org.co', 19),
('susana.restrepo@endeavor.org.co', 20),
('lina.gomez@endeavor.org.co', 21),
('juliana.covezdy@endeavor.org.co', 22),
('felipe.comi@endeavor.org.co', 23),
('mateo.rodriguez@endeavor.org.co', 24),
('alejandra.gonzalez@endeavor.org.co', 25),
('sara.buitrago@endeavor.org.co', 8);

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
  `id` int(13) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Tipo` tinyint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`Name`, `Last_name`, `id`, `Email`, `Tipo`) VALUES
('Juan', 'Arboleda', 900873674, 'administracion@protesisadv.com', 3),
('Adrian', 'Paramo', 830146140, 'administrador@gtcingenieria.com', 3),
('Carolina', 'Hoyos', 901338373, 'administrativa@ubuntec.net', 3),
('Brayan', 'Ramos', 1003558462, 'administrativo@endeavor.org.co', 2),
('Sandy', 'Alvarez', 900596632, 'administrativo@mscol.co', 3),
('Adriana', 'Moreno', 51776542, 'adrimorr1@hotmail.com', 3),
('Alan', 'Pinto', 1019015792, 'alanmauriciopinto@gmail.com', 3),
('Alberto', 'Mejia', 900046501, 'albertomejia@ambientalmente.com', 3),
('Alejandra', 'Gonzalez', 52867412, 'alejandra.gonzalez@endeavor.org.co', 2),
('Alejandro', 'Mesa', 1037594303, 'alejandro.mesa@entornojuridico.co', 3),
('Alejandro', 'Rojas', 1032474634, 'alejandro.rojas@endeavor.org.co', 2),
('Alejandro', 'Perez', 16298025, 'alejandrojpf@hotmail.com', 3),
('Alexander', 'Jimenez', 1026576269, 'alexander.jimenezf@outlook.com', 3),
('Elkin', 'Miticanoy', 1122783493, 'alexbenavides28@gmail.com', 3),
('Alfredo', 'Vega', 806014963, 'alfredovegasaltaren@gmail.com', 3),
('Andrea', 'Canon', 901338373, 'alianzas@ubuntec.net', 3),
('Ruben', 'Agudelo', 901019549, 'amoryartefundacion@gmail.com', 3),
('Ana Maria', 'Rocha', 53066468, 'ana.rocha@endeavor.org.co', 2),
('Andres', 'Astaiza', 901219488, 'andres@dopamini.com', 3),
('Andres', 'Hernandez', 1093767287, 'andreshdzz@hotmail.com', 3),
('Andres', 'Rios', 900640137, 'Andresidra@gmail.com', 3),
('Angela', 'Meneses', 1019081803, 'angie.meneses.gil@gmail.com', 3),
('Angie', 'Rivera', 1147688089, 'Angievanerivera070@gmail.com', 3),
('Edison', 'Monroy', 901338373, 'arq.negocio@ubuntec.net', 3),
('Baruch', 'Abin', 140214565, 'baruch.abin@gmail.com', 3),
('Andres', 'Camargo', 91517435, 'bioflycolombia@gmail.com', 3),
('Juan', 'Caldas', 901330324, 'caldas.juancamilo@gmail.com', 3),
('Camila', 'Morales', 1020790138, 'camila.morales@endeavor.org.co', 1),
('Camila', 'Salamanca', 52694267, 'camila.salamanca@endeavor.org.co', 1),
('Camila', 'Obando', 101526099, 'camilaobandob@gmail.com', 3),
('Camilo', 'Jimenez', 80197281, 'camilo@churnless.ai', 3),
('Camilo', 'Sacanamboy', 901080133, 'camilo@peewah.co', 3),
('Jean Carlos', 'Crismatt', 1143377714, 'carlos.crismatt@endeavor.org.co', 2),
('Carlos', 'Serrano', 901135299, 'carlos.serrano@publicom.co', 3),
('Carlos', 'Chavez', 901362224, 'carlosc.18100@gmail.com', 3),
('Carlos', 'Donado', 900784841, 'carlosdonado@hotmail.com', 3),
('Charly', 'Cardeno', 901212194, 'charly@elemento43.com', 3),
('Clara', 'Mejía', 51924774, 'clara@transformaciondenegocios.com', 3),
('Claudio', 'Castrillon', 900885724, 'claudiocastrillonz@gmail.com', 3),
('Carlos', 'Velasquez', 900413440, 'cmauriciovelasquez@hotmail.com', 3),
('Diana', 'Cardona', 900346079, 'cmtechnologysas@gmail.com', 3),
('David', 'Gonzalez', 900297260, 'comercial@angopi.co', 3),
('Daniel', 'De Echeona', 72345005, 'comercial@retoucherie.com.co', 3),
('Javier', 'Cardenas', 901144081, 'contabilidad@tectonico.com.co', 3),
('Ricardo', 'Marquez', 1875026, 'contactbolivia@gmail.com', 3),
('Edward', 'Ortiz', 901249210, 'contacto@eys-solutions.co', 3),
('Carlos', 'Uribe', 18185931, 'curibe@smartcommerceinc.com', 3),
('Daniel', 'Bayram', 1140855477, 'daniel.bayram@endeavor.org.co', 2),
('Daniel', 'Cuervo', 900304168, 'danielcuervo@datatraffic.com.co', 3),
('David', 'Garcia', 1090392362, 'david.garcia@fruttec.co', 3),
('Daniela', 'Baena', 1020794127, 'dbaenavargas@gmail.com', 3),
('Diana', 'Garzon', 1026273340, 'diana.garzon@somostunegocio.com', 3),
('Diana', 'Rodriguez', 901127736, 'diana.rodriguez@malakaigroup.com', 3),
('Diego', 'Trujillo', 901338373, 'director@ubuntec.net', 3),
('Danilo', 'Pacasuca', 1049627854, 'distintocolombia@gmail.com', 3),
('Daniel', 'Lopez', 1037640615, 'dlopez@neu.com.co', 3),
('Daniel', 'Otero', 900998927, 'dotero@muvobike.com', 3),
('Ivan', 'Perez', 901335957, 'dr.ivanperez@tupediahome.com', 3),
('Mario', 'Garcia', 901329963, 'dtecnica@labgella.com', 3),
('Eric', 'Tabone', 900443292, 'eric@bbelanguages.com', 3),
('Erika', 'Vergara', 1140841368, 'erika.vergara@endeavor.org.co', 2),
('Erika', 'Steel', 901095508, 'erika@dsd.dev', 3),
('Estefania', 'Arenas', 629098, 'estefania.arenas@endeavor.org.co', 2),
('Felipe', 'Castro', 901298003, 'fcastro@cesionbnk.com', 3),
('Felipe', 'Comi', 1020773030, 'felipe.comi@endeavor.org.co', 2),
('Felipe', 'Cepero', 901147488, 'felipe@elsocio.tv', 3),
('Felipe', 'Chaparro', 901362224, 'felipechaparro28@gmail.com', 3),
('Felipe', 'Falla', 900930635, 'felipefalla@whitmanstore.com', 3),
('Fernando', 'Penate', 901125168, 'fpenate@convergentsecurity.com.co', 3),
('Francisco', 'Hernandez', 1085255436, 'francisco@salu.com.co', 3),
('Fredy', 'Abella', 901361057, 'Fredy.abella@gamescol.co', 3),
('Gabriel', 'Mora', 901044175, 'gabriel.maria@cargoapp.com.co', 3),
('Andres', 'Cruz', 901318517, 'gerencia@bionix.com.co', 3),
('Robinson', 'Ruiz', 900139568, 'gerencia@electricosei.com', 1),
('Alvaro', 'Aguirre', 901237108, 'gerencia@gatitud.com', 3),
('Pablo', 'Hincapie', 900931640, 'gerencia@huevocreativo.com', 3),
('Daniel', 'Reyes', 900767264, 'gerencia@itranslate.com.co', 3),
('Tita', 'Ochoa', 43562566, 'gerencia@kipclin.com', 3),
('Marco', 'Garcia', 900943767, 'gerencia@locativo.co', 3),
('Angelica', 'Hernandez', 2147483647, 'gerencia@meelacademia.com', 3),
('Marco', 'Nino', 900614839, 'gerencia@nicalimpresores.com', 3),
('Ruben', 'Arrieta', 900982101, 'gerencia@rimsagroup.com', 3),
('Manuel', 'Florez', 900632403, 'gerenciacomercial@tiablanca.com', 3),
('Andres', 'Gutierrez', 830060016, 'gerenciaoperativa@inpre.com.co', 3),
('Indalecio', 'Dangond', 900432115, 'gmontana@credifomento.com', 3),
('Gustavo', 'Montana', 900432115, 'gmontana@oplcolombia.com', 3),
('Gustavo', 'Jimeno', 80111784, 'gustavo@comidin.com', 3),
('Ivan', 'Mayorga', 830068552, 'imayorga@changeamericas.com', 3),
('Said', 'Henriquez', 900536492, 'info@cityprime.club', 3),
('Lorenzo', 'Ordonez', 2147483647, 'info@creva.co', 3),
('Ximena', 'Velasquez', 35197953, 'info@endeavor.org.co', 2),
('Emiro', 'Romero', 901171178, 'info@fundaciongero.org', 3),
('Paola', 'Acuna', 55313570, 'info@smor.life', 3),
('Carolina', 'Patino', 901128638, 'inmerdome@gmail.com', 3),
('Jaime', 'Guevara', 12345, 'jaimeguevara802@gmail.com', 1),
('Jairo', 'Munoz', 900365194, 'jairo.munoz@efena.co', 3),
('Jairo', 'Villaveces', 900859415, 'jairo.villaveces@certainternacional.com', 3),
('Juan', 'Jaramillo', 900802786, 'jarahara@hotmail.com', 3),
('Javier', 'Cohenar', 900867783, 'javier@suplai.app', 3),
('Javier', 'Nunez', 901144081, 'javier@tectonico.com.co', 3),
('Judith', 'Camperos', 1126708102, 'jcamperos91@gmail.com', 3),
('Jorge', 'Cespedes', 1234, 'jcespedes@vaovatravel.com', 3),
('David', 'Cardeno', 1017159475, 'jd.cardeno@gmail.com', 3),
('Juan', 'Ramirez', 900708449, 'je.ramirezmaya@gmail.com', 3),
('Johnny', 'Gonzalez', 901169701, 'jg@workki.com.co', 3),
('Juan', 'Garzon', 901362224, 'jgarzonebrath08@gmail.com', 3),
('Jimena', 'Lopez', 1032375615, 'jimena.lopez@endeavor.org.co', 2),
('Juan', 'Lizarazo', 901205071, 'jlizaraz@ecoeffy.com', 3),
('Jose', 'Otero', 1234094563, 'jomaxdrone@gmail.com', 3),
('Jordi', 'Herrandiz', 1234, 'jordiherrandiz@hotmail.com', 1),
('Jorge', 'Sanjuan', 1082862413, 'jorge.sanjuan@magdalen.com.co', 3),
('Jose', 'Cabello', 900590424, 'jose.cabello@live.com', 3),
('Jose', 'Mora', 900641482, 'jose.mora@databiz.co', 3),
('Julian', 'Ricardo', 901364918, 'jrpinedam@entopro.com.co', 3),
('Juan', 'Acevedo', 901127736, 'juan.acevedo@malakaigroup.com', 3),
('Juan Carlos', 'Pena', 1044421960, 'juan.pena@endeavor.org.co', 2),
('Juan', 'Vallejo', 901257920, 'juan@valienta.co', 3),
('Juan', 'Puerta', 94556423, 'juanc.puerta@hotmail.com', 3),
('Juan', 'Duque', 901250413, 'juanestebanduque@ilisto.co', 3),
('Juan', 'Toro', 900679700, 'juanpablo@vaovatravel.com', 3),
('Julian', 'Castro', 1020759548, 'julian.castro@endeavor.org.co', 1),
('Julian', 'Lopez', 901335957, 'julian.lopez@gol2soul.com', 3),
('Julian', 'Martinez', 900625607, 'julian@suricatalabs.com', 3),
('Julian', 'Melo', 1032408566, 'julian@ubits.co', 3),
('Juliana', 'Covezdy', 1020804966, 'juliana.covezdy@endeavor.org.co', 2),
('Juliana', 'Ceballos', 1036934629, 'julianaceballosm@gmail.com', 3),
('Julian', 'Riveros', 900373376, 'juliancrg@gmail.com', 3),
('Katya', 'Quiroz', 901178626, 'katyaquiroz@hotmail.com', 3),
('Kenny', 'Barrios', 1090463694, 'kennybarriosjure1@gmail.com', 3),
('Jessica', 'Kopp', 901159971, 'koppsierrasas@gmail.com', 3),
('Luis', 'Ayala', 900825392, 'laayalai@genomaempresarial.com.co', 3),
('Mateo', 'Alfaro', 1234088420, 'lahabanasand@gmail.com', 3),
('Lianny', 'Baldovino', 900614839, 'lbaldovino.calamus@gmail.com', 3),
('Leonardo', 'De La Hoz', 901348085, 'leonardo@ledelab.group', 3),
('Maria', 'Samudio', 901159689, 'leryinfo@gmail.com', 3),
('Lilian', 'Hani', 22519428, 'lilianhani@hotmail.com', 3),
('Lina', 'Gomez', 63550413, 'lina.gomez@endeavor.org.co', 2),
('Lina', 'Restrepo', 901085367, 'lina@prisier.com', 3),
('Edna', 'Arias ', 901361057, 'lorena.arias@gamescol.co', 3),
('Lorena', 'Ortiz', 530660071, 'lorenaortizrivera@gmail.com', 3),
('Juan', 'Baena', 900283031, 'lospantolocos@gmail.com', 3),
('Luciano', 'Parra', 1020798993, 'lucianos.ap17@gmail.com', 3),
('Luis', 'Avila', 900996250, 'luis.avila@pirpos.com', 1),
('Luis', 'Leon', 901185032, 'luis.leon@innveca.com', 3),
('Luis', 'Lorenzo', 323989, 'luis.lorenzo@f2x.com.co', 3),
('Luis', 'Del Castillo', 900369142, 'luis@superlikers.com', 3),
('Gladys', 'Lopez', 1234, 'madeteka10@hotmail.com', 1),
('Javier', 'Flores', 639305, 'mangoatc1@gmail.com', 3),
('Manuela', 'Matamala', 1020783416, 'manuela.matamala@endeavor.org.co', 2),
('Maria', 'Pombo', 900679700, 'mapombo@vaovatravel.com', 3),
('Margarita', 'Castro', 900375117, 'margaritacastro@dosymedios.com', 3),
('Maria Isabel', 'Uribe', 43590393, 'maria.uribe@endeavor.org.co', 2),
('Maria', 'Velasquez', 901283027, 'mariaalejandra.velasquez@hotmail.com', 3),
('Mariana', 'Pineres', 1140898012, 'mariana.pineres@endeavor.org.co', 2),
('Marisol', 'Joly', 900973989, 'Marisoljolyvillarreal@hotmail.com', 3),
('Mary', 'Nunez', 1140870322, 'mary.nunez@endeavor.org.co', 2),
('Mateo', 'Rodriguez', 1020748750, 'mateo.rodriguez@endeavor.org.co', 2),
('Marisella', 'Bravo', 52463950, 'mbravo@endeavor.org.co', 2),
('Maria', 'Cordova', 255598, 'mccordova@clubdeinnovacion.co', 3),
('Camila', 'Gomez', 900600493, 'mercadeo@tybso.com', 3),
('Alonso', 'Loyola', 901338373, 'mercadeo@ubuntec.net', 3),
('Manuel', 'Fernandez', 72204726, 'mfernandez@camarabaq.org.co', 3),
('Miguel', 'Pacheco', 901056206, 'miguel@lucysodas.com', 3),
('Irma', 'Barreto', 900729477, 'milena.barreto@nexgen-soluciones.com', 3),
('Monica', 'Ramirez', 830130274, 'monica.ramirez@towertechamericas.co', 3),
('Monica', 'De la Espriella', 901307707, 'monidelae1@gmail.com', 3),
('Nathalia', 'Serna', 901127736, 'nathalia.serna@malakaigroup.com', 3),
('Nayibe', 'Chacon', 900445888, 'nchacon@lavaive.com', 3),
('Juan', 'Malagon', 1032474811, 'nicolas.malagon@endeavor.org.co', 1),
('Nicolas', 'Toro', 80873949, 'nicolas.toro@endeavor.org.co', 2),
('Nicolas', 'Penagos', 900804184, 'nicolas@honestocafe.com', 3),
('Sonia', 'Noguera', 900989861, 'nogueralecompte@gmail.com', 3),
('Oscar', 'Arango', 900230212, 'oarangor@andali.co', 3),
('Olga', 'Castano', 860016610, 'opcastano@isa.com.co', 3),
('Maria Paula', 'Dominguez', 1124069733, 'pasantecaribe@endeavor.org.co', 2),
('Pedro', 'Quintero', 1037658242, 'pasantemedellin@endeavor.org.co', 2),
('Juan Diego', 'Pulido', 1020834180, 'pasanteseleccion@endeavor.org.co', 2),
('Patricia', 'Fallon', 2147483647, 'patricia.fallon@quickbalance.co', 3),
('Patricia', 'Lago', 830043523, 'patricia.lago@qubit.com.co', 3),
('Patricia', 'Velez', 123456, 'patriciav@ambientegourmet.com', 1),
('Paula', 'Garcia', 1018456241, 'paulacgalop@gmail.com', 3),
('Pedro', 'Jaramillo', 71788639, 'pedro@b2chat.io', 3),
('Pedro', 'Otero', 901061196, 'pedro@inciti.co', 3),
('Pedro', 'Novoa', 900596632, 'pnovoa@mscol.co', 3),
('Tatiana', 'Gutierrez', 900989861, 'potencializamos@gmail.com', 3),
('Paula', 'Perucho', 901186943, 'pperucho@fundacionbd.org', 3),
('Daniel', 'Cortes', 900614839, 'print@calamus.com.co', 3),
('Valentina', 'Trujillo', 1019129327, 'proyectos@endeavor.org.co', 1),
('Sandra', 'Piedrahieta', 901335520, 'puntadaspremium@gmail.com', 3),
('Juan', 'Perez', 1017166034, 'q2masquequeso@gmail.com', 3),
('Ricardo', 'Aya', 830115331, 'ricardo.aya@bidomusic.com', 3),
('Rene', 'Jacir', 900510963, 'rjacir@estructurasjye.com', 3),
('Ricardo', 'Mora', 79780066, 'rmr74@mac.com', 3),
('Rodrigo', 'Sanchez', 900809691, 'rodrigosanchez-rios@lahaus.com', 3),
('Romano', 'Bonatti', 569692, 'roma@pidebeni.com', 3),
('Maria', 'Garcia', 900959587, 'rubbercorp@hotmail.com', 3),
('Paola ', 'Aristizabal', 1234, 'sabbathcolombia@gmail.com', 3),
('Carlos', 'Fajardo', 901350577, 'sales@waxa.co', 3),
('Juan', 'Rodriguez', 1020734286, 'saludosinsignia@gmail.com', 3),
('Daniel', 'Salvatore', 1017223160, 'salvatoredirector@gmail.com', 3),
('Santiago', 'Espinosa', 90083552, 'santiago@enlau.co', 3),
('Sara', 'Buitrago', 1192811839, 'sara.buitrago@endeavor.org.co', 2),
('Sebastián', 'Gallo', 1015403303, 'sebas@torre.co', 3),
('Juan', 'Barrero', 1018457971, 'sebastian.barrero@endeavor.org.co', 1),
('Sebastian', 'Lozano', 1026283086, 'sebastian.lozano@endeavor.org.co', 2),
('Sebastian', 'Gonzalez', 1018451798, 'sebastian2zen@gmail.com', 3),
('Carlos', 'Serrano', 901135299, 'sergiosusa104@gmail.com', 3),
('Silvia', 'Florez', 1020795839, 'silvia.florez@endeavor.org.co', 2),
('Stephanny', 'Rua', 1128052845, 'sruap@hotmail.com', 3),
('Susana', 'Restrepo', 1152451143, 'susana.restrepo@endeavor.org.co', 2),
('Tatiana', 'Prieto', 901250358, 'tatiana@imuko.co', 3),
('Jose', 'Name', 900536492, 'tonyname@yahoo.com', 3),
('Valentina', 'Pachon', 1022431657, 'valentina.pachon@endeavor.org.co', 2),
('Vicente', 'Franco', 900496472, 'viso16@gmail.com', 3),
('Viviana', 'Revelo', 830001810, 'vivianarevelo99@gmail.com', 3),
('Walter', 'Llanos', 1140869816, 'walterdll@hotmail.com', 3),
('William', 'Mc Cormick', 79379976, 'wamccb@gmail.com', 3),
('Ana', 'Zuniga', 1129570205, 'zunigaanamaria@gmail.com', 3),
('Prueba', 'Mentor', 1129570123, 'prueba.mentor@endeavor.org.co', 4);


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
