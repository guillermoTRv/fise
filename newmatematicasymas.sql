-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-04-2016 a las 00:50:24
-- Versión del servidor: 5.6.24
-- Versión de PHP: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `newmatematicasymas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios_mat`
--

CREATE TABLE IF NOT EXISTS `comentarios_mat` (
  `id_comentmat` int(11) NOT NULL,
  `id_fichamat` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `texto_coment` varchar(180) NOT NULL,
  `link` varchar(200) DEFAULT NULL,
  `fecha_registro_comentmat` varchar(25) NOT NULL,
  `fecha_modificacion_comentmat` varchar(25) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `comentarios_mat`
--

INSERT INTO `comentarios_mat` (`id_comentmat`, `id_fichamat`, `id_user`, `texto_coment`, `link`, `fecha_registro_comentmat`, `fecha_modificacion_comentmat`) VALUES
(1, 42, 2, 'a', '', '12-10-2015 16:35', NULL),
(2, 7, 2, 'a', '', '12-10-2015 16:36', NULL),
(3, 22, 2, 'Hika', '', '12-10-2015 16:50', NULL),
(4, 23, 2, 'asas', '', '12-10-2015 16:57', NULL),
(5, 7, 2, 'as', '', '12-10-2015 17:00', NULL),
(6, 50, 2, 'hello my friiend', '', '12-10-2015 18:52', NULL),
(7, 50, 2, 'as', '', '12-10-2015 19:03', NULL),
(8, 45, 2, 'a', '', '12-10-2015 19:08', NULL),
(9, 50, 2, 'asas', '', '12-10-2015 19:09', NULL),
(10, 45, 2, 'g', '', '12-10-2015 19:15', NULL),
(11, 50, 2, 'aa', '', '12-10-2015 19:16', NULL),
(12, 53, 2, 'aaa', '', '12-10-2015 20:33', NULL),
(13, 53, 2, 'aa', 'zzzzzzzzzzzzzzzz', '12-10-2015 20:34', NULL),
(14, 52, 2, 'aaaaa', '', '12-10-2015 20:34', NULL),
(15, 59, 2, 'aa', '', '12-10-2015 22:43', NULL),
(16, 59, 2, 'cccccc', '', '12-10-2015 22:49', NULL),
(17, 59, 2, 'scripts', '', '12-10-2015 22:53', NULL),
(18, 59, 2, 'ccc', '', '12-10-2015 22:54', NULL),
(19, 59, 2, 'asvv', '', '12-10-2015 22:58', NULL),
(20, 59, 2, 'xxxxxxxxxxxxxxx', '', '12-10-2015 22:59', NULL),
(21, 45, 2, 'asas', '', '27-11-2015 18:14', NULL),
(22, 62, 2, 'assssss', '', '27-11-2015 19:10', NULL),
(23, 62, 2, 'asa', '', '28-11-2015 08:48', NULL),
(24, 18, 2, 'nnn', '', '16-02-2016 13:09', NULL),
(25, 18, 2, 'j', '', '16-02-2016 13:10', NULL),
(26, 18, 2, 'e', '', '16-02-2016 13:14', NULL),
(27, 18, 2, 'r', '', '16-02-2016 13:14', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coment_reco`
--

CREATE TABLE IF NOT EXISTS `coment_reco` (
  `id_comentreco` int(11) NOT NULL,
  `id_reco` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `texto_creco` varchar(200) NOT NULL,
  `link_reco` varchar(200) NOT NULL,
  `voto` int(11) NOT NULL,
  `fecha_reg_creco` varchar(25) NOT NULL,
  `fecha_modi_creco` varchar(25) NOT NULL,
  `data_registro_creco` datetime NOT NULL,
  `responde` varchar(35) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `coment_reco`
--

INSERT INTO `coment_reco` (`id_comentreco`, `id_reco`, `id_user`, `texto_creco`, `link_reco`, `voto`, `fecha_reg_creco`, `fecha_modi_creco`, `data_registro_creco`, `responde`) VALUES
(19, 18, 2, 'se habra podido?', 'http://epicentrofestival.com/', 1, '28-10-2015 14:04', '2015-10-29 01:15:59', '2015-10-28 14:04:18', ''),
(18, 18, 2, 'que chingados paso =', 'http://epicentrofestival.com/', 1, '28-10-2015 13:58', '', '2015-10-28 13:58:59', ''),
(17, 18, 2, 'para la buena suerte pÃ­danle', 'http://www.forosdelweb.com/f179/', 1, '28-10-2015 13:52', '', '2015-10-28 13:52:36', ''),
(16, 18, 2, 'erergerg', 'http://getbootstrap.com/components/', 2, '28-10-2015 13:16', '', '2015-10-28 13:16:35', ''),
(15, 18, 2, 'Hola', 'https://www.google.com.mx/webhp?sourceid=chrome-instant&amp;ion=1&amp;espv=2&amp;ie=UTF-8#q=ajax%20curso', 2, '28-10-2015 13:12', '', '2015-10-28 13:12:41', ''),
(9, 18, 2, 'Te recomiendo este contenido amigo, espero te sirva', 'https://www.youtube.com/watch?v=2WXbJj6hTuA', 2, '27-10-2015 15:47', '', '2015-10-27 15:47:55', ''),
(14, 17, 2, 'Hola', 'http://localhost/setflyphp/algintermedia/recoalg?rec=17', 2, '28-10-2015 11:20', '', '2015-10-28 11:20:52', ''),
(11, 18, 2, 'Pagina en donde se explican varios tipos de metaetiquetas', 'http://getbootstrap.com/components/', 2, '27-10-2015 20:02', '', '2015-10-27 20:02:39', ''),
(13, 17, 2, 'cress que funciones ?', 'https://www.facebook.com/', 1, '28-10-2015 09:50', '', '2015-10-28 09:50:36', ''),
(20, 14, 2, 'carajos', 'http://epicentrofestival.com/', 1, '28-10-2015 14:07', '', '2015-10-28 14:07:23', ''),
(28, 26, 2, 'Ahora viene IBM', 'http://www.fundacionunam.org.mx/unam-al-dia/unam-a-favor-del-debate-cientifico-sobre-la-marihuana/', 1, '29-10-2015 14:27', '2015-10-29 14:28:13', '2015-10-29 14:27:50', 'guillermoTRv'),
(26, 21, 2, 'QUIERO MODIFICAR ESTA RESPUESTA', 'http://localhost/setflyphp/algintermedia/recoalg?rec=21', 1, '29-10-2015 01:32', '2015-10-29 14:27:15', '2015-10-29 01:32:11', 'guillermoTRv'),
(24, 21, 1, 'fgjfg', 'https://www.facebook.com/guillermo.villagran.5', 1, '28-10-2015 22:33', '', '2015-10-28 22:33:40', 'guillermoTRv'),
(25, 21, 1, 'wtf ?', 'http://www.fiseaprende.com/', 1, '28-10-2015 22:46', '', '2015-10-28 22:46:22', 'guillermoTRv'),
(29, 27, 2, 'Funcionara ??', 'https://twitter.com/UNAM_Mobile', 0, '29-10-2015 15:33', '', '2015-10-29 15:33:54', 'guillermoTRv'),
(30, 15, 2, 'vemos que funciona muy bein', 'https://twitter.com/UNAM_Mobile', 1, '29-10-2015 15:35', '', '2015-10-29 15:35:54', 'guillermoTRv'),
(31, 35, 2, 'asfa', 'http://38.media.tumblr.com/80ef2ce744d33efea39ccd2e540282f5/tumblr_nbz1s6asm01rpco88o2_r1_500.gif', 1, '29-10-2015 15:39', '', '2015-10-29 15:39:46', 'guillermoTRv'),
(32, 27, 2, 'sas', 'http://38.media.tumblr.com/80ef2ce744d33efea39ccd2e540282f5/tumblr_nbz1s6asm01rpco88o2_r1_500.gif', 0, '29-10-2015 15:40', '', '2015-10-29 15:40:16', 'guillermoTRv'),
(33, 15, 2, 'asas', 'http://38.media.tumblr.com/80ef2ce744d33efea39ccd2e540282f5/tumblr_nbz1s6asm01rpco88o2_r1_500.gif', 1, '29-10-2015 15:40', '', '2015-10-29 15:40:52', 'guillermoTRv'),
(34, 15, 2, 'awqwq', 'http://38.media.tumblr.com/80ef2ce744d33efea39ccd2e540282f5/tumblr_nbz1s6asm01rpco88o2_r1_500.gif', 1, '29-10-2015 15:41', '', '2015-10-29 15:41:04', 'guillermoTRv'),
(35, 36, 2, 'asasas', 'http://mobile.unam.mx/', 1, '29-10-2015 16:12', '', '2015-10-29 16:12:40', 'guillermoTRv'),
(36, 13, 2, 'asasa', 'http://mobile.unam.mx/', 1, '29-10-2015 16:32', '', '2015-10-29 16:32:23', 'guillermoTRv'),
(38, 43, 2, 'Hola wey porque te equivaste', 'https://www.youtube.com/watch?v=8FOBxcluXdk', 1, '07-11-2015 00:09', '', '2015-11-07 00:09:45', 'guillermoTRv'),
(39, 43, 2, 'asas', 'https://www.youtube.com/watch?v=6ACl8s_tBzE', 1, '07-11-2015 00:12', '', '2015-11-07 00:12:58', 'guillermoTRv'),
(40, 43, 2, 'hola', 'https://www.youtube.com/watch?v=6ACl8s_tBzE', 1, '07-11-2015 00:16', '2015-11-07 00:16:27', '2015-11-07 00:16:03', 'guillermoTRv'),
(41, 13, 2, 'hola cara de bola', 'https://www.facebook.com/ejerciciosmatematicasymas/?pnref=lhc', 0, '08-11-2015 18:59', '', '2015-11-08 18:59:04', 'guillermoTRv'),
(42, 13, 2, 'as', 'https://www.facebook.com/ejerciciosmatematicasymas/?pnref=lhc', 0, '08-11-2015 19:01', '', '2015-11-08 19:01:08', 'guillermoTRv'),
(43, 13, 2, 'asas', 'https://www.facebook.com/ejerciciosmatematicasymas/?pnref=lhc', 0, '08-11-2015 19:01', '', '2015-11-08 19:01:25', 'guillermoTRv'),
(44, 13, 2, 'vb', 'https://www.facebook.com/ejerciciosmatematicasymas/?pnref=lhc', 0, '08-11-2015 19:01', '', '2015-11-08 19:01:51', 'guillermoTRv'),
(45, 13, 2, 'vbn', 'https://www.facebook.com/ejerciciosmatematicasymas/?pnref=lhc', 0, '08-11-2015 19:02', '', '2015-11-08 19:02:55', 'guillermoTRv'),
(46, 13, 2, 'bn', 'http://localhost/setflyphp/usuario/users.php?ini=inicio', 0, '08-11-2015 19:07', '', '2015-11-08 19:07:52', 'guillermoTRv'),
(47, 13, 2, 'asaf', 'http://localhost/setflyphp/usuario/users.php?ini=inicio', 0, '08-11-2015 19:08', '', '2015-11-08 19:08:40', 'guillermoTRv'),
(48, 13, 2, 'qwqw', 'http://localhost/setflyphp/usuario/users.php?ini=inicio', 0, '08-11-2015 19:09', '', '2015-11-08 19:09:57', 'guillermoTRv'),
(49, 13, 2, 'asaflllll', 'http://localhost/setflyphp/usuario/users.php?ini=inicio', 0, '08-11-2015 19:11', '', '2015-11-08 19:11:06', 'guillermoTRv'),
(50, 38, 2, 'asasbb', 'http://localhost/setflyphp/usuario/users.php?ini=inicio', 0, '08-11-2015 19:12', '', '2015-11-08 19:12:01', 'guillermoTRv'),
(51, 0, 0, '', '', 0, '16-12-2015 02:51', '', '2015-12-16 02:51:53', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ejercicios`
--

CREATE TABLE IF NOT EXISTS `ejercicios` (
  `id_ejerc` int(11) NOT NULL,
  `id_lprc` int(11) DEFAULT NULL,
  `lugar` int(11) NOT NULL,
  `pregunta` varchar(400) NOT NULL,
  `clasf` varchar(50) NOT NULL,
  `type` varchar(2) NOT NULL,
  `placeh` varchar(100) DEFAULT NULL,
  `mens_err` varchar(100) NOT NULL,
  `mens_acert` varchar(100) NOT NULL,
  `rang_one` int(11) NOT NULL,
  `rang_two` int(11) DEFAULT NULL,
  `nivel` varchar(10) NOT NULL,
  `puntuaje` int(11) DEFAULT NULL,
  `true_op` char(1) NOT NULL,
  `f_creacion` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ejercicios`
--

INSERT INTO `ejercicios` (`id_ejerc`, `id_lprc`, `lugar`, `pregunta`, `clasf`, `type`, `placeh`, `mens_err`, `mens_acert`, `rang_one`, `rang_two`, `nivel`, `puntuaje`, `true_op`, `f_creacion`) VALUES
(13, 1, 5, 'Cuanto es 2 + 2 ', 'conceptual', 'te', 'Escribe solo nÃºmeros enteros', 'no', 'muy bien', 4, 4, 'uno', NULL, '', '2016-04-02 20:59:51'),
(14, 10, 6, 'Cuanto es 43 x 331', 'conceptual', 'te', 'solo nÃºmeros enteros', 'bien', 'algo anda mal', 14233, 14233, 'intermedio', NULL, '', '2016-04-02 21:02:19'),
(15, 10, 7, 'Cuantas decimales tiene la siguiente expresion ', 'conceptual', 'op', NULL, 'algo anda mal', 'Muy bien', 0, NULL, 'intermedio', NULL, 'c', '2016-04-02 21:04:32'),
(16, 10, 8, 'Cual es el nombre correcto del siguiente simbolo', 'teorico', 'op', NULL, 'no', 'correcto', 0, NULL, 'intermedio', NULL, 'd', '2016-04-02 21:06:14'),
(17, 10, 9, 'Cuanto es 5 + 5 ', 'teorico', 'te', 'solo nÃºmeros enteros', '--', '--', 10, 10, 'intermedio', NULL, '', '2016-04-02 21:08:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ficha_contenido_materia`
--

CREATE TABLE IF NOT EXISTS `ficha_contenido_materia` (
  `id_fichamat` int(11) NOT NULL,
  `materia` varchar(40) NOT NULL,
  `unidad` varchar(120) NOT NULL,
  `tema` varchar(120) DEFAULT NULL,
  `titulo` varchar(150) NOT NULL,
  `descripcion_texto` varchar(1800) NOT NULL,
  `link` varchar(200) DEFAULT NULL,
  `tipo_material` varchar(20) NOT NULL,
  `consideracion` varchar(20) NOT NULL,
  `voto` varchar(5) DEFAULT NULL,
  `fecha_registro_fichamat` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fecha_modificacion_fichamat` varchar(25) DEFAULT NULL,
  `id_user` varchar(6) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=112 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ficha_contenido_materia`
--

INSERT INTO `ficha_contenido_materia` (`id_fichamat`, `materia`, `unidad`, `tema`, `titulo`, `descripcion_texto`, `link`, `tipo_material`, `consideracion`, `voto`, `fecha_registro_fichamat`, `fecha_modificacion_fichamat`, `id_user`) VALUES
(1, 'Algebra basica', '25', 'Grados, radianes y arcos', 'Prueba 1debemos de escribir un titulo lo suficiente largo para que podamos analizar que tal funcionael codigo css', 'prnecsitamos poner mucho mas text para poder probar que tal responde las regillas y poder tomar una desicion si la cagamos', '', 'videos', 'Ejercicio-Problema', '1', '2015-11-26 18:09:51', '0', ''),
(2, 'Trigonometria', '25', 'Grados, radianes y arcos', 'Prueba 2', 'pr', '', 'Apuntes cuadernos', 'Ejercicio-Problema', '0', '0000-00-00 00:00:00', '0', ''),
(3, 'Trigonometria', '25', 'Grados, radianes y arcos', 'prueba 3', 'prueba 3', '', 'videos', 'Ejercicio-Problema', '0', '2015-11-26 18:09:51', '0', ''),
(4, 'Trigonometria', '25', 'Grados, radianes y arcos', 'Prueba 4', 'a', '', 'videos', 'Ejercicio-Problema', '0', '2015-11-26 18:09:51', '0', '2'),
(5, 'Trigonometria', '1-Medidas y razones de los triangulos rectangulos', 'Grados, radianes y arcos', 'Prueba 5', '5', '', 'videos', 'Ejercicio-Problema', '1', '2015-11-26 18:09:51', '0', '2'),
(6, 'Trigonometria', '1-Medidas y razones de los triangulos rectangulos', 'Razones trigonomÃ©tricas y soluciones del triÃ¡ngulo rectÃ¡ngulo', 'pan tostado', 'merienda', '', 'formulario', 'Ejercicio-Problema', '1', '0000-00-00 00:00:00', '0', '2'),
(7, 'Trigonometria', '1-Medidas y razones de los triangulos rectangulos', 'Grados, radianes y arcos', 'whwhat', 'el alacran ', 'asas', 'Presentaciones', 'Ejercicio-Problema', '5', '0000-00-00 00:00:00', '0', '2'),
(34, 'Calculo integral', '66', 'Reglas basicas de integracion de funciones algebra', 'Prueba 1 para saber si los cambios se realizaron correctamente', 'oh mg', '', 'Apuntes cuadernos', 'Ejercicio-Problema', '0', '0000-00-00 00:00:00', '08-10-2015 21:44', '2'),
(33, 'Calculo integral', 'Introduccion a la integraciÃ³n', 'Nocion intuitiva de que es la integracion', 'Prueba 1 calculo integral', 'CI', '', 'Presentaciones', '', '1', '0000-00-00 00:00:00', '0', '2'),
(32, 'Calculo diferencial', 'Limites y continuidad', 'Nocion de limites', 'Prueba 2 cd', 'cdd', '', 'videos', 'Ejercicio-Problema', '1', '2015-11-26 18:09:51', '0', '2'),
(30, 'Gemetria analitica', 'La recta', 'Pendiente de la recta', 'Prueba 1 gm', 'gm', '', 'Presentaciones', '', '1', '0000-00-00 00:00:00', '0', '2'),
(31, 'Calculo diferencial', 'Derivadas de funciones trigonometricas directas', '', 'prueba 1 cd', 'cd', '', 'videos', 'Ejercicio-Problema', '0', '2015-11-26 18:09:51', '0', '2'),
(29, 'Algebra basica', '1-Suma, resta, multiplicaciÃ³n algebraica y uso de parÃ©ntesis', 'NULL', 'sweet nothing', 'i', '', 'videos', 'Ejercicio-Problema', '1', '2015-11-26 18:09:51', '0', '2'),
(28, 'Algebra basica', '1-Suma, resta, multiplicaciÃ³n algebraica y uso de parÃ©ntesis', 'NULL', 'n3', 'n3', '', 'videos', 'Ejercicio-Problema', '1', '2015-11-26 18:09:51', '0', '2'),
(27, 'Algebra basica', '1-Suma, resta, multiplicaciÃ³n algebraica y uso de parÃ©ntesis', 'NULL', '2n', '2n', '', 'videos', 'Ejercicio-Problema', '0', '2015-11-26 18:09:51', '0', '2'),
(26, 'Algebra basica', '1-Suma, resta, multiplicaciÃ³n algebraica y uso de parÃ©ntesis', 'NULL', 'Prueba para notificacion', 'que larga ah sido esta jornada', '', 'videos', 'Ejercicio-Problema', '0', '2015-11-26 18:09:51', '0', '2'),
(18, 'Calculo integral', 'Introducción a la integración', '', '123f', '1', '', 'Presentaciones', 'Ejercicio-Problema', '1', '2016-02-16 13:03:48', '0', '2'),
(25, 'Algebra basica', '1-Suma, resta, multiplicaciÃ³n algebraica y uso de parÃ©ntesis', 'NULL', 'prueba en basica', 'basica', '', 'videos', 'Ejercicio-Problema', '1', '2015-11-26 18:09:51', '0', '2'),
(24, 'Algebra intermedia', '3-Funciones racionales', 'Concepto y propiedades de las funciones racionales', 'segunda prueba', 'pondremos mucho texto aqui de prueba para saber como se veria el cuadro de recientes', '', 'videos', 'Ejercicio-Problema', '1', '2015-12-18 00:59:57', '0', '2'),
(23, 'Algebra intermedia', '1-GrÃ¡ficas y funciones', 'Operaciones bÃ¡sicas de funciones suma, resta, multiplicaciÃ³n y divisiÃ³n', 'nueva prueba uno', 'hace un año estaba llegando de trabajar muy cansado ahora puedo estar programando gracias madre', '', 'videos', 'Ejercicio-Problema', '5', '2015-12-18 01:00:19', '0', '2'),
(22, 'Trigonometria', '1-Medidas y razones de los triangulos rectangulos', 'Razones trigonomÃ©tricas y soluciones del triÃ¡ngulo rectÃ¡ngulo', 'z', 'z', '', 'videos', 'Ejercicio-Problema', '1', '2015-11-26 18:09:51', '0', '2'),
(35, 'Estadistica', 'Medidas de tendencia central', 'Distribucion de frecuencias simples', 'Prueba 1 en estadistica', 'E', '', 'Presentaciones', 'Ejercicio-Problema', '1', '2015-11-24 22:09:29', '0', '2'),
(36, 'Calculo integral', 'Introduccion a la integraciÃ³n', 'Integracion de funciones compuestas', 'ghgh', 'AquÃ­ el texto si se vera algo feo pero en fin', 'hola', 'Examenes o series', 'Ejercicio-Problema', '0', '0000-00-00 00:00:00', '0', '2'),
(37, 'Algebra basica', '1-Suma, resta, multiplicaciÃ³n algebraica y uso de parÃ©ntesis', 'NULL', 'me debi de haber baÃ±ado', 'no se que poner', 'https://www.facebook.com/ejerciciosmatematicasymas?fref=ts', 'videos', 'Ejercicio-Problema', '0', '2015-11-26 18:09:51', '0', '2'),
(43, 'Algebra intermedia', '1-GrÃ¡ficas y funciones', 'Operaciones bÃ¡sicas de funciones suma, resta, multiplicaciÃ³n y divisiÃ³n', 'no mames', 'a', '', 'videos', 'Ejercicio-Problema', '0', '2015-11-26 18:09:51', '0', '2'),
(41, 'Algebra intermedia', '1-GrÃ¡ficas y funciones', 'Regla de correspondencia, dominio y rango', 'bbbbbbbbbbbbb', 'f', '', 'videos', '', '1', '2015-11-26 18:09:51', '0', '2'),
(42, 'Algebra intermedia', '1-GrÃ¡ficas y funciones', 'Regla de correspondencia, dominio y rango', 'rr', 'r', '', 'videos', 'Ejercicio-Problema', '1', '2015-11-26 18:09:51', '0', '2'),
(44, 'Algebra intermedia', '1-GrÃ¡ficas y funciones', 'Regla de correspondencia, dominio y rango', 'Aqui podremos detallar la forma en como se hace un panela', 'pondremos mucho texto aqui de prueba para saber como se veria el cuadro de recientes', '', 'Presentaciones', 'Ejercicio-Problema', '0', '2015-12-18 01:02:31', '0', '2'),
(45, 'Algebra intermedia', 'funciones-racionales', 'Como graficar una funciÃ³n racional Varios ejemplos', 'Aqui podremos detallar la forma en como se hace un panela', 'pondremos mucho texto aqui de prueba para saber como se veria el cuadro de recientes', '', 'Presentaciones', 'Ejercicio-Problema', '1', '2015-12-18 01:02:35', '0', '2'),
(46, 'Trigonometria', '1-Medidas y razones de los triangulos rectangulos', 'TriÃ¡ngulos semejantes(teorema de Euclides)', 'Comeand', 'a', '', 'videos', 'Ejercicio-Problema', '0', '2015-11-26 18:09:51', '0', '2'),
(47, 'Trigonometria', '1-Medidas y razones de los triangulos rectangulos', 'Grados, radianes y arcos', 'sistema', 'a', '', 'Presentaciones', 'Ejercicio-Problema', '0', '0000-00-00 00:00:00', '0', '2'),
(48, 'Algebra intermedia', '3-Funciones racionales', 'Concepto y propiedades de las funciones racionales', 'a', 'aaa', '', 'videos', 'Ejercicio-Problema', '0', '2015-11-26 18:09:51', '0', '2'),
(49, 'Algebra intermedia', '3-Funciones racionales', 'Concepto y propiedades de las funciones racionales', 'Pues asi cuando', 'a', '', 'Presentaciones', 'Ejercicio-Problema', '0', '0000-00-00 00:00:00', '0', '2'),
(50, 'Trigonometria', '3-Graficas de las funciones trigonometricas', 'Grafica de la funciÃ³n seno y coseno', 'fe', 'a', '', 'Presentaciones', 'Ejercicio-Problema', '0', '0000-00-00 00:00:00', '0', '2'),
(51, 'Trigonometria', '8-Coordenadas polares', 'Sistemas de coordenadas polares y cambios de sistemas', 'oauta', 'a', '', 'videos', 'Ejercicio-Problema', '0', '2015-11-26 18:09:51', '0', '2'),
(52, 'Trigonometria', '1-Medidas y razones de los triangulos rectangulos', 'Ãngulos complementarios, adyacentes y colaterales', 'control', 'mems', '', 'videos', 'Ejercicio-Problema', '0', '2015-11-26 18:09:51', '0', '2'),
(53, 'Algebra intermedia', '1-GrÃ¡ficas y funciones', 'FunciÃ³n cubica (Grafica, desplazamientos, reflexiones, expansiones y contracciones)', 'Avv', 'a', '', 'videos', 'Ejercicio-Problema', '0', '2015-11-26 18:09:51', '0', '2'),
(54, 'Trigonometria', '1-Medidas y razones de los triangulos rectangulos', 'Grados, radianes y arcos', 'bbbbbbbbbbbbbbbbbbbbbb', 'a', '', 'videos', 'Ejercicio-Problema', '0', '2015-11-26 18:09:51', '0', '2'),
(55, 'Algebra intermedia', '1-GrÃ¡ficas y funciones', 'Regla de correspondencia, dominio y rango', 'asssssssssssssssssss', 'pondremos mucho texto aqui de prueba para saber como se veria el cuadro de recientes', '', 'Presentaciones', 'Ejercicio-Problema', '0', '2015-12-18 01:02:00', '0', '2'),
(57, 'Geometria analitica', 'La recta', 'Ecuacion de la recta conociendo 2 puntos de ella', 'xxxz', 's', '', 'videos', 'Ejercicio-Problema', '0', '2015-11-26 18:09:51', '0', '2'),
(58, 'Geometria analitica', 'La recta', 'Pendiente de la recta', 'xxxz', 's', '', 'videos', 'Ejercicio-Problema', '0', '2015-11-26 18:09:51', '0', '2'),
(59, 'Geometria analitica', 'La recta', 'Pendiente de la recta', 'cccc', 'c', '', 'videos', 'Ejercicio-Problema', '1', '2015-11-26 18:09:51', '0', '2'),
(60, 'Estadistica', 'Presentación de datos', 'Que es la estadística', 'asasas', 'a', '', 'videos', 'Ejercicio-Problema', '0', '2015-11-24 22:10:42', '0', '2'),
(61, 'Calculo avanzado', 'Funciones de dos o mas variables', 'Graficas de funciones de 2 variables', 'Se podra', 'as', '', '', 'Ejercicio-Problema', '1', '2015-11-06 23:22:33', '0', '2'),
(62, 'Algebra intermedia', 'Funciones polinomiales', 'Teorema del residuo', 'asas', 'pondremos mucho texto aqui de prueba para saber como se veria el cuadro de recientes', '', '', 'Ejercicio-Problema', '0', '2015-12-18 01:02:04', '0', '2'),
(63, 'Ecuaciones diferenciales', 'Conceptos básicos sobre Ecuaciones Diferenciales', 'Definiciï¿½n de ED, orden y grado de esta', 'asas', 'asfasfasfasf', '', 'presentaciones', 'Ejercicio-Problema', '0', '0000-00-00 00:00:00', '0', '1'),
(64, 'Ecuaciones diferenciales', 'Conceptos básicos sobre Ecuaciones Diferenciales', '', 'asas', 'asfasfasfasf', '', 'presentaciones', 'Ejercicio-Problema', '0', '0000-00-00 00:00:00', '0', '1'),
(65, 'Ecuaciones diferenciales', 'Conceptos básicos sobre Ecuaciones Diferenciales', '', 'asaslllllllllllllllllllllllll', 'asfasfasfasf', '', 'presentaciones', 'Ejercicio-Problema', '0', '0000-00-00 00:00:00', '0', '1'),
(70, 'Algebra intermedia', 'Gráficas y funciones', '', 'qweqwe', 'qweqweqweqwe', '', 'apuntes-usuarios', 'Ejercicio-Problema', '0', '0000-00-00 00:00:00', '0', '1'),
(71, 'Algebra intermedia', 'Funciones racionales', 'Definiciï¿½n y propiedades de las funciones racionales', 'asfasf', 'asfasfasf', '', 'apuntes-usuarios', 'Ejercicio-Problema', '0', '2016-03-13 23:15:17', '0', '1'),
(72, 'Calculo integral', 'Contenidos en general', 'Integraciï¿½n de funciones compuestas', 'Hola este sera un texto de preuba', 'mucho animo que si se puede ahora solo se necesita plata', '', 'presentaciones', 'Ejercicio-Problema', '0', '2016-03-23 21:17:27', '0', '1'),
(73, 'Calculo integral', 'Contenidos en general', 'Que es la integraciï¿½n', 'Muy buenas canciones para esta noche', 'me acuerdo 11 - 12', '', 'presentaciones', 'Ejercicio-Problema', '0', '2016-03-23 21:17:33', '0', '1'),
(74, 'Calculo integral', 'Contenidos en general', 'Que es la integración', 'Yall hundred miles', '--', '', 'retos', 'Ejercicio-Problema', '0', '2016-03-23 21:17:48', '0', '1'),
(75, 'Calculo integral', 'Contenidos en general', 'Que es la integraciï¿½n', 'Hola amigos en esta ocasion les comparto un interesante contenido de algebra analitica para que conozcan mejor este ramo de las matematicas', '--', '', 'videos', 'Ejercicio-Problema', '0', '2016-03-23 21:17:51', '0', '1'),
(76, 'Calculo integral', 'Contenidos en general', 'Que es la integraciï¿½n', 'Kygo her for you   And her for you', '--', '', 'videos', 'Ejercicio-Problema', '0', '2016-03-23 21:17:55', '0', '1'),
(77, 'Calculo integral', 'Contenidos en general', 'Que es la integraciï¿½n', 'Interesantes ejercicios de integrales resueltas para practicar antes de un examen', '--', '', 'videos', 'Ejercicio-Problema', '0', '2016-03-23 21:54:21', '0', '1'),
(78, 'Calculo integral', 'Introducción a la integración', 'Que es la integraciï¿½n', 'Animacion en wolfram para comprender la tangente a una curva en calculo diferencial', '--', '', 'pdf', 'Ejercicio-Problema', '0', '2016-03-16 08:14:27', '0', '1'),
(79, 'Calculo integral', 'Contenidos en general', '', 'Que son las integrales sin complicarnos tanto', '--', '', 'videos', 'Ejercicio-Problema', '0', '2016-03-23 21:54:27', '0', '1'),
(80, 'Calculo integral', 'Contenidos en general', 'Que es la integraciï¿½n', 'Hoy hay contingencia en el df', '--', '', 'videos', 'Ejercicio-Problema', '0', '2016-03-23 21:54:34', '0', '1'),
(81, 'Calculo integral', 'Contenidos en general', 'Que es la integraciï¿½n', 'DemostraciÃ³n de la derivada de la funciÃ³n coseno', '--', '', 'videos', 'Ejercicio-Problema', '0', '2016-03-23 21:54:38', '0', '1'),
(82, 'Calculo integral', 'Contenidos en general', 'Que es la integraciï¿½n', 'Ejemplos bÃ¡sicos sobre derivaciÃ³n exponencial', '--', '', 'videos', 'Ejercicio-Problema', '0', '2016-03-23 21:54:44', '0', '1'),
(83, 'Algebra basica', '3-Productos notables', '', 'asasasas', 'asas', 'http://localhost/cambio/basica/panel-algebra-basica?un=Subir&amp;sub=true', 'videos', 'Ejercicio-Problema', '0', '2016-03-30 08:21:23', '0', '1'),
(84, 'Algebra basica', '3-Productos notables', '', 'asasasasasasasasasasasas', 'asasasasas', 'http://localhost/cambio/basica/anel-algebra-basica?un=Subir&amp;sub=true', 'videos', 'Ejercicio-Problema', '0', '2016-03-30 08:21:47', '0', '1'),
(85, 'Algebra basica', '4-Descomposición factorial', '', 'nmas', 'asas', '', 'videos', 'Ejercicio-Problema', '0', '2016-03-30 08:22:25', '0', '1'),
(86, 'Algebra basica', '4-Descomposición factorial', '', 'nmasasasasas', 'asas', '', 'videos', 'Ejercicio-Problema', '0', '2016-03-30 08:31:50', '0', '1'),
(89, 'Algebra basica', '1-Suma, resta, multiplicación algebraica y uso de paréntesis', '', 'jk', 'kjjnkj', '', 'presentaciones', 'Ejercicio-Problema', '0', '2016-03-30 08:48:46', '0', '1'),
(94, 'Algebra basica', '1-Suma, resta, multiplicación algebraica y uso de paréntesis', '', 'jkaaa', 'kjjnkj', '', 'presentaciones', 'Ejercicio-Problema', '0', '2016-03-30 08:54:15', '0', '1'),
(101, 'Algebra basica', '1-Suma, resta, multiplicación algebraica y uso de paréntesis', '', 'jkaaaaa', 'kjjnkj', '', 'presentaciones', 'Ejercicio-Problema', '0', '2016-03-30 08:57:11', '0', '1'),
(102, 'Algebra basica', '1-Suma, resta, multiplicación algebraica y uso de paréntesis', '', 'jkaaaaazzz', 'kjjnkj', '', 'presentaciones', 'Ejercicio-Problema', '0', '2016-03-30 08:58:32', '0', '1'),
(103, 'Algebra basica', '1-Suma, resta, multiplicación algebraica y uso de paréntesis', '', 'jkaaaaazzzaaaaaaa', 'kjjnkj', '', 'presentaciones', 'Ejercicio-Problema', '0', '2016-03-30 08:59:19', '0', '1'),
(105, 'Algebra intermedia', 'Funciones polinomiales', 'Teorema del residuo', 'Un ejercicio', 'compartamos conocimiento', '', 'presentaciones', '', '0', '2016-04-03 16:25:43', '0', '1'),
(106, 'Algebra intermedia', 'Funciones polinomiales', 'Partes de una funciï¿½n polinomial', 'Compartamos conocimiento', '--', '', 'presentaciones', 'Ejercicio-Problema', '0', '2016-04-03 16:27:57', '0', '1'),
(107, 'Algebra intermedia', 'Funciones polinomiales', 'Partes de una funciï¿½n polinomial', 'Compartir conocimiento', '--', '', 'apuntes-usuarios', '', '0', '2016-04-03 16:30:25', '0', '1'),
(108, 'Algebra intermedia', 'Funciones polinomiales', 'Temas y ejercicios en general', 'Compartamos', 'Descripcion', '', 'apuntes-usuarios', '', '0', '2016-04-03 16:55:01', '0', '1'),
(109, 'Trigonometria', 'Leyes de los angulos', 'Ley de los senos y tipos de casos', 'Hola como estas', 'Aqui agregare mucho mucho texto', 'http://localhost/cambio/trigonometria/panel-trigonometria?un=coordenadas-polares&amp;sub=true', 'videos', 'Ejercicio-Problema', '0', '2016-04-05 17:22:08', '0', '1'),
(110, 'Trigonometria', 'Leyes de los angulos', 'Vectores algebraicos', 'Hola hola', '--', 'http://localhost/cambio/trigonometria/panel-trigonometria?un=leyes-de-los-angulos&amp;sub=true', 'videos', 'Ejercicio-Problema', '0', '2016-04-05 17:31:12', '0', '1'),
(111, 'Trigonometria', 'Leyes de los angulos', 'Ley de los senos y tipos de casos', 'nbc', 'seth', 'http://localhost/cambio/trigonometria/panel-trigonometria?un=leyes-de-los-angulos&amp;sub=true', 'videos', 'Ejercicio-Problema', '1', '2016-04-05 18:01:23', '0', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `img_ejerc`
--

CREATE TABLE IF NOT EXISTS `img_ejerc` (
  `id_imgejec` int(11) NOT NULL,
  `id_ejerc` int(11) DEFAULT NULL,
  `name_img` varchar(20) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=99 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `img_ejerc`
--

INSERT INTO `img_ejerc` (`id_imgejec`, `id_ejerc`, `name_img`) VALUES
(1, 49, '148049'),
(2, 57, '112557'),
(3, 60, '45660'),
(4, 73, '161273'),
(5, 75, '110775'),
(6, 76, '126476'),
(7, 77, '71377'),
(8, 78, '184778'),
(9, 79, '123979'),
(10, 80, '12980'),
(11, 81, '184481'),
(12, 82, '166882'),
(13, 83, '84283'),
(14, 84, '158084'),
(15, 85, '149785'),
(16, 86, '155186'),
(17, 87, '48287'),
(18, 88, '140188'),
(19, 97, '21497'),
(20, 91, '189591'),
(21, 91, '39791'),
(22, 100, '1852100'),
(23, 101, '1164101'),
(24, 102, '148102'),
(25, 103, '1540103'),
(26, 104, '933104'),
(27, 101, '341101'),
(28, 104, '1979104'),
(29, 107, '276107'),
(30, 108, '748108'),
(31, 109, '1736109'),
(32, 110, '1640110'),
(33, 111, '1600111'),
(34, 112, '668112'),
(35, 113, '1100113'),
(36, 114, '1655114'),
(37, 115, '154115'),
(38, 115, '1864115'),
(39, 117, '1426117'),
(40, 102, '1704102'),
(41, 119, '663119'),
(42, 120, '911120'),
(43, 121, '1180121'),
(44, 101, '713101'),
(45, 123, '686123'),
(46, 124, '1531124'),
(47, 125, '730125'),
(48, 126, '1330126'),
(49, 127, '1262127'),
(50, 128, '1136128'),
(51, 129, '176129'),
(52, 73, '58073'),
(53, 131, '1546131'),
(54, 132, '1245132'),
(55, 133, '964133'),
(56, 131, '626131'),
(57, 110, '1111110'),
(58, 101, '1710101'),
(59, 137, '777137'),
(60, 137, '562137'),
(61, 139, '1870139'),
(62, 140, '1922140'),
(63, 141, '103141'),
(64, 142, '935142'),
(65, 143, '560143'),
(66, 101, '101101'),
(67, 145, '282145'),
(68, 146, '815146'),
(69, 147, '1861147'),
(70, 148, '1687148'),
(71, 149, '1537149'),
(72, 149, '1916149'),
(73, 151, '1308151'),
(74, 149, '1475149'),
(75, 153, '1536153'),
(76, 151, '779151'),
(77, 151, '277151'),
(78, 137, '1295137'),
(79, 157, '403157'),
(80, 149, '858149'),
(81, 159, '1488159'),
(82, 1, '6441'),
(83, 2, '4152'),
(84, 3, '15433'),
(85, 4, '16274'),
(86, 5, '1855'),
(87, 6, '12346'),
(88, 7, '12337'),
(89, 8, '11028'),
(90, 9, '19519'),
(91, 10, '88110'),
(92, 11, '196011'),
(93, 12, '18812'),
(94, 13, '31513'),
(95, 14, '98114'),
(96, 15, '74515'),
(97, 16, '16116'),
(98, 17, '22417');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `img_materias`
--

CREATE TABLE IF NOT EXISTS `img_materias` (
  `id_imgfichamat` int(11) NOT NULL,
  `id_fichamat` int(11) NOT NULL,
  `nombre_imagen` varchar(100) NOT NULL,
  `fecha_registro_imgfichamat` varchar(25) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `img_materias`
--

INSERT INTO `img_materias` (`id_imgfichamat`, `id_fichamat`, `nombre_imagen`, `fecha_registro_imgfichamat`) VALUES
(1, 2, '2956', ''),
(2, 3, '3888', ''),
(3, 3, '3650', ''),
(4, 5, '5708', ''),
(5, 5, '5741', ''),
(6, 6, '6913', ''),
(7, 6, '6602', ''),
(8, 6, '6399', ''),
(9, 7, '7438', ''),
(10, 8, '8762', ''),
(11, 11, '11617', ''),
(12, 18, '18537', ''),
(13, 18, '18447', ''),
(14, 18, '18316', ''),
(15, 0, '550', ''),
(16, 29, '29540', ''),
(17, 30, '30922', ''),
(18, 34, '34819', ''),
(19, 34, '34992', ''),
(20, 55, '55692', ''),
(21, 55, '55525', ''),
(22, 70, '70766', ''),
(23, 71, '71733', ''),
(24, 71, '71838', ''),
(25, 85, '85243', ''),
(26, 85, '85881', ''),
(27, 86, '86663', ''),
(28, 89, '89220', ''),
(29, 89, '89133', ''),
(30, 94, '94107', ''),
(31, 101, '101773', ''),
(32, 102, '102419', ''),
(33, 103, '103273', ''),
(34, 104, '104416', ''),
(35, 105, '105569', ''),
(36, 106, '106634', ''),
(37, 107, '107388', ''),
(38, 108, '108780', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `img_option`
--

CREATE TABLE IF NOT EXISTS `img_option` (
  `id_iopt` int(11) NOT NULL,
  `id_option` int(11) NOT NULL,
  `name_img` varchar(20) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `img_option`
--

INSERT INTO `img_option` (`id_iopt`, `id_option`, `name_img`) VALUES
(1, 72, '1048'),
(2, 73, '1162'),
(3, 74, '828'),
(4, 76, '163'),
(5, 82, '494'),
(6, 88, '1796'),
(7, 89, '1610'),
(8, 96, '938'),
(9, 99, '283'),
(10, 100, '1931'),
(11, 101, '134'),
(12, 102, '687'),
(13, 103, '1664'),
(14, 104, '1343'),
(15, 109, '649');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `list_contentarch`
--

CREATE TABLE IF NOT EXISTS `list_contentarch` (
  `id_listcontent` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `name_listcontent` varchar(150) NOT NULL,
  `num_cont` varchar(10) NOT NULL,
  `fecha_registro_listcont` varchar(25) NOT NULL,
  `fecha_modificacion_listcont` varchar(25) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `list_contentarch`
--

INSERT INTO `list_contentarch` (`id_listcontent`, `id_user`, `name_listcontent`, `num_cont`, `fecha_registro_listcont`, `fecha_modificacion_listcont`) VALUES
(1, 1, 'lista_default', '', '28-09-2015 17:00', NULL),
(2, 2, 'Best of my life', '', '28-09-2015 20:03', '28-09-2015 22:26'),
(4, 2, 'la la la', '', '28-09-2015 22:27', NULL),
(5, 2, 'peps', '', '30-09-2015 08:27', '30-09-2015 09:07'),
(6, 2, 'lobos', '', '30-09-2015 09:47', '0'),
(7, 2, 'pepsi', '', '30-09-2015 10:18', '0'),
(8, 2, 'coca cola', '', '30-09-2015 10:20', '0'),
(9, 2, '2011', '', '30-09-2015 10:22', '0'),
(10, 2, 'perros', '', '30-09-2015 10:22', '0'),
(11, 2, 'ironia', '', '30-09-2015 10:23', '0'),
(12, 2, 'ironiaa', '', '30-09-2015 10:23', '0'),
(13, 2, 'clavo', '', '30-09-2015 10:23', '0'),
(14, 3, 'lista_default', '', '30-09-2015 10:34', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `list_content_rel`
--

CREATE TABLE IF NOT EXISTS `list_content_rel` (
  `id_rel` int(11) NOT NULL,
  `id_listcontent` int(11) NOT NULL,
  `id_ficha` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `matter` varchar(30) NOT NULL,
  `title` varchar(170) NOT NULL,
  `un_cont` varchar(170) NOT NULL,
  `url_content` varchar(250) NOT NULL,
  `fecha_registro_relacion` varchar(25) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `list_content_rel`
--

INSERT INTO `list_content_rel` (`id_rel`, `id_listcontent`, `id_ficha`, `id_user`, `matter`, `title`, `un_cont`, `url_content`, `fecha_registro_relacion`) VALUES
(4, 2, 5, 2, 'Trigonometria', 'Prueba 5', '1-Medidas y razones de los triangulos rectangulos', '/setflyphp/trigonometria/paneltrig.php?un=1-Medidas y razones de los triangulos rectangulos&cont=5', '28-09-2015 22:00'),
(5, 4, 6, 2, 'Trigonometria', 'pan tostado', '1-Medidas y razones de los triangulos rectangulos', '/setflyphp/trigonometria/paneltrig.php?un=1-Medidas y razones de los triangulos rectangulos&cont=6', '28-09-2015 22:45'),
(6, 4, 5, 2, 'Trigonometria', 'Prueba 5', '1-Medidas y razones de los triangulos rectangulos', '/setflyphp/trigonometria/paneltrig.php?un=1-Medidas y razones de los triangulos rectangulos&cont=5', '29-09-2015 23:52'),
(7, 2, 7, 2, 'Trigonometria', 'whwhat', '1-Medidas y razones de los triangulos rectangulos', '/setflyphp/trigonometria/paneltrig.php?un=1-Medidas y razones de los triangulos rectangulos&cont=7', '30-09-2015 00:59'),
(9, 4, 7, 2, 'Trigonometria', 'whwhat', '1-Medidas y razones de los triangulos rectangulos', '/setflyphp/trigonometria/paneltrig.php?un=1-Medidas y razones de los triangulos rectangulos&cont=7', '30-09-2015 09:52'),
(10, 2, 23, 2, 'Trigonometria', 'nueva prueba uno', '1-GrÃ¡ficas y funciones', '/setflyphp/algintermedia/panelalg.php?un=1-GrÃ¡ficas y funciones&cont=23', '01-10-2015 18:37'),
(11, 2, 24, 2, 'Algebra intermedia', 'segunda prueba', '3-Funciones racionales', '/setflyphp/algintermedia/panelalg.php?un=3-Funciones racionales&cont=24', '01-10-2015 20:40'),
(12, 4, 24, 2, 'Algebra intermedia', 'segunda prueba', '3-Funciones racionales', '/setflyphp/algintermedia/panelalg.php?un=3-Funciones racionales&cont=24', '01-10-2015 20:42'),
(13, 2, 25, 2, 'Algebra basico', 'prueba en basica', '1-Suma, resta, multiplicaciÃ³n algebraica y uso de parÃ©ntesis', '/setflyphp/basica/panelalgbas.php?un=1-Suma, resta, multiplicaciÃ³n algebraica y uso de parÃ©ntesis&cont=25', '01-10-2015 23:34'),
(14, 4, 25, 2, 'Algebra basico', 'prueba en basica', '1-Suma, resta, multiplicaciÃ³n algebraica y uso de parÃ©ntesis', '/setflyphp/basica/panelalgbas.php?un=1-Suma, resta, multiplicaciÃ³n algebraica y uso de parÃ©ntesis&cont=25', '01-10-2015 23:36'),
(15, 9, 30, 2, 'Gemetria analitica', 'Prueba 1 gm', 'La recta', '/setflyphp/geometrianalitica/panelgeo.php?un=La recta&cont=30', '02-10-2015 12:42'),
(16, 2, 32, 2, 'Calculo diferencial', 'Prueba 2 cd', 'Limites y continuidad', '/setflyphp/calculodif/paneldif.php?un=Limites y continuidad&cont=32', '03-10-2015 12:09'),
(17, 5, 32, 2, 'Calculo diferencial', 'Prueba 2 cd', 'Limites y continuidad', '/setflyphp/calculodif/paneldif.php?un=Limites y continuidad&cont=32', '03-10-2015 12:09'),
(18, 2, 33, 2, 'Calculo integral', 'Prueba 1 calculo integral', 'Introduccion a la integraciÃ³n', '/setflyphp/calculointegral/panelint.php?un=Introduccion a la integraciÃ³n&cont=33', '03-10-2015 16:13'),
(20, 5, 37, 2, 'Algebra basica', 'me debi de haber baÃ±ado', '1-Suma, resta, multiplicaciÃ³n algebraica y uso de parÃ©ntesis', '/setflyphp/basica/panelalgbas.php?un=1-Suma, resta, multiplicaciÃ³n algebraica y uso de parÃ©ntesis&cont=37', '06-10-2015 10:34'),
(21, 2, 42, 2, 'Algebra intermedia', 'rr', '1-GrÃ¡ficas y funciones', '/setflyphp/algintermedia/panelalg.php?un=1-GrÃ¡ficas y funciones&cont=42', '12-10-2015 16:44'),
(22, 2, 22, 2, 'Algebra intermedia', 'z', '1-Medidas y razones de los triangulos rectangulos', '/setflyphp/trigonometria/paneltrig.php?un=1-Medidas y razones de los triangulos rectangulos&cont=22', '12-10-2015 16:49'),
(23, 2, 51, 2, 'Algebra intermedia', 'oauta', '8-Coordenadas polares', '/setflyphp/trigonometria/paneltrig.php?un=8-Coordenadas polares&cont=51', '12-10-2015 19:17'),
(24, 2, 45, 2, 'Algebra intermedia', 'Aqui podremos detallar la forma en como se hace un panela', '3-Funciones racionales', '/setflyphp/algintermedia/panelalg.php?un=3-Funciones racionales&cont=45', '12-10-2015 19:56'),
(25, 4, 51, 2, 'Algebra intermedia', 'oauta', '8-Coordenadas polares', '/setflyphp/trigonometria/paneltrig.php?un=8-Coordenadas polares&cont=51', '12-10-2015 19:56'),
(26, 5, 22, 2, 'Algebra intermedia', 'z', '1-Medidas y razones de los triangulos rectangulos', '/setflyphp/trigonometria/paneltrig.php?un=1-Medidas y razones de los triangulos rectangulos&cont=22', '12-10-2015 19:57'),
(27, 2, 52, 2, 'Trigonometria', 'control', '1-Medidas y razones de los triangulos rectangulos', '/setflyphp/trigonometria/paneltrig.php?un=1-Medidas y razones de los triangulos rectangulos&cont=52', '12-10-2015 20:09'),
(28, 2, 53, 2, 'Algebra intermedia', 'Avv', '1-GrÃ¡ficas y funciones', '/setflyphp/algintermedia/panelalg.php?un=1-GrÃ¡ficas y funciones&cont=53', '12-10-2015 20:31'),
(29, 2, 61, 2, 'Calculo avanzado', 'Se podra', 'Funciones de dos o mas variables', '/setflyphp/c-avanzado/panelcalculo.php?un=Funciones de dos o mas variables&cont=61', '06-11-2015 23:22'),
(30, 2, 62, 2, 'Algebra intermedia', 'asas', 'Funciones polinomiales', '/pruebas/algintermedia/panelalg.php?un=Funciones polinomiales&cont=62', '28-11-2015 09:10'),
(31, 4, 62, 2, 'Algebra intermedia', 'asas', 'Funciones polinomiales', '/pruebas/algintermedia/panelalg.php?un=Funciones polinomiales&cont=62', '28-11-2015 09:13'),
(32, 6, 62, 2, 'Algebra intermedia', 'asas', 'funciones-polinomiales', '/pruebas/algintermedia/panelalg.php?un=funciones-polinomiales&cont=62', '28-11-2015 09:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `l_prc`
--

CREATE TABLE IF NOT EXISTS `l_prc` (
  `id_lprc` int(11) NOT NULL,
  `name_lprc` varchar(220) NOT NULL,
  `materia` varchar(30) NOT NULL,
  `prod` char(2) NOT NULL,
  `clasf` varchar(50) NOT NULL,
  `nivel` varchar(10) NOT NULL,
  `num_ejerc` int(11) NOT NULL,
  `puntuaje` int(11) DEFAULT NULL,
  `frc_creacion` datetime NOT NULL,
  `frc_mod` datetime NOT NULL,
  `modulo` varchar(140) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `l_prc`
--

INSERT INTO `l_prc` (`id_lprc`, `name_lprc`, `materia`, `prod`, `clasf`, `nivel`, `num_ejerc`, `puntuaje`, `frc_creacion`, `frc_mod`, `modulo`) VALUES
(1, 'Ejercicios bÃ¡sicos con matrices', 'Algebra lineal', 'si', 'general', 'basica', 5, NULL, '2016-04-02 20:57:04', '0000-00-00 00:00:00', 'Matrices');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulos_url`
--

CREATE TABLE IF NOT EXISTS `modulos_url` (
  `id_modurl` int(11) NOT NULL,
  `url_limpia` varchar(140) NOT NULL,
  `rel_modulo` varchar(140) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `modulos_url`
--

INSERT INTO `modulos_url` (`id_modurl`, `url_limpia`, `rel_modulo`) VALUES
(1, 'matrices', 'Matrices'),
(2, 'determinantes', 'Determinantes'),
(3, 'espacios-vectoriales', 'Espacios vectoriales'),
(4, 'transformaciones-lineales', 'Transformaciones lineales'),
(5, 'valores-y-vectores-caracteristicos', 'Valores y vectores característicos '),
(6, 'otras-unidades', 'Otras unidades'),
(7, 'listas-combinadas', 'Listas combinadas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notification_users`
--

CREATE TABLE IF NOT EXISTS `notification_users` (
  `id_notification` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `text_notification` varchar(250) NOT NULL,
  `type_notification` varchar(30) DEFAULT NULL,
  `ulr_notificacion` varchar(250) NOT NULL,
  `fecha_notification` varchar(25) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `notification_users`
--

INSERT INTO `notification_users` (`id_notification`, `id_user`, `text_notification`, `type_notification`, `ulr_notificacion`, `fecha_notification`) VALUES
(2, 1, 'Compartiste un contenido de Trigonometria', 'contenido', 'setflyphp/trigonometria/paneltrig.php?un=25&cont=', '28-09-2015 20:07'),
(3, 1, 'Compartiste un contenido de Trigonometria', 'contenido', 'setflyphp/trigonometria/paneltrig.php?un=25&cont=', '28-09-2015 20:10'),
(4, 2, 'Compartiste un contenido de Trigonometria', 'contenido', 'setflyphp/trigonometria/paneltrig.php?un=25&cont=', '28-09-2015 20:34'),
(5, 2, 'Compartiste un contenido de Trigonometria', 'contenido', 'setflyphp/trigonometria/paneltrig.php?un=1-Medidas y razones de los triangulos rectangulos&cont=', '28-09-2015 20:47'),
(6, 2, 'Se ha comentado un contenido tuyo', 'comentario', 'setflyphp/trigonometria/paneltrig.php?un=1-Medidas y razones de los triangulos rectangulos&cont=5', '28-09-2015 21:09'),
(7, 2, 'Se ha comentado un contenido tuyo', 'comentario', 'setflyphp/trigonometria/paneltrig.php?un=1-Medidas y razones de los triangulos rectangulos&cont=5', '28-09-2015 21:42'),
(8, 2, 'Creaste una nueva lista', 'lista', 'http://localhost/setflyphp/usuario/users.php?cs=cs&tb=tb&list=perr', '28-09-2015 22:25'),
(9, 2, 'Creaste una nueva lista', 'lista', 'http://localhost/setflyphp/usuario/users.php?cs=cs&tb=tb&list=la la la', '28-09-2015 22:27'),
(10, 2, 'Compartiste un contenido de Trigonometria', 'contenido', 'setflyphp/trigonometria/paneltrig.php?un=1-Medidas y razones de los triangulos rectangulos&cont=', '28-09-2015 22:44'),
(11, 2, 'Compartiste un contenido de Trigonometria', 'contenido', 'setflyphp/trigonometria/paneltrig.php?un=1-Medidas y razones de los triangulos rectangulos&cont=', '29-09-2015 23:43'),
(12, 2, 'Se ha comentado un contenido tuyo', 'comentario', 'setflyphp/trigonometria/paneltrig.php?un=1-Medidas y razones de los triangulos rectangulos&cont=7', '30-09-2015 01:09'),
(13, 2, 'Creaste una nueva lista', 'lista', 'http://localhost/setflyphp/usuario/users.php?cs=cs&tb=tb&list=pepa pig', '30-09-2015 08:27'),
(14, 2, 'Creaste una nueva lista', 'lista', 'http://localhost/setflyphp/usuario/users.php?cs=cs&tb=tb&list=lobos', '30-09-2015 09:47'),
(15, 2, 'Se ha comentado un contenido tuyo', 'comentario', 'setflyphp/trigonometria/paneltrig.php?un=1-Medidas y razones de los triangulos rectangulos&cont=7', '30-09-2015 10:08'),
(16, 2, 'Se ha comentado un contenido tuyo', 'comentario', 'setflyphp/trigonometria/paneltrig.php?un=1-Medidas y razones de los triangulos rectangulos&cont=7', '30-09-2015 10:11'),
(17, 2, 'Se ha comentado un contenido tuyo', 'comentario', 'setflyphp/trigonometria/paneltrig.php?un=1-Medidas y razones de los triangulos rectangulos&cont=7', '30-09-2015 10:12'),
(18, 2, 'Creaste una nueva lista', 'lista', 'http://localhost/setflyphp/usuario/users.php?cs=cs&tb=tb&list=pepsi', '30-09-2015 10:18'),
(19, 2, 'Creaste una nueva lista', 'lista', 'http://localhost/setflyphp/usuario/users.php?cs=cs&tb=tb&list=coca cola', '30-09-2015 10:20'),
(20, 2, 'Creaste una nueva lista', 'lista', 'http://localhost/setflyphp/usuario/users.php?cs=cs&tb=tb&list=2011', '30-09-2015 10:22'),
(21, 2, 'Creaste una nueva lista', 'lista', 'http://localhost/setflyphp/usuario/users.php?cs=cs&tb=tb&list=perros', '30-09-2015 10:22'),
(22, 2, 'Creaste una nueva lista', 'lista', 'http://localhost/setflyphp/usuario/users.php?cs=cs&tb=tb&list=ironia', '30-09-2015 10:23'),
(23, 2, 'Creaste una nueva lista', 'lista', 'http://localhost/setflyphp/usuario/users.php?cs=cs&tb=tb&list=ironiaa', '30-09-2015 10:23'),
(24, 2, 'Creaste una nueva lista', 'lista', 'http://localhost/setflyphp/usuario/users.php?cs=cs&tb=tb&list=clavo', '30-09-2015 10:23'),
(25, 2, 'Compartiste un contenido de Algebra intermedia', 'contenido', 'setflyphp/algintermedia/panelalg.php?un=1-Gráficas y funciones&cont=', '01-10-2015 12:26'),
(26, 2, 'Compartiste un contenido de Algebra intermedia', 'contenido', 'setflyphp/algintermedia/panelalg.php?un=1-Gráficas y funciones&cont=', '01-10-2015 12:26'),
(27, 2, 'Compartiste un contenido de Algebra intermedia', 'contenido', 'setflyphp/algintermedia/panelalg.php?un=1-Gráficas y funciones&cont=', '01-10-2015 12:29'),
(28, 2, 'Compartiste un contenido de Algebra intermedia', 'contenido', 'setflyphp/algintermedia/panelalg.php?un=1-Gráficas y funciones&cont=', '01-10-2015 12:37'),
(29, 2, 'Compartiste un contenido de Algebra intermedia', 'contenido', 'setflyphp/algintermedia/panelalg.php?un=1-Gráficas y funciones&cont=', '01-10-2015 12:39'),
(30, 2, 'Compartiste un contenido de Algebra intermedia', 'contenido', 'setflyphp/algintermedia/panelalg.php?un=1-Gráficas y funciones&cont=', '01-10-2015 12:56'),
(31, 2, 'Compartiste un contenido de Algebra intermedia', 'contenido', 'setflyphp/algintermedia/panelalg.php?un=1-Gráficas y funciones&cont=', '01-10-2015 12:57'),
(32, 2, 'Compartiste un contenido de Algebra intermedia', 'contenido', 'setflyphp/algintermedia/panelalg.php?un=1-Gr?ficas y funciones&cont=', '01-10-2015 13:00'),
(33, 2, 'Compartiste un contenido de Algebra intermedia', 'contenido', 'setflyphp/algintermedia/panelalg.php?un=1-GrÃ¡ficas y funciones&cont=', '01-10-2015 13:01'),
(34, 2, 'Compartiste un contenido de Algebra intermedia', 'contenido', 'setflyphp/algintermedia/panelalg.php?un=1-Gráficas y funciones&cont=', '01-10-2015 13:03'),
(35, 2, 'Se ha comentado un contenido tuyo', 'comentario', 'setflyphp/trigonometria/paneltrig.php?un=1-Medidas y razones de los triangulos rectangulos&cont=7', '01-10-2015 13:37'),
(36, 2, 'Compartiste un contenido de Trigonometria', 'contenido', 'setflyphp/trigonometria/paneltrig.php?un=8-Coordenadas polares&cont=', '01-10-2015 13:39'),
(37, 2, 'Compartiste un contenido de Algebra in', 'contenido', 'setflyphp/algintermedia/panelalg.php?un=1-Gráficas y funciones&cont=', '01-10-2015 15:37'),
(38, 2, 'Compartiste un contenido de Algebra in', 'contenido', 'setflyphp/algintermedia/panelalg.php?un=1-GrÃ¡ficas y funciones&cont=', '01-10-2015 15:39'),
(39, 2, 'Compartiste un contenido de Algebra in', 'contenido', 'setflyphp/algintermedia/panelalg.php?un=1-GrÃ¡ficas y funciones&cont=', '01-10-2015 15:43'),
(40, 2, 'Compartiste un contenido de Trigonometria', 'contenido', 'setflyphp/trigonometria/paneltrig.php?un=1-Medidas y razones de los triangulos rectangulos&cont=', '01-10-2015 15:45'),
(41, 2, 'Compartiste un contenido de Algebra in', 'contenido', 'setflyphp/algintermedia/panelalg.php?un=1-GrÃ¡ficas y funciones&cont=', '01-10-2015 18:01'),
(42, 2, 'Compartiste un contenido de Algebra in', 'contenido', 'setflyphp/algintermedia/panelalg.php?un=3-Funciones racionales&cont=', '01-10-2015 18:05'),
(43, 2, 'Se ha comentado un contenido tuyo', 'comentario', 'setflyphp/algintermedia/panelalg.php?un=1-GrÃ¡ficas y funciones&cont=23', '01-10-2015 19:47'),
(44, 2, 'Compartiste un contenido de Algebra basica', 'contenido', 'setflyphp/basica/panelalgbas.php?un=1-Suma, resta, multiplicaciÃ³n algebraica y uso de parÃ©ntesis&cont=', '01-10-2015 22:32'),
(45, 2, 'Compartiste un contenido de Algebra basica', 'contenido', 'setflyphp/basica/panelalgbas.php?un=1-Suma, resta, multiplicaciÃ³n algebraica y uso de parÃ©ntesis&cont=', '02-10-2015 00:06'),
(46, 2, 'Compartiste un contenido de Algebra basica', 'contenido', 'setflyphp/basica/panelalgbas.php?un=1-Suma, resta, multiplicaciÃ³n algebraica y uso de parÃ©ntesis&cont=', '02-10-2015 00:07'),
(47, 2, 'Compartiste un contenido de Algebra basica', 'contenido', 'setflyphp/basica/panelalgbas.php?un=1-Suma, resta, multiplicaciÃ³n algebraica y uso de parÃ©ntesis&cont=', '02-10-2015 00:12'),
(48, 2, 'Compartiste un contenido de Algebra basica', 'contenido', 'setflyphp/basica/panelalgbas.php?un=1-Suma, resta, multiplicaciÃ³n algebraica y uso de parÃ©ntesis&cont=29', '02-10-2015 00:17'),
(49, 2, 'Se ha comentado un contenido tuyo', 'comentario', 'setflyphp/basintermedia/panelbas.php?un=1-Suma, resta, multiplicaciÃ³n algebraica y uso de parÃ©ntesis&cont=29', '02-10-2015 00:19'),
(50, 2, 'Se ha comentado un contenido tuyo', 'comentario', 'setflyphp/basintermedia/panelbas.php?un=1-Suma, resta, multiplicaciÃ³n algebraica y uso de parÃ©ntesis&cont=29', '02-10-2015 00:20'),
(51, 2, 'Se ha comentado un contenido tuyo', 'comentario', 'setflyphp/basintermedia/panelbas.php?un=1-Suma, resta, multiplicaciÃ³n algebraica y uso de parÃ©ntesis&cont=29', '02-10-2015 00:21'),
(52, 2, 'Se ha comentado un contenido tuyo', 'comentario', 'setflyphp/basintermedia/panelbas.php?un=1-Suma, resta, multiplicaciÃ³n algebraica y uso de parÃ©ntesis&cont=29', '02-10-2015 00:22'),
(53, 2, 'Se ha comentado un contenido tuyo', 'comentario', 'setflyphp/basica/panelbas.php?un=1-Suma, resta, multiplicaciÃ³n algebraica y uso de parÃ©ntesis&cont=29', '02-10-2015 00:22'),
(54, 2, 'Se ha comentado un contenido tuyo', 'comentario', 'setflyphp/basica/panelalgbas.php?un=1-Suma, resta, multiplicaciÃ³n algebraica y uso de parÃ©ntesis&cont=29', '02-10-2015 00:25'),
(55, 2, 'Compartiste un contenido de Gemetria analitica', 'contenido', 'setflyphp/geometrianalitica/panelgeo.php?un=La recta&cont=30', '02-10-2015 12:32'),
(56, 2, 'Se ha comentado un contenido tuyo', 'comentario', 'setflyphp/geometrianalitica/panelgeo.php?un=La recta&cont=30', '02-10-2015 13:26'),
(57, 2, 'Compartiste un contenido de Calculo diferencial', 'contenido', 'setflyphp/calculodif/paneldif.php?un=Derivadas de funciones trigonometricas directas&cont=31', '03-10-2015 11:59'),
(58, 2, 'Compartiste un contenido de Calculo diferencial', 'contenido', 'setflyphp/calculodif/paneldif.php?un=Limites y continuidad&cont=32', '03-10-2015 12:01'),
(59, 2, 'Se ha comentado un contenido tuyo', 'comentario', 'setflyphp/calculodif/paneldif.php?un=Limites y continuidad&cont=32', '03-10-2015 12:22'),
(60, 2, 'Compartiste un contenido de Calculo integral', 'contenido', 'setflyphp/calculointegral/panelint.php?un=Introduccion a la integraciÃ³n&cont=33', '03-10-2015 16:05'),
(61, 2, 'Se ha comentado un contenido tuyo', 'comentario', 'setflyphp/calculointegral/panelint.php?un=Introduccion a la integraciÃ³n&cont=33', '03-10-2015 16:20'),
(62, 2, 'Compartiste un contenido de Calculo integral', 'contenido', 'setflyphp/calculointegral/panelint.php?un=Introduccion a la integraciÃ³n&cont=34', '03-10-2015 16:24'),
(63, 2, 'Se ha comentado un contenido tuyo', 'comentario', 'setflyphp/calculointegral/panelint.php?un=Introduccion a la integraciÃ³n&cont=34', '03-10-2015 16:25'),
(64, 2, 'Compartiste un contenido de Estadistica', 'contenido', 'setflyphp/estadistica/panelest.php?un=Presentacion de datos&cont=35', '04-10-2015 11:54'),
(65, 2, 'Se ha comentado un contenido tuyo', 'comentario', 'setflyphp/estadistica/panelest.php?un=Presentacion de datos&cont=35', '04-10-2015 14:09'),
(66, 2, 'Compartiste un contenido de Calculo integral', 'contenido', 'setflyphp/calculointegral/panelint.php?un=Introduccion a la integraciÃ³n&cont=36', '05-10-2015 01:14'),
(67, 2, 'Compartiste un contenido de Algebra basica', 'contenido', 'setflyphp/basica/panelalgbas.php?un=1-Suma, resta, multiplicaciÃ³n algebraica y uso de parÃ©ntesis&cont=37', '05-10-2015 01:15'),
(68, 2, 'Compartiste un contenido de Algebra basica', 'contenido', 'setflyphp/basica/panelalgbas.php?un=alert(''hola mundo'')&cont=38', '05-10-2015 21:46'),
(69, 2, 'Compartiste un contenido de Estadistica', 'contenido', 'setflyphp/estadistica/panelest.php?un=Medidas de tendencia central&cont=39', '06-10-2015 09:15'),
(70, 2, 'Compartiste un contenido de Algebra basica', 'contenido', 'setflyphp/basica/panelalgbas.php?un=1-Suma, resta, multiplicaciÃ³n algebraica y uso de parÃ©ntesis&cont=40', '07-10-2015 08:56'),
(71, 2, 'Compartiste un contenido de Algebra intermedia', 'contenido', 'setflyphp/algintermedia/panelalg.php?un=1-GrÃ¡ficas y funciones&cont=41', '08-10-2015 15:19'),
(72, 2, 'Compartiste un contenido de Algebra intermedia', 'contenido', 'setflyphp/algintermedia/panelalg.php?un=1-GrÃ¡ficas y funciones&cont=42', '08-10-2015 15:20'),
(73, 2, 'Se ha comentado un contenido tuyo', 'comentario', 'setflyphp/algintermedia/panelalg.php?un=1-GrÃ¡ficas y funciones&cont=42', '12-10-2015 16:35'),
(74, 2, 'Se ha comentado un contenido tuyo', 'comentario', 'setflyphp/algintermedia/panelalg.php?un=1-Medidas y razones de los triangulos rectangulos&cont=7', '12-10-2015 16:36'),
(75, 2, 'Se ha comentado un contenido tuyo', 'comentario', 'setflyphp/algintermedia/panelalg.php?un=1-Medidas y razones de los triangulos rectangulos&cont=22', '12-10-2015 16:50'),
(76, 2, 'Se ha comentado un contenido tuyo', 'comentario', 'setflyphp/algintermedia/panelalg.php?un=1-GrÃ¡ficas y funciones&cont=23', '12-10-2015 16:57'),
(77, 2, 'Se ha comentado un contenido tuyo', 'comentario', 'setflyphp/algintermedia/panelalg.php?un=1-Medidas y razones de los triangulos rectangulos&cont=7', '12-10-2015 17:00'),
(78, 2, 'Compartiste un contenido de Algebra intermedia', 'contenido', '', '12-10-2015 17:42'),
(79, 2, 'Compartiste un contenido de Trigonometria', 'contenido', 'setflyphp/algintermedia/panelalg.php?un=1-Medidas y razones de los triangulos rectangulos&cont=46', '12-10-2015 17:42'),
(80, 2, 'Compartiste un contenido de Trigonometria', 'contenido', 'setflyphp/algintermedia/panelalg.php?un=1-Medidas y razones de los triangulos rectangulos&cont=47', '12-10-2015 17:47'),
(81, 2, 'Compartiste un contenido de Algebra intermedia', 'contenido', '', '12-10-2015 17:47'),
(82, 2, 'Compartiste un contenido de Algebra intermedia', 'contenido', 'setflyphp/algintermedia/panelalg.php?un=3-Funciones racionales&cont=49', '12-10-2015 17:48'),
(83, 2, 'Compartiste un contenido de Trigonometria', 'contenido', 'setflyphp/trigonometria/paneltrig.php?un=3-Graficas de las funciones trigonometricas&cont=50', '12-10-2015 17:49'),
(84, 2, 'Se ha comentado un contenido tuyo', 'comentario', 'setflyphp/algintermedia/panelalg.php?un=3-Graficas de las funciones trigonometricas&cont=50', '12-10-2015 18:52'),
(85, 2, 'Se ha comentado un contenido tuyo', 'comentario', 'setflyphp/algintermedia/panelalg.php?un=3-Graficas de las funciones trigonometricas&cont=50', '12-10-2015 19:03'),
(86, 2, 'Se ha comentado un contenido tuyo', 'comentario', 'setflyphp/algintermedia/panelalg.php?un=3-Funciones racionales&cont=45', '12-10-2015 19:08'),
(87, 2, 'Se ha comentado un contenido tuyo', 'comentario', 'setflyphp/algintermedia/panelalg.php?un=3-Graficas de las funciones trigonometricas&cont=50', '12-10-2015 19:09'),
(88, 2, 'Se ha comentado un contenido tuyo', 'comentario', 'setflyphp/algintermedia/panelalg.php?un=3-Funciones racionales&cont=45', '12-10-2015 19:15'),
(89, 2, 'Se ha comentado un contenido tuyo', 'comentario', 'setflyphp/algintermedia/panelalg.php?un=3-Graficas de las funciones trigonometricas&cont=50', '12-10-2015 19:16'),
(90, 2, 'Compartiste un contenido de Trigonometria', 'contenido', 'setflyphp/trigonometria/paneltrig.php?un=8-Coordenadas polares&cont=51', '12-10-2015 19:17'),
(91, 2, 'Compartiste un contenido de Trigonometria', 'contenido', 'setflyphp/trigonometria/paneltrig.php?un=1-Medidas y razones de los triangulos rectangulos&cont=52', '12-10-2015 20:09'),
(92, 2, 'Compartiste un contenido de Algebra intermedia', 'contenido', 'setflyphp/algintermedia/panelalg.php?un=1-GrÃ¡ficas y funciones&cont=53', '12-10-2015 20:31'),
(93, 2, 'Se ha comentado un contenido tuyo', 'comentario', 'setflyphp/algintermedia/panelalg.php?un=1-GrÃ¡ficas y funciones&cont=53', '12-10-2015 20:33'),
(94, 2, 'Se ha comentado un contenido tuyo', 'comentario', 'setflyphp/algintermedia/panelalg.php?un=1-GrÃ¡ficas y funciones&cont=53', '12-10-2015 20:34'),
(95, 2, 'Se ha comentado un contenido tuyo', 'comentario', 'setflyphp/algintermedia/panelalg.php?un=1-Medidas y razones de los triangulos rectangulos&cont=52', '12-10-2015 20:34'),
(96, 2, 'Compartiste un contenido de Trigonometria', 'contenido', 'setflyphp/trigonometria/paneltrig.php?un=1-Medidas y razones de los triangulos rectangulos&cont=54', '12-10-2015 20:36'),
(97, 2, 'Compartiste un contenido de Algebra intermedia', 'contenido', 'setflyphp/algintermedia/panelalg.php?un=1-GrÃ¡ficas y funciones&cont=55', '12-10-2015 20:54'),
(98, 2, 'Compartiste un contenido de Algebra intermedia', 'contenido', 'setflyphp/algintermedia/panelalg.php?un=2-Funciones polinomiales&cont=56', '12-10-2015 20:59'),
(99, 2, 'Compartiste un contenido de Geometria analitica', 'contenido', '', '12-10-2015 22:24'),
(100, 2, 'Compartiste un contenido de Geometria analitica', 'contenido', '', '12-10-2015 22:25'),
(101, 2, 'Compartiste un contenido de Geometria analitica', 'contenido', '', '12-10-2015 22:31'),
(102, 2, 'Se ha comentado un contenido tuyo', 'comentario', 'setflyphp/algintermedia/panelalg.php?un=La recta&cont=59', '12-10-2015 22:43'),
(103, 2, 'Se ha comentado un contenido tuyo', 'comentario', '', '12-10-2015 22:49'),
(104, 2, 'Se ha comentado un contenido tuyo', 'comentario', '', '12-10-2015 22:53'),
(105, 2, 'Se ha comentado un contenido tuyo', 'comentario', '', '12-10-2015 22:54'),
(106, 2, 'Se ha comentado un contenido tuyo', 'comentario', '', '12-10-2015 22:58'),
(107, 2, 'Se ha comentado un contenido tuyo', 'comentario', 'setflyphp/geometrianalitica/panelgeo.php?un=La recta&cont=59', '12-10-2015 22:59'),
(108, 2, 'Compartiste un contenido de Estadistica', 'contenido', 'setflyphp/estadistica/panelest.php?un=Conceptos bÃ¡sicos en la estadÃ­stica&cont=60', '15-10-2015 21:57'),
(109, 2, 'Compartiste un contenido de Calculo avanzado', 'contenido', '', '06-11-2015 22:28'),
(110, 2, 'Han respondido a una peticiÃ³n de recomendaciÃ³n tuya', 'recomendacion', 'http://localhost/setflyphp/geometrianalitica/recogeo?rec=13', '08-11-2015 19:11'),
(111, 2, 'Han respondido a una peticiÃ³n de recomendaciÃ³n tuya', 'recomendacion', 'http://localhost/setflyphp/algintermedia/recoalg?rec=38', '08-11-2015 19:12'),
(112, 2, 'Se ha comentado un contenido tuyo', 'comentario', 'http://www.fiseaprende.com/algintermedia/panelalg?un=Funciones racionales&cont=45', '27-11-2015 18:14'),
(113, 2, 'Compartiste un contenido de Algebra intermedia', 'contenido', 'http://localhost/pruebas/algintermedia/panelalg?un=funciones-polinomiales&cont=62', '27-11-2015 19:03'),
(114, 2, 'Se ha comentado un contenido tuyo', 'comentario', 'http://localhost/pruebas/algintermedia/panelalg?un=funciones-polinomiales&cont=62', '28-11-2015 08:48'),
(115, 2, 'Se ha comentado un contenido tuyo', 'comentario', '', '16-02-2016 13:09'),
(116, 2, 'Se ha comentado un contenido tuyo', 'comentario', '', '16-02-2016 13:10'),
(117, 2, 'Se ha comentado un contenido tuyo', 'comentario', 'http://localhost/cambio/calculointegral/paneldif?un=introduccin-a-la-integracin&cont=18', '16-02-2016 13:14'),
(118, 2, 'Se ha comentado un contenido tuyo', 'comentario', 'http://localhost/cambio/calculointegral/paneldif?un=introduccin-a-la-integracin&cont=18', '16-02-2016 13:14'),
(119, 1, 'Compartiste un contenido de Ecuaciones diferenciales', 'contenido', 'http://localhost/cambio/diferenciales/panel-ecuaciones-diferenciales?un=conceptos-bsicos-sobre-ecuaciones-diferenciales&cont=63', '13-03-2016 15:25'),
(120, 1, 'Compartiste un contenido de Ecuaciones diferenciales', 'contenido', 'http://localhost/cambio/diferenciales/panel-ecuaciones-diferenciales?un=conceptos-bsicos-sobre-ecuaciones-diferenciales&cont=64', '13-03-2016 15:26'),
(121, 1, 'Compartiste un contenido de Ecuaciones diferenciales', 'contenido', '/diferenciales/panel-ecuaciones-diferenciales?un=conceptos-bsicos-sobre-ecuaciones-diferenciales&cont=65', '13-03-2016 15:31'),
(122, 1, 'Compartiste un contenido de Algebra intermedia', 'contenido', '/algintermedia/panel-algebra-intermedia?un=grficas-y-funciones&cont=66', '13-03-2016 22:59'),
(123, 1, 'Compartiste un contenido de Algebra intermedia', 'contenido', '/algintermedia/panel-algebra-intermedia?un=grficas-y-funciones&cont=67', '13-03-2016 23:01'),
(124, 1, 'Compartiste un contenido de Algebra intermedia', 'contenido', '/algintermedia/panel-algebra-intermedia?un=grficas-y-funciones&cont=68', '13-03-2016 23:01'),
(125, 1, 'Compartiste un contenido de Algebra intermedia', 'contenido', 'http://localhost/cambio/algintermedia/panel-algebra-intermedia?un=grficas-y-funciones&cont=69', '13-03-2016 23:02'),
(126, 1, 'Compartiste un contenido de Algebra intermedia', 'contenido', 'http://localhost/cambio/algintermedia/panel-algebra-intermedia?un=grficas-y-funciones&cont=70', '13-03-2016 23:13'),
(127, 1, 'Compartiste un contenido de Algebra intermedia', 'contenido', 'http://localhost/cambio/algintermedia/panel-algebra-intermedia?un=funciones-racionales&cont=71', '2016-03-13 23:15:17'),
(128, 1, 'Compartiste un contenido de Calculo integral', 'contenido', 'http://localhost/cambio/calculointegral/panel-calculointegral?un=introduccin-a-la-integracin&cont=72', '2016-03-15 21:51:51'),
(129, 1, 'Compartiste un contenido de Calculo integral', 'contenido', 'http://localhost/cambio/calculointegral/panel-calculointegral?un=introduccin-a-la-integracin&cont=73', '2016-03-15 21:52:46'),
(130, 1, 'Compartiste un contenido de Calculo integral', 'contenido', 'http://localhost/cambio/calculointegral/panel-calculointegral?un=introduccin-a-la-integracin&cont=74', '2016-03-15 21:58:35'),
(131, 1, 'Compartiste un contenido de Calculo integral', 'contenido', 'http://localhost/cambio/calculointegral/panel-calculointegral?un=introduccin-a-la-integracin&cont=75', '2016-03-16 08:05:41'),
(132, 1, 'Compartiste un contenido de Calculo integral', 'contenido', 'http://localhost/cambio/calculointegral/panel-calculointegral?un=introduccin-a-la-integracin&cont=76', '2016-03-16 08:13:12'),
(133, 1, 'Compartiste un contenido de Calculo integral', 'contenido', 'http://localhost/cambio/calculointegral/panel-calculointegral?un=introduccin-a-la-integracin&cont=77', '2016-03-16 08:13:46'),
(134, 1, 'Compartiste un contenido de Calculo integral', 'contenido', 'http://localhost/cambio/calculointegral/panel-calculointegral?un=introduccin-a-la-integracin&cont=78', '2016-03-16 08:14:27'),
(135, 1, 'Compartiste un contenido de Calculo integral', 'contenido', 'http://localhost/cambio/calculointegral/panel-calculointegral?un=integracin-de-funciones-logartmicas&cont=79', '2016-03-16 08:14:57'),
(136, 1, 'Compartiste un contenido de Calculo integral', 'contenido', 'http://localhost/cambio/calculointegral/panel-calculointegral?un=introduccin-a-la-integracin&cont=80', '2016-03-16 08:15:47'),
(137, 1, 'Compartiste un contenido de Calculo integral', 'contenido', 'http://localhost/cambio/calculointegral/panel-calculointegral?un=introduccin-a-la-integracin&cont=81', '2016-03-16 08:16:13'),
(138, 1, 'Compartiste un contenido de Calculo integral', 'contenido', 'http://localhost/cambio/calculointegral/panel-calculointegral?un=introduccin-a-la-integracin&cont=82', '2016-03-16 08:16:42'),
(139, 1, 'Compartiste un contenido de Algebra basica', 'contenido', 'http://localhost/cambio/basica/panel-algebra-basica?un=3-productos-notables&cont=83', '2016-03-30 08:21:23'),
(140, 1, 'Compartiste un contenido de Algebra basica', 'contenido', 'http://localhost/cambio/basica/panel-algebra-basica?un=3-productos-notables&cont=84', '2016-03-30 08:21:47'),
(141, 1, 'Compartiste un contenido de Algebra basica', 'contenido', 'http://localhost/cambio/basica/panel-algebra-basica?un=4-descomposicin-factorial&cont=85', '2016-03-30 08:22:25'),
(142, 1, 'Compartiste un contenido de Algebra basica', 'contenido', 'http://localhost/cambio/basica/panel-algebra-basica?un=4-descomposicin-factorial&cont=86', '2016-03-30 08:31:50'),
(143, 1, 'Compartiste un contenido de Algebra basica', 'contenido', 'http://localhost/cambio/basica/panel-algebra-basica?un=1-suma-resta-multiplicacin-algebraica-y-uso-de-parntesis&cont=87', '2016-03-30 08:47:01'),
(144, 1, 'Compartiste un contenido de Algebra basica', 'contenido', 'http://localhost/cambio/basica/panel-algebra-basica?un=1-suma-resta-multiplicacin-algebraica-y-uso-de-parntesis&cont=88', '2016-03-30 08:48:18'),
(145, 1, 'Compartiste un contenido de Algebra basica', 'contenido', 'http://localhost/cambio/basica/panel-algebra-basica?un=1-suma-resta-multiplicacin-algebraica-y-uso-de-parntesis&cont=89', '2016-03-30 08:48:46'),
(146, 1, 'Compartiste un contenido de Algebra basica', 'contenido', 'http://localhost/cambio/basica/panel-algebra-basica?un=1-suma-resta-multiplicacin-algebraica-y-uso-de-parntesis&cont=90', '2016-03-30 08:50:05'),
(147, 1, 'Compartiste un contenido de Algebra basica', 'contenido', 'http://localhost/cambio/basica/panel-algebra-basica?un=1-suma-resta-multiplicacin-algebraica-y-uso-de-parntesis&cont=91', '2016-03-30 08:51:07'),
(148, 1, 'Compartiste un contenido de Algebra basica', 'contenido', 'http://localhost/cambio/basica/panel-algebra-basica?un=1-suma-resta-multiplicacin-algebraica-y-uso-de-parntesis&cont=92', '2016-03-30 08:51:34'),
(149, 1, 'Compartiste un contenido de Algebra basica', 'contenido', 'http://localhost/cambio/basica/panel-algebra-basica?un=1-suma-resta-multiplicacin-algebraica-y-uso-de-parntesis&cont=93', '2016-03-30 08:54:00'),
(150, 1, 'Compartiste un contenido de Algebra basica', 'contenido', 'http://localhost/cambio/basica/panel-algebra-basica?un=1-suma-resta-multiplicacin-algebraica-y-uso-de-parntesis&cont=94', '2016-03-30 08:54:15'),
(151, 1, 'Compartiste un contenido de Algebra basica', 'contenido', 'http://localhost/cambio/basica/panel-algebra-basica?un=1-suma-resta-multiplicacin-algebraica-y-uso-de-parntesis&cont=95', '2016-03-30 08:54:50'),
(152, 1, 'Compartiste un contenido de Algebra basica', 'contenido', 'http://localhost/cambio/basica/panel-algebra-basica?un=1-suma-resta-multiplicacin-algebraica-y-uso-de-parntesis&cont=96', '2016-03-30 08:55:11'),
(153, 1, 'Compartiste un contenido de Algebra basica', 'contenido', 'http://localhost/cambio/basica/panel-algebra-basica?un=1-suma-resta-multiplicacin-algebraica-y-uso-de-parntesis&cont=97', '2016-03-30 08:55:24'),
(154, 1, 'Compartiste un contenido de Algebra basica', 'contenido', 'http://localhost/cambio/basica/panel-algebra-basica?un=1-suma-resta-multiplicacin-algebraica-y-uso-de-parntesis&cont=98', '2016-03-30 08:55:36'),
(155, 1, 'Compartiste un contenido de Algebra basica', 'contenido', 'http://localhost/cambio/basica/panel-algebra-basica?un=1-suma-resta-multiplicacin-algebraica-y-uso-de-parntesis&cont=99', '2016-03-30 08:55:55'),
(156, 1, 'Compartiste un contenido de Algebra basica', 'contenido', 'http://localhost/cambio/basica/panel-algebra-basica?un=1-suma-resta-multiplicacin-algebraica-y-uso-de-parntesis&cont=100', '2016-03-30 08:56:05'),
(157, 1, 'Compartiste un contenido de Algebra basica', 'contenido', 'http://localhost/cambio/basica/panel-algebra-basica?un=1-suma-resta-multiplicacin-algebraica-y-uso-de-parntesis&cont=101', '2016-03-30 08:57:11'),
(158, 1, 'Compartiste un contenido de Algebra basica', 'contenido', 'http://localhost/cambio/basica/panel-algebra-basica?un=1-suma-resta-multiplicacin-algebraica-y-uso-de-parntesis&cont=102', '2016-03-30 08:58:32'),
(159, 1, 'Compartiste un contenido de Algebra basica', 'contenido', 'http://localhost/cambio/basica/panel-algebra-basica?un=1-suma-resta-multiplicacin-algebraica-y-uso-de-parntesis&cont=103', '2016-03-30 08:59:19'),
(160, 1, 'Compartiste un contenido de Algebra intermedia', 'contenido', 'http://localhost/cambio/algintermedia/panel-algebra-intermedia?un=funciones-polinomiales&cont=104', '2016-04-03 16:22:56'),
(161, 1, 'Compartiste un contenido de Algebra intermedia', 'contenido', 'http://localhost/cambio/algintermedia/panel-algebra-intermedia?un=funciones-polinomiales&cont=105', '2016-04-03 16:25:43'),
(162, 1, 'Compartiste un contenido de Algebra intermedia', 'contenido', 'http://localhost/cambio/algintermedia/panel-algebra-intermedia?un=funciones-polinomiales&cont=106', '2016-04-03 16:27:57'),
(163, 1, 'Compartiste un contenido de Algebra intermedia', 'contenido', 'http://localhost/cambio/algintermedia/panel-algebra-intermedia?un=funciones-polinomiales&cont=107', '2016-04-03 16:30:25'),
(164, 1, 'Compartiste un contenido de Algebra intermedia', 'contenido', 'http://localhost/cambio/algintermedia/panel-algebra-intermedia?un=funciones-polinomiales&cont=108', '2016-04-03 16:55:01'),
(165, 1, 'Compartiste un contenido de Trigonometria', 'contenido', 'http://localhost/cambio/trigonometria/panel-trigonometria?un=leyes-de-los-angulos&cont=109', '2016-04-05 17:22:08'),
(166, 1, 'Compartiste un contenido de Trigonometria', 'contenido', 'http://localhost/cambio/trigonometria/panel-trigonometria?un=leyes-de-los-angulos&cont=110', '2016-04-05 17:31:12'),
(167, 1, 'Compartiste un contenido de Trigonometria', 'contenido', 'http://localhost/cambio/trigonometria/panel-trigonometria?un=leyes-de-los-angulos&cont=111', '2016-04-05 17:39:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opcion`
--

CREATE TABLE IF NOT EXISTS `opcion` (
  `id_option` int(11) NOT NULL,
  `inciso` char(1) NOT NULL,
  `id_ejerc` int(11) NOT NULL,
  `text_opt` varchar(200) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `opcion`
--

INSERT INTO `opcion` (`id_option`, `inciso`, `id_ejerc`, `text_opt`) VALUES
(1, 'a', 15, '3'),
(2, 'b', 15, '5'),
(3, 'c', 15, '4'),
(4, 'a', 16, 'Derivando'),
(5, 'b', 16, 'Mu '),
(6, 'c', 16, 'Sumatoria'),
(7, 'd', 16, 'Integrando');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `practicas_url`
--

CREATE TABLE IF NOT EXISTS `practicas_url` (
  `id_relurl` int(11) NOT NULL,
  `name_lprc` varchar(220) DEFAULT NULL,
  `name_limpio` varchar(220) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `practicas_url`
--

INSERT INTO `practicas_url` (`id_relurl`, `name_lprc`, `name_limpio`) VALUES
(1, 'Ejercicios bÃ¡sicos con matrices', 'ejercicios-bsicos-con-matrices');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preferent_user`
--

CREATE TABLE IF NOT EXISTS `preferent_user` (
  `id_relpreferent` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `seccion` varchar(180) NOT NULL,
  `tipo_preferent` varchar(30) NOT NULL,
  `matter` varchar(30) NOT NULL,
  `url_preferent` varchar(250) NOT NULL,
  `fecha_registro_preferent` varchar(25) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `preferent_user`
--

INSERT INTO `preferent_user` (`id_relpreferent`, `id_user`, `seccion`, `tipo_preferent`, `matter`, `url_preferent`, `fecha_registro_preferent`) VALUES
(1, 2, 'Graficas de formas combinadas, introducciÃ³n a las series de Fourier', 'tema', 'Trigonometria', '/setflyphp/trigonometria/paneltrig.php?un=3-Graficas de las funciones trigonometricas&tm=Graficas de formas combinadas, introducciÃ³n a las series de Fourier', '12-10-2015 18:51'),
(2, 2, '3-Graficas de las funciones trigonometricas', 'unidad', 'Trigonometria', '/setflyphp/trigonometria/paneltrig.php?un=3-Graficas de las funciones trigonometricas', '12-10-2015 18:51'),
(3, 2, 'Como graficar una funciÃ³n racional Varios ejemplos', 'tema', 'Algebra intermedia', '/setflyphp/algintermedia/panelalg.php?un=3-Funciones racionales&tm=Como graficar una funciÃ³n racional Varios ejemplos', '12-10-2015 19:54'),
(5, 2, 'DivisiÃ³n de polinomios', 'tema', 'Algebra intermedia', '/setflyphp/algintermedia/panelalg.php?un=2-Funciones polinomiales&tm=DivisiÃ³n de polinomios', '12-10-2015 21:09'),
(6, 2, '2-Funciones polinomiales', 'unidad', 'Algebra intermedia', '/setflyphp/algintermedia/panelalg.php?un=2-Funciones polinomiales', '12-10-2015 21:10'),
(7, 2, 'Funciones de dos o mas variables', 'unidad', 'Calculo avanzado', '/setflyphp/c-avanzado/panelcalculo.php?un=Funciones de dos o mas variables', '06-11-2015 23:21'),
(8, 2, 'Graficas de funciones de 2 variables', 'tema', 'Calculo avanzado', '/setflyphp/c-avanzado/panelcalculo.php?un=Funciones de dos o mas variables&tm=Graficas de funciones de 2 variables', '06-11-2015 23:21'),
(9, 2, 'Funciones polinomiales', 'unidad', 'Algebra intermedia', '/pruebas/algintermedia/panelalg.php?un=Funciones polinomiales', '28-11-2015 08:38'),
(10, 2, 'funciones-polinomiales', 'unidad', 'Algebra intermedia', '/pruebas/algintermedia/panelalg.php?un=funciones-polinomiales', '28-11-2015 09:08'),
(11, 2, 'temas-y-ejercicios-en-general', 'tema', 'Algebra intermedia', '/pruebas/algintermedia/panelalg.php?un=funciones-polinomiales&tm=temas-y-ejercicios-en-general', '28-11-2015 09:09'),
(12, 2, '', 'unidad', 'Algebra intermedia', '/pruebas/algintermedia/panelalg.php?un=funciones-polinomiales', '28-11-2015 09:55'),
(13, 2, 'Temas y ejercicios en general', 'tema', 'Algebra intermedia', '/pruebas/algintermedia/panelalg.php?un=funciones-polinomiales&tm=temas-y-ejercicios-en-general', '28-11-2015 09:57'),
(14, 2, 'Contenidos generales', 'unidad', 'Algebra intermedia', '/pruebas/algintermedia/panelalg.php?un=contenidos-generales', '28-11-2015 09:57'),
(15, 2, 'Introducciï¿½n a la integraciï¿½n', 'unidad', 'Calculo integral', '/cambio/calculointegral/panelint.php?un=introduccin-a-la-integracin', '16-02-2016 13:36'),
(16, 2, 'Temas en general de la unidad', 'tema', 'Calculo integral', '/cambio/calculointegral/panelint.php?un=introduccin-a-la-integracin&tm=temas-en-general-de-la-unidad', '16-02-2016 13:37'),
(17, 2, 'Constante de integraciï¿½n', 'tema', 'Calculo integral', '/cambio/calculointegral/panelint.php?un=introduccin-a-la-integracin&tm=constante-de-integracin', '16-02-2016 13:38'),
(18, 1, 'Introducciï¿½n a la integraciï¿½n', 'unidad', 'Calculo integral', '/cambio/calculointegral/panel-calculointegral.php?un=introduccin-a-la-integracin', '23-03-2016 01:05'),
(19, 1, 'Contenidos en general', 'unidad', 'Calculo integral', '/cambio/calculointegral/panel-calculointegral.php?un=contenidos-en-general', '10-04-2016 11:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recomendaciones_mat`
--

CREATE TABLE IF NOT EXISTS `recomendaciones_mat` (
  `id_reco` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `materia` varchar(25) NOT NULL,
  `texto_reco` varchar(200) NOT NULL,
  `fecha_registro_reco` varchar(25) NOT NULL,
  `fecha_modificacion_reco` datetime NOT NULL,
  `data_registro_reco` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `recomendaciones_mat`
--

INSERT INTO `recomendaciones_mat` (`id_reco`, `id_user`, `materia`, `texto_reco`, `fecha_registro_reco`, `fecha_modificacion_reco`, `data_registro_reco`) VALUES
(15, 2, 'Algebra basica', 'No encuentro un buen contenido para calculo :( ayuda', '27-10-2015 12:48', '2015-10-29 14:57:58', '2015-10-27 12:48:20'),
(14, 2, 'Algebra intermedia', 'Hola amigos me podrian recomendar algun lugar en donde pueda ver graficas exponenciales?', '27-10-2015 12:46', '0000-00-00 00:00:00', '2015-10-27 12:46:51'),
(13, 2, 'Geometria analitica', 'Hola amigos alguien tendra un buen pdf de conicas?', '27-10-2015 00:55', '0000-00-00 00:00:00', '2015-10-27 00:55:27'),
(12, 2, 'Algebra basica', 'Hola comunidad espero me pudieran recomentar un contenido de algebra intermedia', '27-10-2015 00:12', '0000-00-00 00:00:00', '2015-10-27 00:12:16'),
(16, 2, 'Algebra basica', 'Saludos, alguien me podria recomendar un sitio interactivo para estudiar calculo', '27-10-2015 12:49', '2015-10-29 14:57:51', '2015-10-27 12:49:10'),
(17, 2, 'Algebra intermedia', 'Alguien que tenga un sitio para entender desviacion estandar', '27-10-2015 12:49', '0000-00-00 00:00:00', '2015-10-27 12:49:34'),
(18, 2, 'Algebra basica', 'Ya me canse no mames no mames no mames', '27-10-2015 15:01', '2015-10-29 14:57:32', '2015-10-27 15:01:09'),
(25, 2, 'Algebra basica', 'PINCHE ABAJA PUTA', '29-10-2015 14:24', '2015-10-29 14:56:32', '2015-10-29 14:24:07'),
(26, 2, 'Algebra basica', 'ESTA MUY TONTA ESTA ABEJA', '29-10-2015 14:25', '2015-10-29 14:56:24', '2015-10-29 14:25:10'),
(21, 2, 'Algebra basica', 'Pongamos un texto bonito :3', '28-10-2015 09:44', '2015-10-29 14:56:41', '2015-10-28 09:44:10'),
(22, 2, 'Algebra basica', 'se habra podido?', '28-10-2015 18:24', '2015-10-28 21:25:31', '2015-10-28 18:24:53'),
(27, 2, 'Algebra basica', 'Funcionara con algebra basica?', '29-10-2015 14:43', '0000-00-00 00:00:00', '2015-10-29 14:43:31'),
(28, 2, 'Algebra intermedia', 'asa', '29-10-2015 14:59', '0000-00-00 00:00:00', '2015-10-29 14:59:55'),
(29, 2, 'Algebra intermedia', 'asasas', '29-10-2015 15:00', '0000-00-00 00:00:00', '2015-10-29 15:00:00'),
(30, 2, 'Algebra intermedia', 'qwqwqwqw', '29-10-2015 15:00', '0000-00-00 00:00:00', '2015-10-29 15:00:05'),
(31, 2, 'Algebra intermedia', 'qwqwqwqwqw', '29-10-2015 15:00', '0000-00-00 00:00:00', '2015-10-29 15:00:11'),
(32, 2, 'Estadistica', 'ffgfgfg', '29-10-2015 15:00', '0000-00-00 00:00:00', '2015-10-29 15:00:19'),
(33, 2, 'Algebra intermedia', 'qwqwqq', '29-10-2015 15:00', '0000-00-00 00:00:00', '2015-10-29 15:00:39'),
(34, 2, 'Algebra intermedia', 'cvcvcvc', '29-10-2015 15:00', '0000-00-00 00:00:00', '2015-10-29 15:00:44'),
(35, 2, 'Algebra intermedia', 'fgfgfgfgfg', '29-10-2015 15:00', '0000-00-00 00:00:00', '2015-10-29 15:00:51'),
(36, 2, 'Trigonometria', 'asas', '29-10-2015 15:59', '0000-00-00 00:00:00', '2015-10-29 15:59:59'),
(37, 2, 'Calculo diferencial', 'diferencial', '29-10-2015 18:08', '0000-00-00 00:00:00', '2015-10-29 18:08:06'),
(38, 2, 'Algebra intermedia', 'almuerzo', '29-10-2015 18:20', '0000-00-00 00:00:00', '2015-10-29 18:20:58'),
(39, 2, 'Calculo integral', 'asasa', '29-10-2015 18:21', '0000-00-00 00:00:00', '2015-10-29 18:21:05'),
(40, 2, 'Calculo integral', 'Ahora si porfavor recomiendenme un contenido de calculo porfavor', '29-10-2015 21:44', '0000-00-00 00:00:00', '2015-10-29 21:44:12'),
(41, 2, 'Algebra basica', 'a', '29-10-2015 21:45', '0000-00-00 00:00:00', '2015-10-29 21:45:32'),
(42, 2, 'Algebra basica', 'Otra mas?', '29-10-2015 21:47', '0000-00-00 00:00:00', '2015-10-29 21:47:53'),
(43, 2, 'Calculo avanzado', 'asasas', '07-11-2015 00:07', '0000-00-00 00:00:00', '2015-11-07 00:07:52'),
(44, 2, 'Calculo avanzado', 'assas', '08-11-2015 18:11', '0000-00-00 00:00:00', '2015-11-08 18:11:48'),
(45, 2, 'Algebra basica', 'Hola', '08-11-2015 20:01', '0000-00-00 00:00:00', '2015-11-08 20:01:09'),
(46, 2, 'Algebra intermedia', 'asas', '08-11-2015 20:01', '0000-00-00 00:00:00', '2015-11-08 20:01:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reportes_comentarios`
--

CREATE TABLE IF NOT EXISTS `reportes_comentarios` (
  `id_reportcomentarios` int(11) NOT NULL,
  `id_comentario` int(11) NOT NULL,
  `materia` varchar(30) NOT NULL,
  `type_report` varchar(50) NOT NULL,
  `estado` varchar(10) DEFAULT NULL,
  `usuario_qrporta` int(11) NOT NULL,
  `fecha_reportecomentario` varchar(25) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `reportes_comentarios`
--

INSERT INTO `reportes_comentarios` (`id_reportcomentarios`, `id_comentario`, `materia`, `type_report`, `estado`, `usuario_qrporta`, `fecha_reportecomentario`) VALUES
(15, 9, 'Trigonometria', 'option1', 'Ver', 2, '12-10-2015 19:14'),
(16, 8, 'Algebra intermedia', 'option1', 'Ver', 2, '12-10-2015 19:15'),
(17, 12, 'Algebra intermedia', 'option1', 'Ver', 2, '12-10-2015 20:33'),
(18, 13, 'Algebra intermedia', 'option1', 'Ver', 2, '12-10-2015 20:34'),
(19, 14, 'Trigonometria', 'option1', 'Ver', 2, '12-10-2015 20:34'),
(20, 15, 'Geometria analitica', 'option1', 'Ver', 2, '12-10-2015 22:43'),
(21, 22, 'Algebra intermedia', 'option1', 'Ver', 2, '29-11-2015 14:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reportes_fichas`
--

CREATE TABLE IF NOT EXISTS `reportes_fichas` (
  `id_reportficha` int(11) NOT NULL,
  `id_ficha` int(11) NOT NULL,
  `materia` varchar(30) NOT NULL,
  `type_report` varchar(50) NOT NULL,
  `estado` varchar(10) DEFAULT NULL,
  `usuario_qrporta` int(11) NOT NULL,
  `fecha_reporteficha` varchar(25) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `reportes_fichas`
--

INSERT INTO `reportes_fichas` (`id_reportficha`, `id_ficha`, `materia`, `type_report`, `estado`, `usuario_qrporta`, `fecha_reporteficha`) VALUES
(1, 5, 'Trigonometria', 'spam', 'Ver', 2, '28-09-2015 21:52'),
(2, 7, 'Trigonometria', 'lenguaje', 'Ver', 2, '30-09-2015 10:13'),
(3, 23, 'Algebra intermedia', 'spam', 'Ver', 2, '01-10-2015 20:36'),
(4, 29, 'Algebra basica', 'lenguaje', 'Ver', 2, '02-10-2015 00:47'),
(5, 30, 'Gemetria analitica', 'spam', 'Ver', 2, '02-10-2015 13:33'),
(6, 32, 'Calculo diferencial', 'spam', 'Ver', 2, '03-10-2015 12:25'),
(7, 33, 'Calculo integral', 'lenguaje', 'Ver', 2, '03-10-2015 16:23'),
(8, 35, 'Estadistica', 'spam', 'Ver', 2, '04-10-2015 14:33'),
(9, 22, 'Trigonometria', 'spam', 'Ver', 2, '12-10-2015 17:03'),
(10, 45, 'Trigonometria', 'spam', 'Ver', 2, '12-10-2015 18:55'),
(11, 45, 'Algebra intermedia', 'spam', 'Ver', 2, '12-10-2015 18:59'),
(12, 50, 'Trigonometria', 'lenguaje', 'Ver', 2, '12-10-2015 18:59'),
(13, 53, 'Algebra intermedia', 'spam', 'Ver', 2, '12-10-2015 20:36'),
(14, 54, 'Trigonometria', 'spam', 'Ver', 2, '12-10-2015 20:36'),
(15, 59, 'Geometria analitica', 'lenguaje', 'Ver', 2, '12-10-2015 23:02'),
(16, 18, 'Calculo integral', 'spam', 'Ver', 2, '16-02-2016 13:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `retos_pack`
--

CREATE TABLE IF NOT EXISTS `retos_pack` (
  `id_retos` int(11) NOT NULL,
  `pregunta` varchar(200) NOT NULL,
  `respuesta` varchar(25) NOT NULL,
  `placeholder` varchar(100) NOT NULL,
  `mens_salida` varchar(100) NOT NULL,
  `img` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `retos_pack`
--

INSERT INTO `retos_pack` (`id_retos`, `pregunta`, `respuesta`, `placeholder`, `mens_salida`, `img`) VALUES
(1, 'que dia es hoy', 'hoy es jueves', '-------', 'a5', '691'),
(2, 'primera pregunta ', 'segunda respuesta', 'a', '3', '631'),
(3, 'Â¿Cuanto es 2+2?', '4', 'Escribe solo numeros enteros', 'Si, esa es la respuesta :D', '1722'),
(4, 'Hola amiguines', 'que pex entonces', 'enserio men ? ', 'oh no', '358'),
(5, 'asas', 'segunda respuesta', 's', 's', '1953'),
(6, 'asas', 'segunda respuesta', 's', 's', '268'),
(7, 'a', 'a', 'a', 'a', '1256');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tema_unidad_materias`
--

CREATE TABLE IF NOT EXISTS `tema_unidad_materias` (
  `id_temalg` int(11) NOT NULL,
  `id_unidades` int(11) NOT NULL,
  `tema` varchar(120) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=729 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tema_unidad_materias`
--

INSERT INTO `tema_unidad_materias` (`id_temalg`, `id_unidades`, `tema`) VALUES
(1, 19, 'Regla de correspondencia, dominio y rango'),
(2, 19, 'Operaciones básicas de funciones suma, resta, multiplicación y división'),
(3, 19, 'Combinación de funciones'),
(4, 19, 'Funciones inversas'),
(5, 19, 'Función lineal(Grafica, desplazamientos, reflexiones, expansiones y contracciones)'),
(6, 19, 'Función cuadrática(Grafica, desplazamientos, reflexiones, expansiones y contracciones)'),
(7, 19, 'Función cubica (Grafica, desplazamientos, reflexiones, expansiones y contracciones)'),
(8, 19, 'Temas y ejercicios en general '),
(9, 20, 'Partes de una función polinomial'),
(10, 20, 'División de polinomios'),
(11, 20, 'Teorema del residuo'),
(12, 20, 'Raíces o ceros por factorización'),
(13, 20, 'Raíces racionales'),
(14, 20, 'Método de bisección'),
(15, 20, 'Ejemplos de graficación de funciones polinomiales'),
(16, 20, 'Temas y ejercicios en general'),
(17, 21, 'Definición y propiedades de las funciones racionales'),
(18, 21, 'Como graficar una función racional Varios ejemplos'),
(19, 21, 'Tipos de asintotas'),
(20, 21, 'Descomposición de fracciones parciales'),
(21, 21, 'Temas y ejercicios en general'),
(22, 22, 'Funciones exponenciales,  gráficas y propiedades'),
(23, 22, 'Función exponencial de base e'),
(24, 22, 'Propiedades de los logaritmos y cambio de base'),
(25, 22, 'Cambio de base'),
(26, 22, 'Funciones logarítmicas, gráficas y propiedades'),
(27, 22, 'Logaritmo natural'),
(28, 22, 'Ecuaciones exponenciales y logarítmicas'),
(29, 22, 'Temas y ejercicios en general'),
(30, 23, 'Sistemas 2x2 reducción'),
(31, 23, 'Sistemas 2x2 comparación'),
(32, 23, 'Sistemas 2x2 suma y resta'),
(33, 23, 'Sistemas 2x2 fracciones'),
(34, 23, 'Sistemas 3x3 con números enteros'),
(35, 23, 'Sistemas 3x3 con números fraccionarios'),
(36, 23, 'Método de determinantes'),
(37, 23, 'Sistemas 2x2 de segundo grado'),
(38, 23, 'Sistemas de ecuaciones de más de segundo grado'),
(39, 23, 'Eliminación Gauss-Jordán'),
(40, 23, 'Sistemas de desigualdades'),
(41, 23, 'Programación lineal'),
(42, 23, 'Temas y ejercicios en general'),
(43, 24, 'Matrices, concepto y propiedades'),
(44, 24, 'Suma y resta de matrices'),
(45, 24, 'Multiplicación de una matriz por un numero escalar'),
(46, 24, 'Multiplicación de matrices y propiedades'),
(47, 24, 'Matriz identidad'),
(48, 24, 'Inversa de una matriz cuadrada'),
(49, 24, 'Ecuaciones matriciales'),
(50, 24, 'Temas y ejercicios en general'),
(51, 25, 'Sucesiones'),
(52, 25, 'Series y notación sumatoria'),
(53, 25, 'Progresiones aritméticas'),
(54, 25, 'Progresiones geométricas'),
(55, 25, 'Inducción matemática'),
(56, 25, 'Permutación y factorial'),
(57, 25, 'Coordinaciones'),
(58, 25, 'Combinaciones'),
(59, 25, 'Triangulo de pascal y binomio de newton'),
(60, 25, 'Temas y ejercicios en general'),
(61, 27, 'Grados, radianes y arcos'),
(62, 27, 'Triángulos semejantes(teorema de Euclides)'),
(63, 27, 'Ángulos complementarios, adyacentes y colaterales'),
(64, 27, 'Razones trigonométricas y soluciones del triángulo rectángulo'),
(65, 27, 'Temas y ejercicios en general'),
(66, 28, 'Que son el dominio de ángulos y de radianes'),
(67, 28, 'Funciones trigonométrica en el círculo'),
(68, 28, 'Funciones trigonométrica en cuadrantes'),
(69, 28, 'Temas en general '),
(70, 29, 'Grafica de la función seno y coseno'),
(71, 29, 'Grafica de la función tangente y cotangente'),
(72, 29, 'Grafica de la función csc y sec'),
(73, 29, 'Graficas de formas combinadas, introducción a las series de Fourier'),
(74, 29, 'Temas y ejercicios en general'),
(75, 30, 'Identidades reciprocas, del cociente y negativo'),
(76, 30, 'Identidades pitagóricas'),
(77, 30, 'Identidades suma y resta de ángulos'),
(78, 30, 'Identidades de ángulos complementarios y suplementarios'),
(79, 30, 'Identidades del ángulo doble y del semiangulo'),
(80, 30, 'Identidades de producto-suma y de suma-producto'),
(81, 30, 'Varios ejercicios de identidades'),
(82, 30, 'Temas y ejercicios en general'),
(83, 31, 'Funciones inversa seno y coseno(propiedades y graficas)'),
(84, 31, 'Funciones inversa tangente y cotangente(propiedades y graficas)'),
(85, 31, 'Funciones inversa sec y csc (propiedades y graficas)'),
(86, 31, 'Temas y ejercicios en general'),
(87, 32, 'Métodos y ejercicios resueltos'),
(88, 32, 'Solución de desigualdades trigonométricas'),
(89, 32, 'Temas y ejercicios en general'),
(90, 33, 'Ley de los senos y tipos de casos'),
(91, 33, 'Ley de los cosenos y tipos de casos'),
(92, 33, 'Vectores geométricos'),
(93, 33, 'Vectores algebraicos'),
(94, 33, 'Temas en general'),
(95, 34, 'Sistemas de coordenadas polares y cambios de sistemas'),
(96, 34, 'Números complejos en forma rectangular y polar'),
(97, 34, 'Teorema de Moivre y teorema de la raíz enésima '),
(98, 36, 'Pendiente de la recta'),
(99, 36, 'Ecuacion punto pendiente'),
(100, 36, 'Ecuacion de la recta conociendo 2 puntos de ella'),
(101, 36, 'Forma general de la ecuación de la recta'),
(102, 36, 'Forma normal de la ecuación de la recta'),
(103, 36, 'Ecuacion paramétrica de la recta'),
(104, 37, 'Distancia entre 2 puntos'),
(105, 37, 'Distancia de un punto a una recta'),
(106, 37, 'Distancia entre 2 rectas paralelas'),
(107, 37, 'Punto medio de un segmento'),
(108, 37, 'Razón de segmentos'),
(109, 37, 'Intersección de rectas '),
(110, 37, 'Angulo entre 2 rectas'),
(111, 37, 'Paralelismo y perpendicularidad'),
(112, 37, 'Temas y ejercicios en general'),
(113, 38, 'Varios ejercicios sobre lugares geométricos'),
(114, 39, 'Ortocentro'),
(115, 39, 'Medianas y baricentros'),
(116, 39, 'Mediatriz y circuncentro'),
(117, 39, 'Bisectriz e Incentro'),
(118, 39, 'Recta de Euler'),
(119, 39, 'Varios ejercicios sobre lugares geométricos para el triángulo'),
(120, 39, 'Temas y ejercicios en general del triángulo'),
(121, 40, 'Circulo con centro en el origen'),
(122, 40, 'Forma estándar o canonica del circulo'),
(123, 40, 'Forma general de la ecuación del circulo'),
(124, 40, 'Desigualdades y círculos'),
(125, 40, 'Ecuaciones paramétricas en el círculo'),
(126, 40, 'Intersecciones en el círculo'),
(127, 40, 'Temas y ejercicios en general del circulo '),
(128, 41, 'Elementos de la parábola'),
(129, 41, 'Parabolas horizontales'),
(130, 41, 'Parabolas verticales'),
(131, 41, 'Ecuacion general de la parábola'),
(132, 41, 'Ecuacion estándar o canónica'),
(133, 41, 'Ejercicios - Graficar la parábola dados ciertos datos'),
(134, 41, 'Ejercicios - Encontrar ecuación de la parábola'),
(135, 41, 'Ejercicios - Calculo de elementos en la parábola'),
(136, 41, 'Desigualdades y la parábola'),
(137, 41, 'Ecuaciones paramétricas de la parábola'),
(138, 41, 'Intersecciones en la parábola'),
(139, 41, 'Temas y ejercicios en general de la parábola'),
(140, 42, 'Elementos de la elipse'),
(141, 42, 'Elipse horizontal'),
(142, 42, 'Elipse vertical'),
(143, 42, 'La excentricidad de la elipse'),
(144, 42, 'Forma general de la ecuación de la elipse'),
(145, 42, 'Forma simétrica de la ecuación de la elipse'),
(146, 42, 'Desigualdades y la elipse'),
(147, 42, 'Ecuaciones paramétricas de la elipse'),
(148, 42, 'Interseccion en la elipse'),
(149, 42, 'Temas y ejercicios en general de la elipse'),
(150, 43, 'Elementos de la hipérbola'),
(151, 43, 'Hiperbola horizontal'),
(152, 43, 'Hiperbola vertical'),
(153, 43, 'Ecuacion general de la hipérbola'),
(154, 43, 'Forma simétrica de la ecuación de la hipérbola'),
(155, 43, 'Ejercicios sobre asíntotas de la hipérbola'),
(156, 43, 'La excentricidad de la hipérbola'),
(157, 43, 'Desigualdades y la hipérbola'),
(158, 43, 'Ecuaciones paramétricas en la hipérbola'),
(159, 43, 'Temas y ejercicios en general de la hipérbola'),
(160, 44, 'Intoduccion y graficas de las ecuaciones polares'),
(161, 44, 'Ecuaciones polares, su equivalencia a coordenas cartesianas'),
(162, 44, 'Rectas en ecuaciones polares'),
(163, 44, 'Circulos en ecuaciones polares'),
(164, 44, 'Parabolas en ecuaciones polares'),
(165, 44, 'Elipses en ecuaciones polares'),
(166, 44, 'Hiperbolas en ecuaciones polares'),
(167, 44, 'Lamniscatas'),
(168, 44, 'Simetria en coordenas polares'),
(169, 44, 'Caracoles'),
(170, 44, 'Rosas'),
(171, 44, 'Espirales'),
(172, 44, 'Concoides de Nicómedes'),
(173, 44, 'Rotacion de curvas en coordenas polares'),
(174, 44, 'Lugares geométricos en coordenadas polares'),
(175, 44, 'Temas y ejercicios en general de ecuaciones polares'),
(176, 46, 'Que es la estadística'),
(177, 46, 'Muestra y población'),
(178, 46, 'Tipos de variables y datos'),
(179, 46, 'Nivel de medición ordinal, nominal, de intervalo y de razón'),
(180, 46, 'Pensamiento crítico, como analizar que una muestra está mal o con datos engañoso'),
(181, 46, 'Estudios transversales, estudios retrospectivos y estudios prospectivos'),
(182, 46, 'Tema en general de la unidad'),
(183, 47, 'Distribucion de frecuencias simples'),
(184, 47, 'Distribucion de frecuencias relativas y acumuladas'),
(185, 47, 'Distribucion de frecuencias porcentuales'),
(186, 47, 'Histogramas'),
(187, 47, 'Ojivas, menos que y más que'),
(188, 47, 'Graficas de puntos'),
(189, 47, 'Graficas de pareto'),
(190, 47, 'Grafica de tallo y hoja'),
(191, 47, 'Poligono de frecuencias'),
(192, 47, 'Tabulaciones cruzadas'),
(193, 47, 'Pensamiento crítico para juzgar una gráfica'),
(194, 47, 'Creacion de graficas propias'),
(195, 47, 'Temas en general de la unidad'),
(196, 48, 'Media simple(aritmética)'),
(197, 48, 'Media recortada'),
(198, 48, 'Media armónica'),
(199, 48, 'Media geométrica'),
(200, 48, 'Media ponderada'),
(201, 48, 'Media de distribución de frecuencias'),
(202, 48, 'Mediana y posición de la mediana'),
(203, 48, 'Mediana de una distribución de frecuencias'),
(204, 48, 'Temas en general de la unidad'),
(205, 49, 'Rango de un conjunto de datos'),
(206, 49, 'Desviacion estándar de una muestra'),
(207, 49, 'Desviacion estándar de una población'),
(208, 49, 'Varianza de una muestra y una población'),
(209, 49, 'Regla práctica del intervalo'),
(210, 49, 'Regla empírica para datos con distribución normal'),
(211, 49, 'Teorema de Chebyshev'),
(212, 49, 'Desviacion media absoluta'),
(213, 49, 'Coeficiente de variación'),
(214, 49, 'Temas en general de la unidad'),
(215, 50, 'Puntuaciones Z, valores frecuentes y no frecuentes'),
(216, 50, 'Cuartiles y percentiles'),
(217, 50, 'Graficas de cuadro'),
(218, 50, 'Valores extremos'),
(219, 50, 'Temas en general de la unidad'),
(220, 51, 'Diagramas de árbol'),
(221, 51, 'Coordinaciones'),
(222, 51, 'Permutaciones simples y factoriales'),
(223, 51, 'Permutaciones circulares'),
(224, 51, 'Coombinaciones'),
(225, 51, 'Varios ejercicios de probabilidad y conteo'),
(226, 51, 'Temas en general de la unidad'),
(227, 52, 'Eventos y espacio muestral'),
(228, 52, 'Conjuntos, unión, intersección, diferencia y complemento'),
(229, 52, 'Probabilidad teórica'),
(230, 52, 'Probabilidad y ley de los grandes números'),
(231, 52, 'Probabilidad no A, eventos complementarios'),
(232, 52, 'Probabilidad A o B, regla de la suma'),
(233, 52, 'Eventos mutuamente excluyentes, sucesos disjuntos'),
(234, 52, 'Probabilidad A y B, eventos independientes y regla de la suma'),
(235, 52, 'Probabilidad A dado B, eventos dependientes, relación probabilidad A y B y RM'),
(236, 52, 'Teorema de Bayes'),
(237, 52, 'Temas en general de la unidad'),
(238, 53, 'Variable aleatoria y concepto de función de probabilidad'),
(239, 53, 'Distribución de una variable aleatoria discreta'),
(240, 53, 'Distribución acumulada'),
(241, 53, 'Esperanza o media de una variable aleatoria discreta'),
(242, 53, 'Concepto de distribución de probabilidad binomial'),
(243, 53, 'Media de la distribución de probabilidad binomial'),
(244, 53, 'Desviación y varianza de la distribución de probabilidad binomial'),
(245, 53, 'Distribución de poisson y aplicaciones'),
(246, 53, 'Distribución de probabilidad hipergeometrica'),
(247, 53, 'Temas en general de la unidad'),
(248, 54, 'Distribución uniforme de probabilidad'),
(249, 54, 'Concepto de distribución de probabilidades normales'),
(250, 54, 'La distribución normal estándar y sus aplicaciones'),
(251, 54, 'Aproximación a la binomial'),
(252, 54, 'Distribución exponencial de probabilidad'),
(253, 54, 'Factor de corrección por continuidad'),
(254, 54, 'Temas en general de la unidad'),
(255, 55, 'Consejos a la hora de preparar una muestra'),
(256, 55, 'Muestreo aleatorio simple'),
(257, 55, 'Muestreo aleatorio sistemático'),
(258, 55, 'Muestreo aleatorio estatificado'),
(259, 55, 'Muestreo aleatorio por racimos o conglomerados'),
(260, 55, 'Muestreo de etapas múltiples'),
(261, 55, 'Temas en general de la unidad'),
(262, 56, 'Distribución muestral de proporciones'),
(263, 56, 'Distribución muestral de medias y teorema LC'),
(264, 56, 'Distribución de frecuencias muestrales'),
(265, 56, 'Distribución de diferencias y sumas'),
(266, 56, 'Temas en general de la unidad'),
(267, 57, 'Que es la estimación de parámetros'),
(268, 57, 'Estimados sesgados, insesgados y eficientes y puntuales'),
(269, 57, 'Estimador puntual en la proporción poblacional'),
(270, 57, 'Intervalo de confianza y niveles de confianza'),
(271, 57, 'Intervalo de confianza unilateral en la estimación de la proporción'),
(272, 57, 'Valores críticos en la estimación de la proporción'),
(273, 57, 'Margen de error en la estimación de la proporción'),
(274, 57, 'Determinación del tamaño muestral en la estimación de la proporción'),
(275, 57, 'Pruebas de hipótesis para la estimación de la proporción de una población'),
(276, 57, 'Estadístico de prueba para la proporción'),
(277, 57, 'Temas en general de la unidad'),
(278, 58, 'Intervalo de confianza para la media mu'),
(279, 58, 'Intervalo de confianza con factor de corrección para población finita'),
(280, 58, 'Error máximo de estimación para la media mu'),
(281, 58, 'Tamaño de la muestra para estimación mu'),
(282, 58, 'Tamaño de la muestra con factor de corrección para población finita'),
(283, 58, 'Prueba de hipótesis de media mu con sigma conocida'),
(284, 58, 'Estadístico de prueba para la media'),
(285, 58, 'Temas en general de la unidad'),
(286, 59, 'Distribución de t student'),
(287, 59, 'Grados de confianza'),
(288, 59, 'Margen de error para estimar la media mu con sigma desconocida'),
(289, 59, 'Prueba de hipótesis media mu con sigma desconocida'),
(290, 59, 'Estadístico de prueba'),
(291, 59, 'Temas en general de la unidad'),
(292, 60, 'Distribución chi cuadradada(uso y propiedad)'),
(293, 60, 'Estimadores de la varianza poblacional'),
(294, 60, 'Determinación del tamaño de la muestra para estimar la varianza poblacional'),
(295, 60, 'Prueba de hipótesis respecto a la varianza poblacional'),
(296, 60, 'Estadístico de prueba'),
(297, 60, 'Calculo con valores críticos'),
(298, 60, 'Temas en general de la unidad'),
(299, 62, 'Noción de límites'),
(300, 62, 'Regla de la constante, suma, resta y multiplicación'),
(301, 62, 'Limites de funciones racionales'),
(302, 62, 'Limites que incluyen radicales'),
(303, 62, 'Limites unilaterales'),
(304, 62, 'Limites bilaterales'),
(305, 62, 'Limites cuando la variable tiende a infinito'),
(306, 62, 'Final de una función'),
(307, 62, 'Limites de funciones definidas por partes'),
(308, 62, 'Limites definición Épsilon-Delta'),
(309, 62, 'Limites de funciones trigonométricas'),
(310, 62, 'Limites de funciones trigonométricas inversas'),
(311, 62, 'Limites de funciones logarítmicas y exponenciales'),
(312, 62, 'Continuidad'),
(313, 62, 'Continuidad de funciones trigonométricas'),
(314, 62, 'Teorema del valor intermedio'),
(315, 62, 'Temas y ejercicios en general de la unidad'),
(316, 63, 'El problema de las rectas tangentes'),
(317, 63, 'Método de los 4 pasos'),
(318, 63, 'Demostración de las reglas básicas de derivación algebraica'),
(319, 63, 'Regla de la cadena'),
(320, 63, 'Derivadas sucesivas de una función'),
(321, 63, 'Temas y ejercicios en general de la unidad'),
(322, 65, 'Demostración de las derivadas de funciones trigonométricas directas'),
(323, 65, 'Aplicaciones de las derivadas de funciones trigonométricas directas'),
(324, 65, 'Varios ejercicios'),
(325, 66, 'Demostración de las derivadas de funciones trigonométricas inversas'),
(326, 66, 'Aplicaciones de las derivadas de funciones trigonométricas inversas'),
(327, 66, 'Varios ejercicios'),
(328, 67, 'Demostración de las derivadas de funciones exponenciales'),
(329, 67, 'Demostración de las derivadas de funciones logarítmicas'),
(330, 67, 'Aplicaciones de las derivadas de funciones exponenciales y logarítmicas'),
(331, 67, 'Varios ejercicios'),
(332, 68, 'Razones de cambio'),
(333, 68, 'Razones relacionadas'),
(334, 68, 'Varios ejercicios'),
(335, 70, 'Aproximacion local'),
(336, 70, 'Incremetos, decrementos y concavidad'),
(337, 70, 'Puntos de inflexión'),
(338, 70, 'Maximos y mínimos relativos'),
(339, 70, 'Multiplicidad'),
(340, 70, 'Maximos y mínimos absolutos'),
(341, 70, 'Teorema del Rolle'),
(342, 70, 'Teorema del valor medio'),
(343, 70, 'Teorema del valor medio de Cauchy'),
(344, 70, 'Teorema de la diferencia constante'),
(345, 70, 'Temas y ejercicios en general de la unidad'),
(346, 73, 'Que es la integración'),
(347, 73, 'Reglas básicas de integración de funciones algebraicas'),
(348, 73, 'Integración de funciones compuestas'),
(349, 73, 'Constante de integración'),
(350, 73, 'Temas en general de la unidad'),
(351, 82, 'Sumas de Riemann y el cálculo del área mediante sumas'),
(352, 82, 'Ejercicios y propiedades de las integrales definidas'),
(353, 82, 'Ejercicios de Áreas mediante integración definida'),
(354, 82, 'Ejercicios de integrales con funciones como límites de integración'),
(355, 82, 'Ejercicios y propiedades de las integrales impropias'),
(356, 82, 'Discontinuidades e integrabilidad'),
(357, 82, 'Funciones logarítmicas definidas por integrales'),
(358, 82, 'Función error'),
(359, 82, 'Funciones seno y coseno de Fresnel'),
(360, 82, 'Funciones elípticas'),
(361, 82, 'Teorema del valor medio para integrales'),
(362, 82, 'Métodos Numéricos Regla de Simpson'),
(363, 82, 'Temas y ejercicios en general de la unidad'),
(364, 83, 'Volúmenes por rebanadas'),
(365, 83, 'Volúmenes por discos'),
(366, 83, 'Método de las arandelas'),
(367, 83, 'Método de cascarones cilíndricos'),
(368, 83, 'Temas y ejercicios en general de la unidad'),
(369, 84, 'Definición de pi por medio de integrales'),
(370, 84, 'Longitud de curvas'),
(371, 84, 'Calculo del área en coordenadas polares'),
(372, 84, 'Área de una superficie de revolución'),
(373, 84, 'Funciones hiperbólicas y calculo integral'),
(374, 84, 'Temas y ejercicios en general de la unidad'),
(375, 89, 'Algebra y propiedades de las funciones de 2 o mas variables'),
(376, 89, 'Graficas de funciones de 2 variables'),
(377, 89, 'Superficies de nivel'),
(378, 89, 'Temas en general de la unidad'),
(379, 90, 'Limites a lo largo de curvas'),
(380, 90, 'Discos abiertos y cerrados, bola abierta y cerrada, puntos y fronteras'),
(381, 90, 'Evaluacion de limites de funciones de 2 variables'),
(382, 90, 'Evaluacion de limites de funciones de 3 variables'),
(383, 90, 'Continuidad de funciones de 2 variables'),
(384, 90, 'Continuidad de funciones de 3 variables'),
(385, 90, 'Temas en general de la unidad'),
(386, 91, 'Definicion y propiedades de las integrales parciales'),
(387, 91, 'Evaluacion de derivadas parciales con 2 variables'),
(388, 91, 'Evaluacion de derivadas parciales con mas de 2 variables'),
(389, 91, 'Derivadas parciales de orden superior'),
(390, 91, 'Derivadas parciales implicitas'),
(391, 91, 'Derivadas parciales de funciones vectoriales'),
(392, 91, 'Derivavilidad en derivadas parciales'),
(393, 91, 'Diferenciales en derivadas parciales'),
(394, 91, 'Ragla de la cadena en derivadas parciales'),
(395, 91, 'Aproximaciones lineales locales en derivadas parciales'),
(396, 91, 'Razones relacionadas en derivadas parciales'),
(397, 91, 'Ecuaciones de onda con derivadas parciales'),
(398, 91, 'Temas en general de la unidad'),
(399, 92, 'Derivadas direccionales y pendiente de la superficie'),
(400, 92, 'El gradiente, propiedades y aplicaciones'),
(401, 92, 'Introduccion a los planos tangentes a superficies'),
(402, 92, 'Planos tangentes y diferenciales totales'),
(403, 92, 'Planos tangentes a superficies de nivel'),
(404, 92, 'Tengentes e intersecciones de superficies'),
(405, 92, 'Temas en general de la uniad'),
(406, 93, 'Conjuntos acotados y no acotados'),
(407, 93, 'Puntos criticos y puntos silla'),
(408, 93, 'Criterio de las segundas derivadas parciales'),
(409, 93, 'Maximos y minimos absolutos de funciones multidependientes'),
(410, 93, 'Maximos y minimos relativos de funciones multidependientes'),
(411, 93, 'Matriz y determinante hessiana'),
(412, 93, 'Problemas de optimizacion de funciones multidependientes'),
(413, 93, 'Temas en general de la unidad'),
(414, 94, 'Maximos y minimos absolutos restringidos'),
(415, 94, 'Maximos y minimos relativos restringidos'),
(416, 94, 'Definicion y propiedades del multiplicador de lagrange'),
(417, 94, 'Problemas de optimizacion restringida y uso de los multiplicadores de lagrange'),
(418, 94, 'Temas en general de la unidad'),
(419, 95, 'Origen y definicion de las integrales dobles, el problema del volumen bajo la superficie'),
(420, 95, 'Evaluacion de integrales parciales'),
(421, 95, 'Evaluacion dde integrales dobles y calculo del area bajo la superficie'),
(422, 95, 'Evaluacion de integrales dobles con limites de integracion no constantes'),
(423, 95, 'Calculo del volumen bajo la superficie con regiones no rectangulares'),
(424, 95, 'Inversion del orden de integracion'),
(425, 95, 'Calculo de areas de integracion'),
(426, 95, 'Temas en general de la unidad'),
(427, 96, 'Region polar simple y rectangulo polar'),
(428, 96, 'Sumas de Riemann polares'),
(429, 96, 'Integrales dobles en coordenadas polares, evaluacion y calculo del area bajo la superficie'),
(430, 96, 'Calculo del area utilizando coordenas polares'),
(431, 96, 'Conversion de integrales dobles de coordenas rectangulares a coordenas polares'),
(432, 96, 'Temas en general de la unidad'),
(433, 97, 'Definicion, propiedades y generacion de superficies parametricas'),
(434, 97, 'Funciones vectoriales de 2 variables y superficies parametricas'),
(435, 97, 'Planos tangentes a superficies parametricas'),
(436, 97, 'Areas de superficies parametricas'),
(437, 97, 'Temas en general de la unidad'),
(438, 98, 'Definicion y propiedades de las integrales triples'),
(439, 98, 'Evaluacion de integrales triples sobre cajas rectangulares'),
(440, 98, 'Evaluacion de integrales triples sobre regiones generales'),
(441, 98, 'Aplicaciones de las integrales triples a los centros de gravedad'),
(442, 98, 'Temas en general de la unidad'),
(443, 99, 'Integrales triples en coordenas cilindricas'),
(444, 99, 'Conversion de integrales triples en coordenas rectangulares a coordenas cilindricas'),
(445, 99, 'Integrales triples en coordenas esfericas'),
(446, 99, 'Conversion de integrales triples de coordenas rectangulares a coordenas esfericas'),
(447, 99, 'Temas en general de la unidad'),
(448, 100, 'Jacobiano en integrales'),
(449, 100, 'Transformaciones del plano'),
(450, 100, 'Cambio de variables en integrales dobles'),
(451, 100, 'Cambio de variables en integrales triples'),
(452, 100, 'Temas en general de la unidad'),
(453, 102, 'Definicion, propiedades y graficación de funciones vectoriales'),
(454, 102, 'Limites de funciones vectoriales'),
(455, 102, 'Continuidad de funciones vectoriales'),
(456, 102, 'Derivadas de funciones vectoriales, definicion y significado geométrico'),
(457, 102, 'Funciones vectoriales de 2 variables'),
(458, 102, 'Derivadas parciales de funciones vectoriales'),
(459, 102, 'Diferenciales de funciones vectoriales'),
(460, 102, 'Temas en general de la unidad'),
(461, 104, 'Vectores tangente'),
(462, 104, 'Vectores normales'),
(463, 104, 'Vectores binormales'),
(464, 104, 'Temas en general de la unidad'),
(465, 105, 'Definicion y propiedades y formulas de la curvatura'),
(466, 105, 'Aplicaciones al movimiento de la curvatura'),
(467, 105, 'Temas en general de la unidad'),
(468, 107, 'Definicion, propiedades y graficas de las campos vectoriales'),
(469, 107, 'Campos del inverso cuadrado'),
(470, 107, 'Campos conservativos y funciones de potencial'),
(471, 107, 'Campos gradiente'),
(472, 107, 'Temas en general de la unidad'),
(473, 108, 'El operador nabla en coordenadas cartesianas'),
(474, 108, 'El operador nabla en coordenadas cilindricas y esfericas'),
(475, 108, 'Temas en general de la unidad'),
(476, 109, 'Operador Lapciano'),
(477, 109, 'Ecuacion de laplace'),
(478, 109, 'Temas en general de la unida'),
(479, 110, 'Nocion del teorema de la divergencia'),
(480, 110, 'Difinicion, propiedades y demostracion del teorema de la divergencia'),
(481, 110, 'Uso y aplicaciones del teorema de la '),
(482, 110, 'Temas en general de la unidad'),
(483, 111, 'Definicion y propiedades del rotacional'),
(484, 111, 'Campos rotacional e irrotacionales'),
(485, 111, 'Uso y aplicaciones del rotacional'),
(486, 111, 'Temas en general de la unidad'),
(487, 112, 'Definicion y propiedades de las integrales de linea'),
(488, 112, 'Evaluacion de integrales de linea dependientes de la trayectoria'),
(489, 112, 'Evaluacion de integrales de linea independientes de la trayectoria'),
(490, 112, 'Integrales de linea y campos vectoriales conservativos'),
(491, 112, 'Integrales de linea a lo largo de curvas por partes'),
(492, 112, 'Fisica e integrales de linea'),
(493, 112, 'Temas en general de la unidad'),
(494, 113, 'Definicion, propiedades y demostracion del Teorema de Green'),
(495, 113, 'Teorema de green para regiones multiplemente conexas'),
(496, 113, 'Uso y aplicaciones del teorema de Green'),
(497, 113, 'Temas en general de la unidad'),
(498, 114, 'Definicion, propiedades y demostracion del teorema de Stokes'),
(499, 114, 'Uso y aplicaciones del teorema de Stokes'),
(500, 114, 'El rotacional y el teorema de Stokes'),
(501, 114, 'Relacion entre los teoremas de Green y Stokes'),
(502, 114, 'Temas en general de la unidad'),
(503, 115, 'Parametrizacion de superficies'),
(504, 115, 'Definicion y propiedades de las integrales de superficie'),
(505, 115, 'Evaluacion de integrales de superficie'),
(506, 115, 'Aplicaciones de flujo e integrales de flujo'),
(507, 115, 'Temas en general de la unidad'),
(508, 120, 'Definicion de una matriz'),
(509, 120, 'Matriz cuadradada'),
(510, 120, 'Matriz diagonal'),
(511, 120, 'Matriz escalar'),
(512, 120, 'identidad'),
(513, 120, 'Matriz triangular'),
(514, 120, 'Matriz indepotente'),
(515, 120, 'Matriz conmutable'),
(516, 120, 'Matriz nilpotente'),
(517, 120, 'Matriz involutiva'),
(518, 120, 'Rango y nulidad de una matriz'),
(519, 120, 'Temas en general de la unidad'),
(520, 121, 'Propiedades y evaluación de una matriz por un escalar'),
(521, 121, 'Propiedades y evaluación de la suma de matrices'),
(522, 121, 'Propiedades y evaluación de la multiplicación de matrices'),
(523, 121, 'Matrices particionadas'),
(524, 121, 'Potencias de matrices'),
(525, 121, 'Matrices y solución sistemas de ecuaciones lineales'),
(526, 121, 'Métodos iterativos para resolver matrices'),
(527, 121, 'Temas en general de la unidad'),
(528, 122, 'Evaluación y propiedades de una matriz inversa'),
(529, 122, 'Matrices elementales'),
(530, 122, 'El método de Gauss-Jordan para calcular la inversa'),
(531, 122, 'Solución de sistemas de ecuaciones en términos de la matriz inversa'),
(532, 122, 'Temas en general de la unidad'),
(533, 123, 'Matriz simétrica'),
(534, 123, 'Propiedades y evaluación de la transpuesta'),
(535, 123, 'Matriz adjunta'),
(536, 123, 'Temas en general de la unidad'),
(537, 124, 'Evaluación y propiedades de la factorización LU'),
(538, 124, 'Matriz de permutación'),
(539, 124, 'Evaluación y propiedades de la factorización PLU'),
(540, 124, 'Solución de sistemas de ecuaciones utilizando factorización de matrices'),
(541, 124, 'Temas en general de la unidad'),
(542, 125, 'Definición y propiedades de los determinantes'),
(543, 125, 'Evaluación básica de determinantes'),
(544, 125, 'Unicidad del determinante'),
(545, 125, 'Teorema de expansión de Laplace'),
(546, 125, 'Desarrollo por cofactores'),
(547, 125, 'Determinates de matrices elementales'),
(548, 125, 'Determinates de matrices triangulares'),
(549, 125, 'Determinates de matrices transpuestas'),
(550, 125, 'Mas sobre determinantes y matrices'),
(551, 125, 'Operaciones matriciales básicas y determinantes'),
(552, 125, 'La regla de Cramer'),
(553, 125, 'Metodo de condensación de Lewis-Carroll'),
(554, 125, 'Temas en general de la unidad'),
(555, 126, 'Producto cruz y determinantes'),
(556, 126, 'Area, volumen y determinantes'),
(557, 126, 'Ajustes de curvas y determinantes'),
(558, 126, 'Determinates en las telecomunicaciones'),
(559, 126, 'Temas en general de la unidad'),
(560, 127, 'Definición y propiedades del espacio vectorial'),
(561, 127, 'Definición y propiedades del espacio vectorial trivial'),
(562, 127, 'Definición y propiedades del subespacio'),
(563, 127, 'Definición y propiedades del subespacio trivial'),
(564, 127, 'Subespacio propio'),
(565, 127, 'Temas en general de la unidad'),
(566, 128, 'Definición, propiedades y evaluación de las combinaciones lineales'),
(567, 128, 'El conjunto generador'),
(568, 128, 'Temas en general de la unidad'),
(569, 130, 'Definición y propiedades de la base'),
(570, 130, 'Definición y propiedades de la dimensión'),
(571, 130, 'La base canónica'),
(572, 130, 'Cambios de base y matriz de transición'),
(573, 130, 'Temas en general de la unidad'),
(574, 131, 'Definición, propiedades y evaluación básica de transformaciones lineales'),
(575, 131, 'Transformación cero'),
(576, 131, 'Transformación identidad'),
(577, 131, 'Transformación de reflexión'),
(578, 131, 'Transformación de rotación'),
(579, 131, 'Transformación de proyección ortogonal'),
(580, 131, 'Operador de transposición'),
(581, 131, 'Ejemplos de transformaciones no lineales'),
(582, 131, 'Nulidad, rango y Kernel de una transformación lineal'),
(583, 131, 'Temas en general de la unidad'),
(584, 132, 'Matriz de transformación'),
(585, 132, 'Geometria de las transformaciones lineales, expansiones, comprensiones, reflexiones y cortes'),
(586, 132, 'Descomposición de una transposición lineal'),
(587, 132, 'Transformaciones lineales compuestas'),
(588, 132, 'Temas en general de la unidad'),
(589, 133, 'Definición, propiedades y evaluación de isometrías'),
(590, 133, 'Espacios vectoriales isomorfos'),
(591, 133, 'Temas en general de la unidad'),
(592, 135, 'Concepto, propiedades y evaluación básica de valores y vectores característicos'),
(593, 135, 'Espacio característico'),
(594, 135, 'Polinomio característico'),
(595, 135, 'Ecuación característica'),
(596, 135, 'Valores y vectores característicos de una matriz cuadradada'),
(597, 135, 'Valores y vectores característicos de una matriz triangular'),
(598, 135, 'Multiplicidad algebraica de un valor característico'),
(599, 135, 'Multiplicidad geométrica de un valor característico'),
(600, 135, 'Temas en general de la unidad'),
(601, 136, 'Matrices diagonizables'),
(602, 136, 'El teorema de la diagonalización'),
(603, 136, 'Matrices semejantes'),
(604, 136, 'Relación de equivalencia'),
(605, 137, 'El método de la potencia'),
(606, 137, 'Valor característico dominante'),
(607, 137, 'Método de potencia ajustado'),
(608, 137, 'Método de potencia inverso'),
(609, 137, 'Método de potencia inverso ajustado'),
(610, 137, 'Teorema de disco de Geshgorin'),
(611, 137, 'Teorema de Cayley-Hamilton'),
(612, 137, 'Temas en general de la unidad'),
(613, 138, 'Modelos de crecimiento poblacional, eigenvalores y matriz de leslie'),
(614, 138, 'Cadenas  de Markov, eigenvalores y matriz de transición de rango largo'),
(615, 138, 'El teorema de Perron-Frobenius'),
(616, 138, 'Relación de recurrencia lineal'),
(617, 138, 'Sistemas de ecuaciones diferenciales y eigenvalores'),
(618, 138, 'Sistemas dinámicos lineales discretos'),
(619, 138, 'Temas en general de la unidad'),
(620, 139, 'Conjuntos ortogonales'),
(621, 139, 'Base ortogonal'),
(622, 139, 'Conjuntos ortonormales'),
(623, 139, 'Base ortonormales'),
(624, 139, 'Complemento ortogonal'),
(625, 139, 'Subespacios fundamentales'),
(626, 139, 'Proyección ortogonal en Rn'),
(627, 139, 'Norma de un vector en Rn'),
(628, 139, 'Teorema de descomposición ortogonal'),
(629, 139, 'Teorema de aproximación de la norma'),
(630, 139, 'Proceso de ortogonalización de Gram-Smidt'),
(631, 139, 'Temas en general de la unidad'),
(632, 140, 'Definición, propiedades y evaluación básica de la diagonalización ortogonal'),
(633, 140, 'El teorema espectral'),
(634, 140, 'Descomposición espectral o forma de proyección del teorema espectral'),
(635, 140, 'Temas en general de la unidad'),
(636, 141, 'Matriz de Jordán'),
(637, 141, 'Matriz de bloques de Jordán'),
(638, 141, 'Forma canónica de Jordán'),
(639, 141, 'Valor característico generalizado'),
(640, 141, 'Temas en general de la unidad'),
(641, 142, 'Definición, propiedades y evaluación básica del producto interno'),
(642, 142, 'Producto punto ponderado'),
(643, 142, 'Bases ortogonales y producto interno'),
(644, 142, 'Proyecciones ortogonales, componente ortogonal y producto interno'),
(645, 142, 'Polinomios normalizados de Lagendre'),
(646, 142, 'La desigualdad de Cauchy-Schwarz'),
(647, 142, 'La desigualdad del triángulo'),
(648, 142, 'Temas en general de la unidad'),
(649, 143, 'Producto punto complejo'),
(650, 143, 'Transpuesta conjugada'),
(651, 143, 'Matriz hermitiana'),
(652, 143, 'Matriz compleja cuadradada unitaria'),
(653, 143, 'Matriz compleja cuadradada diagonizable unitariamente'),
(654, 143, 'Temas en general de la unidad'),
(655, 144, 'Espacio lineal normado'),
(656, 144, 'Norma suma'),
(657, 144, 'Norma máxima'),
(658, 144, 'Norma euclidiana'),
(659, 144, 'Norma de Hamming'),
(660, 144, 'Norma matricial'),
(661, 144, 'Norma de Frobenius'),
(662, 144, 'Operador norma'),
(663, 144, 'Temas en general de la unidad'),
(664, 145, 'Los valores singulares de una matriz'),
(665, 145, 'Definición, propiedades y evaluación de la descomposición de valor singular'),
(666, 145, 'Valores singulares izquierdos y derechos'),
(667, 145, 'Forma del producto punto de la DVS'),
(668, 145, 'Inversa de Moore Penrose'),
(669, 145, 'Aplicaciones prácticas de la DVS'),
(670, 145, 'Temas en general de la unidad'),
(671, 201, 'Definición de ED, orden y grado de esta'),
(672, 201, 'Solución general'),
(673, 201, 'Solución particular'),
(674, 201, 'Solución singular'),
(675, 201, 'Introducción a los problemas con valores iniciales'),
(676, 201, 'Campos pendientes o direccionales'),
(677, 201, 'Los isóclinas'),
(678, 201, 'Existencia y unicidad de las ED'),
(679, 201, 'Ecuaciones integrodiferenciales'),
(680, 201, 'Temas en general de la unidad'),
(681, 202, 'Ecuaciones diferenciales de variables separables'),
(682, 202, 'Ecuacion logística'),
(683, 202, 'Sustitucion lineal'),
(684, 202, 'Sustitucion rotacional'),
(685, 202, 'Temas en general de la unidad'),
(686, 206, 'Ecuaciones de Bernoulli'),
(687, 206, 'Ecuaciones de Riccati'),
(688, 206, 'Ecuaciones de lagrange'),
(689, 206, 'Ecuaciones de Clairaut '),
(690, 206, 'Decaimiento radioactivo'),
(691, 206, 'Mezclas y tanques'),
(692, 206, 'Mas aplicaciones a la química'),
(693, 206, 'Crecimiento poblacional'),
(694, 206, 'Propagación de enfermedades'),
(695, 206, 'Ley de enfriamiento de Newton'),
(696, 206, 'Tiro parabólico'),
(697, 206, 'Caída libre'),
(698, 206, 'Circuitos'),
(699, 206, 'Aplicaciones a problemas geométricos en general'),
(700, 206, 'Aplicaciones en general de las ED de primer orden'),
(701, 207, 'Presentación general de las ED de orden superior'),
(702, 207, 'Principio de superposición o linealidad'),
(703, 207, 'Dependencia e independencia lineal'),
(704, 207, 'El wronskiano'),
(705, 207, 'Existencia y unicidad de las soluciones'),
(706, 207, 'Ecuaciones lineales de segundo orden con coeficientes constantes'),
(707, 207, 'Ecuación auxiliar'),
(708, 207, 'Solución para raíces reales diferentes'),
(709, 207, 'Solución para raíces reales iguales'),
(710, 207, 'Solución para raíces complejas'),
(711, 207, 'Ecuación de Cauchy-Euler'),
(712, 207, 'Temas en general de la unidad'),
(713, 208, 'Método de coeficientes indeterminados'),
(714, 208, 'Método de variación de parámetros para ED de segundo grado'),
(715, 208, 'Método de variación de parámetros para ED de más de segundo orden'),
(716, 208, 'Temas en general de la unidad'),
(717, 209, 'Problemas de valores iniciales para ED de orden superior'),
(718, 209, 'Problemas con valores en la frontera'),
(719, 209, 'Problemas de eigenvalores'),
(720, 209, 'Temas en general de la unidad'),
(721, 210, 'Resorte colocado verticalmente'),
(722, 210, 'Movimiento sobreamortiguado'),
(723, 210, 'Movimiento críticamente amortiguado'),
(724, 210, 'Vibraciones forzadas'),
(725, 210, 'Casos en general sobre movimiento ondulatorio'),
(726, 210, 'Circuitos eléctricos'),
(727, 210, 'Vigas y resistencia de materiales'),
(728, 210, 'Temas en general de la unidad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_mat`
--

CREATE TABLE IF NOT EXISTS `tipos_mat` (
  `id_tipomat` int(11) NOT NULL,
  `name_tipo` varchar(35) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_limpias`
--

CREATE TABLE IF NOT EXISTS `tm_limpias` (
  `id_tml` int(11) NOT NULL,
  `tm_limpia` varchar(200) DEFAULT NULL,
  `tm_sucia` varchar(200) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=1341 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tm_limpias`
--

INSERT INTO `tm_limpias` (`id_tml`, `tm_limpia`, `tm_sucia`) VALUES
(1, 'regla-de-correspondencia-dominio-y-rango', 'Regla de correspondencia, dominio y rango'),
(2, 'operaciones-bsicas-de-funciones-suma-resta-multiplicacin-y-divisin', 'Operaciones básicas de funciones suma, resta, multiplicación y división'),
(3, 'combinacin-de-funciones', 'Combinación de funciones'),
(4, 'funciones-inversas', 'Funciones inversas'),
(5, 'funcin-linealgrafica-desplazamientos-reflexiones-expansiones-y-contracciones', 'Función lineal(Grafica, desplazamientos, reflexiones, expansiones y contracciones)'),
(6, 'funcin-cuadrticagrafica-desplazamientos-reflexiones-expansiones-y-contracciones', 'Función cuadrática(Grafica, desplazamientos, reflexiones, expansiones y contracciones)'),
(7, 'funcin-cubica-grafica-desplazamientos-reflexiones-expansiones-y-contracciones', 'Función cubica (Grafica, desplazamientos, reflexiones, expansiones y contracciones)'),
(8, 'temas-y-ejercicios-en-general-', 'Temas y ejercicios en general '),
(9, 'partes-de-una-funcin-polinomial', 'Partes de una función polinomial'),
(10, 'divisin-de-polinomios', 'División de polinomios'),
(11, 'teorema-del-residuo', 'Teorema del residuo'),
(12, 'races-o-ceros-por-factorizacin', 'Raíces o ceros por factorización'),
(13, 'races-racionales', 'Raíces racionales'),
(14, 'mtodo-de-biseccin', 'Método de bisección'),
(15, 'ejemplos-de-graficacin-de-funciones-polinomiales', 'Ejemplos de graficación de funciones polinomiales'),
(16, 'temas-y-ejercicios-en-general', 'Temas y ejercicios en general'),
(17, 'definicin-y-propiedades-de-las-funciones-racionales', 'Definición y propiedades de las funciones racionales'),
(18, 'como-graficar-una-funcin-racional-varios-ejemplos', 'Como graficar una función racional Varios ejemplos'),
(19, 'tipos-de-asintotas', 'Tipos de asintotas'),
(20, 'descomposicin-de-fracciones-parciales', 'Descomposición de fracciones parciales'),
(21, 'temas-y-ejercicios-en-general', 'Temas y ejercicios en general'),
(22, 'funciones-exponenciales-grficas-y-propiedades', 'Funciones exponenciales,  gráficas y propiedades'),
(23, 'funcin-exponencial-de-base-e', 'Función exponencial de base e'),
(24, 'propiedades-de-los-logaritmos-y-cambio-de-base', 'Propiedades de los logaritmos y cambio de base'),
(25, 'cambio-de-base', 'Cambio de base'),
(26, 'funciones-logartmicas-grficas-y-propiedades', 'Funciones logarítmicas, gráficas y propiedades'),
(27, 'logaritmo-natural', 'Logaritmo natural'),
(28, 'ecuaciones-exponenciales-y-logartmicas', 'Ecuaciones exponenciales y logarítmicas'),
(29, 'temas-y-ejercicios-en-general', 'Temas y ejercicios en general'),
(30, 'sistemas-2x2-reduccin', 'Sistemas 2x2 reducción'),
(31, 'sistemas-2x2-comparacin', 'Sistemas 2x2 comparación'),
(32, 'sistemas-2x2-suma-y-resta', 'Sistemas 2x2 suma y resta'),
(33, 'sistemas-2x2-fracciones', 'Sistemas 2x2 fracciones'),
(34, 'sistemas-3x3-con-nmeros-enteros', 'Sistemas 3x3 con números enteros'),
(35, 'sistemas-3x3-con-nmeros-fraccionarios', 'Sistemas 3x3 con números fraccionarios'),
(36, 'mtodo-de-determinantes', 'Método de determinantes'),
(37, 'sistemas-2x2-de-segundo-grado', 'Sistemas 2x2 de segundo grado'),
(38, 'sistemas-de-ecuaciones-de-ms-de-segundo-grado', 'Sistemas de ecuaciones de más de segundo grado'),
(39, 'eliminacin-gauss-jordn', 'Eliminación Gauss-Jordán'),
(40, 'sistemas-de-desigualdades', 'Sistemas de desigualdades'),
(41, 'programacin-lineal', 'Programación lineal'),
(42, 'temas-y-ejercicios-en-general', 'Temas y ejercicios en general'),
(43, 'matrices-concepto-y-propiedades', 'Matrices, concepto y propiedades'),
(44, 'suma-y-resta-de-matrices', 'Suma y resta de matrices'),
(45, 'multiplicacin-de-una-matriz-por-un-numero-escalar', 'Multiplicación de una matriz por un numero escalar'),
(46, 'multiplicacin-de-matrices-y-propiedades', 'Multiplicación de matrices y propiedades'),
(47, 'matriz-identidad', 'Matriz identidad'),
(48, 'inversa-de-una-matriz-cuadrada', 'Inversa de una matriz cuadrada'),
(49, 'ecuaciones-matriciales', 'Ecuaciones matriciales'),
(50, 'temas-y-ejercicios-en-general', 'Temas y ejercicios en general'),
(51, 'sucesiones', 'Sucesiones'),
(52, 'series-y-notacin-sumatoria', 'Series y notación sumatoria'),
(53, 'progresiones-aritmticas', 'Progresiones aritméticas'),
(54, 'progresiones-geomtricas', 'Progresiones geométricas'),
(55, 'induccin-matemtica', 'Inducción matemática'),
(56, 'permutacin-y-factorial', 'Permutación y factorial'),
(57, 'coordinaciones', 'Coordinaciones'),
(58, 'combinaciones', 'Combinaciones'),
(59, 'triangulo-de-pascal-y-binomio-de-newton', 'Triangulo de pascal y binomio de newton'),
(60, 'temas-y-ejercicios-en-general', 'Temas y ejercicios en general'),
(61, 'grados-radianes-y-arcos', 'Grados, radianes y arcos'),
(62, 'tringulos-semejantesteorema-de-euclides', 'Triángulos semejantes(teorema de Euclides)'),
(63, 'ngulos-complementarios-adyacentes-y-colaterales', 'Ángulos complementarios, adyacentes y colaterales'),
(64, 'razones-trigonomtricas-y-soluciones-del-tringulo-rectngulo', 'Razones trigonométricas y soluciones del triángulo rectángulo'),
(65, 'temas-y-ejercicios-en-general', 'Temas y ejercicios en general'),
(66, 'que-son-el-dominio-de-ngulos-y-de-radianes', 'Que son el dominio de ángulos y de radianes'),
(67, 'funciones-trigonomtrica-en-el-crculo', 'Funciones trigonométrica en el círculo'),
(68, 'funciones-trigonomtrica-en-cuadrantes', 'Funciones trigonométrica en cuadrantes'),
(69, 'temas-en-general-', 'Temas en general '),
(70, 'grafica-de-la-funcin-seno-y-coseno', 'Grafica de la función seno y coseno'),
(71, 'grafica-de-la-funcin-tangente-y-cotangente', 'Grafica de la función tangente y cotangente'),
(72, 'grafica-de-la-funcin-csc-y-sec', 'Grafica de la función csc y sec'),
(73, 'graficas-de-formas-combinadas-introduccin-a-las-series-de-fourier', 'Graficas de formas combinadas, introducción a las series de Fourier'),
(74, 'temas-y-ejercicios-en-general', 'Temas y ejercicios en general'),
(75, 'identidades-reciprocas-del-cociente-y-negativo', 'Identidades reciprocas, del cociente y negativo'),
(76, 'identidades-pitagricas', 'Identidades pitagóricas'),
(77, 'identidades-suma-y-resta-de-ngulos', 'Identidades suma y resta de ángulos'),
(78, 'identidades-de-ngulos-complementarios-y-suplementarios', 'Identidades de ángulos complementarios y suplementarios'),
(79, 'identidades-del-ngulo-doble-y-del-semiangulo', 'Identidades del ángulo doble y del semiangulo'),
(80, 'identidades-de-producto-suma-y-de-suma-producto', 'Identidades de producto-suma y de suma-producto'),
(81, 'varios-ejercicios-de-identidades', 'Varios ejercicios de identidades'),
(82, 'temas-y-ejercicios-en-general', 'Temas y ejercicios en general'),
(83, 'funciones-inversa-seno-y-cosenopropiedades-y-graficas', 'Funciones inversa seno y coseno(propiedades y graficas)'),
(84, 'funciones-inversa-tangente-y-cotangentepropiedades-y-graficas', 'Funciones inversa tangente y cotangente(propiedades y graficas)'),
(85, 'funciones-inversa-sec-y-csc-propiedades-y-graficas', 'Funciones inversa sec y csc (propiedades y graficas)'),
(86, 'temas-y-ejercicios-en-general', 'Temas y ejercicios en general'),
(87, 'mtodos-y-ejercicios-resueltos', 'Métodos y ejercicios resueltos'),
(88, 'solucin-de-desigualdades-trigonomtricas', 'Solución de desigualdades trigonométricas'),
(89, 'temas-y-ejercicios-en-general', 'Temas y ejercicios en general'),
(90, 'ley-de-los-senos-y-tipos-de-casos', 'Ley de los senos y tipos de casos'),
(91, 'ley-de-los-cosenos-y-tipos-de-casos', 'Ley de los cosenos y tipos de casos'),
(92, 'vectores-geomtricos', 'Vectores geométricos'),
(93, 'vectores-algebraicos', 'Vectores algebraicos'),
(94, 'temas-en-general', 'Temas en general'),
(95, 'sistemas-de-coordenadas-polares-y-cambios-de-sistemas', 'Sistemas de coordenadas polares y cambios de sistemas'),
(96, 'nmeros-complejos-en-forma-rectangular-y-polar', 'Números complejos en forma rectangular y polar'),
(97, 'teorema-de-moivre-y-teorema-de-la-raz-ensima-', 'Teorema de Moivre y teorema de la raíz enésima '),
(98, 'pendiente-de-la-recta', 'Pendiente de la recta'),
(99, 'ecuacion-punto-pendiente', 'Ecuacion punto pendiente'),
(100, 'ecuacion-de-la-recta-conociendo-2-puntos-de-ella', 'Ecuacion de la recta conociendo 2 puntos de ella'),
(101, 'forma-general-de-la-ecuacin-de-la-recta', 'Forma general de la ecuación de la recta'),
(102, 'forma-normal-de-la-ecuacin-de-la-recta', 'Forma normal de la ecuación de la recta'),
(103, 'ecuacion-paramtrica-de-la-recta', 'Ecuacion paramétrica de la recta'),
(104, 'distancia-entre-2-puntos', 'Distancia entre 2 puntos'),
(105, 'distancia-de-un-punto-a-una-recta', 'Distancia de un punto a una recta'),
(106, 'distancia-entre-2-rectas-paralelas', 'Distancia entre 2 rectas paralelas'),
(107, 'punto-medio-de-un-segmento', 'Punto medio de un segmento'),
(108, 'razn-de-segmentos', 'Razón de segmentos'),
(109, 'interseccin-de-rectas-', 'Intersección de rectas '),
(110, 'angulo-entre-2-rectas', 'Angulo entre 2 rectas'),
(111, 'paralelismo-y-perpendicularidad', 'Paralelismo y perpendicularidad'),
(112, 'temas-y-ejercicios-en-general', 'Temas y ejercicios en general'),
(113, 'varios-ejercicios-sobre-lugares-geomtricos', 'Varios ejercicios sobre lugares geométricos'),
(114, 'ortocentro', 'Ortocentro'),
(115, 'medianas-y-baricentros', 'Medianas y baricentros'),
(116, 'mediatriz-y-circuncentro', 'Mediatriz y circuncentro'),
(117, 'bisectriz-e-incentro', 'Bisectriz e Incentro'),
(118, 'recta-de-euler', 'Recta de Euler'),
(119, 'varios-ejercicios-sobre-lugares-geomtricos-para-el-tringulo', 'Varios ejercicios sobre lugares geométricos para el triángulo'),
(120, 'temas-y-ejercicios-en-general-del-tringulo', 'Temas y ejercicios en general del triángulo'),
(121, 'circulo-con-centro-en-el-origen', 'Circulo con centro en el origen'),
(122, 'forma-estndar-o-canonica-del-circulo', 'Forma estándar o canonica del circulo'),
(123, 'forma-general-de-la-ecuacin-del-circulo', 'Forma general de la ecuación del circulo'),
(124, 'desigualdades-y-crculos', 'Desigualdades y círculos'),
(125, 'ecuaciones-paramtricas-en-el-crculo', 'Ecuaciones paramétricas en el círculo'),
(126, 'intersecciones-en-el-crculo', 'Intersecciones en el círculo'),
(127, 'temas-y-ejercicios-en-general-del-circulo-', 'Temas y ejercicios en general del circulo '),
(128, 'elementos-de-la-parbola', 'Elementos de la parábola'),
(129, 'parabolas-horizontales', 'Parabolas horizontales'),
(130, 'parabolas-verticales', 'Parabolas verticales'),
(131, 'ecuacion-general-de-la-parbola', 'Ecuacion general de la parábola'),
(132, 'ecuacion-estndar-o-cannica', 'Ecuacion estándar o canónica'),
(133, 'ejercicios-graficar-la-parbola-dados-ciertos-datos', 'Ejercicios - Graficar la parábola dados ciertos datos'),
(134, 'ejercicios-encontrar-ecuacin-de-la-parbola', 'Ejercicios - Encontrar ecuación de la parábola'),
(135, 'ejercicios-calculo-de-elementos-en-la-parbola', 'Ejercicios - Calculo de elementos en la parábola'),
(136, 'desigualdades-y-la-parbola', 'Desigualdades y la parábola'),
(137, 'ecuaciones-paramtricas-de-la-parbola', 'Ecuaciones paramétricas de la parábola'),
(138, 'intersecciones-en-la-parbola', 'Intersecciones en la parábola'),
(139, 'temas-y-ejercicios-en-general-de-la-parbola', 'Temas y ejercicios en general de la parábola'),
(140, 'elementos-de-la-elipse', 'Elementos de la elipse'),
(141, 'elipse-horizontal', 'Elipse horizontal'),
(142, 'elipse-vertical', 'Elipse vertical'),
(143, 'la-excentricidad-de-la-elipse', 'La excentricidad de la elipse'),
(144, 'forma-general-de-la-ecuacin-de-la-elipse', 'Forma general de la ecuación de la elipse'),
(145, 'forma-simtrica-de-la-ecuacin-de-la-elipse', 'Forma simétrica de la ecuación de la elipse'),
(146, 'desigualdades-y-la-elipse', 'Desigualdades y la elipse'),
(147, 'ecuaciones-paramtricas-de-la-elipse', 'Ecuaciones paramétricas de la elipse'),
(148, 'interseccion-en-la-elipse', 'Interseccion en la elipse'),
(149, 'temas-y-ejercicios-en-general-de-la-elipse', 'Temas y ejercicios en general de la elipse'),
(150, 'elementos-de-la-hiprbola', 'Elementos de la hipérbola'),
(151, 'hiperbola-horizontal', 'Hiperbola horizontal'),
(152, 'hiperbola-vertical', 'Hiperbola vertical'),
(153, 'ecuacion-general-de-la-hiprbola', 'Ecuacion general de la hipérbola'),
(154, 'forma-simtrica-de-la-ecuacin-de-la-hiprbola', 'Forma simétrica de la ecuación de la hipérbola'),
(155, 'ejercicios-sobre-asntotas-de-la-hiprbola', 'Ejercicios sobre asíntotas de la hipérbola'),
(156, 'la-excentricidad-de-la-hiprbola', 'La excentricidad de la hipérbola'),
(157, 'desigualdades-y-la-hiprbola', 'Desigualdades y la hipérbola'),
(158, 'ecuaciones-paramtricas-en-la-hiprbola', 'Ecuaciones paramétricas en la hipérbola'),
(159, 'temas-y-ejercicios-en-general-de-la-hiprbola', 'Temas y ejercicios en general de la hipérbola'),
(160, 'intoduccion-y-graficas-de-las-ecuaciones-polares', 'Intoduccion y graficas de las ecuaciones polares'),
(161, 'ecuaciones-polares-su-equivalencia-a-coordenas-cartesianas', 'Ecuaciones polares, su equivalencia a coordenas cartesianas'),
(162, 'rectas-en-ecuaciones-polares', 'Rectas en ecuaciones polares'),
(163, 'circulos-en-ecuaciones-polares', 'Circulos en ecuaciones polares'),
(164, 'parabolas-en-ecuaciones-polares', 'Parabolas en ecuaciones polares'),
(165, 'elipses-en-ecuaciones-polares', 'Elipses en ecuaciones polares'),
(166, 'hiperbolas-en-ecuaciones-polares', 'Hiperbolas en ecuaciones polares'),
(167, 'lamniscatas', 'Lamniscatas'),
(168, 'simetria-en-coordenas-polares', 'Simetria en coordenas polares'),
(169, 'caracoles', 'Caracoles'),
(170, 'rosas', 'Rosas'),
(171, 'espirales', 'Espirales'),
(172, 'concoides-de-nicmedes', 'Concoides de Nicómedes'),
(173, 'rotacion-de-curvas-en-coordenas-polares', 'Rotacion de curvas en coordenas polares'),
(174, 'lugares-geomtricos-en-coordenadas-polares', 'Lugares geométricos en coordenadas polares'),
(175, 'temas-y-ejercicios-en-general-de-ecuaciones-polares', 'Temas y ejercicios en general de ecuaciones polares'),
(176, 'que-es-la-estadstica', 'Que es la estadística'),
(177, 'muestra-y-poblacin', 'Muestra y población'),
(178, 'tipos-de-variables-y-datos', 'Tipos de variables y datos'),
(179, 'nivel-de-medicin-ordinal-nominal-de-intervalo-y-de-razn', 'Nivel de medición ordinal, nominal, de intervalo y de razón'),
(180, 'pensamiento-crtico-como-analizar-que-una-muestra-est-mal-o-con-datos-engaoso', 'Pensamiento crítico, como analizar que una muestra está mal o con datos engañoso'),
(181, 'estudios-transversales-estudios-retrospectivos-y-estudios-prospectivos', 'Estudios transversales, estudios retrospectivos y estudios prospectivos'),
(182, 'tema-en-general-de-la-unidad', 'Tema en general de la unidad'),
(183, 'distribucion-de-frecuencias-simples', 'Distribucion de frecuencias simples'),
(184, 'distribucion-de-frecuencias-relativas-y-acumuladas', 'Distribucion de frecuencias relativas y acumuladas'),
(185, 'distribucion-de-frecuencias-porcentuales', 'Distribucion de frecuencias porcentuales'),
(186, 'histogramas', 'Histogramas'),
(187, 'ojivas-menos-que-y-ms-que', 'Ojivas, menos que y más que'),
(188, 'graficas-de-puntos', 'Graficas de puntos'),
(189, 'graficas-de-pareto', 'Graficas de pareto'),
(190, 'grafica-de-tallo-y-hoja', 'Grafica de tallo y hoja'),
(191, 'poligono-de-frecuencias', 'Poligono de frecuencias'),
(192, 'tabulaciones-cruzadas', 'Tabulaciones cruzadas'),
(193, 'pensamiento-crtico-para-juzgar-una-grfica', 'Pensamiento crítico para juzgar una gráfica'),
(194, 'creacion-de-graficas-propias', 'Creacion de graficas propias'),
(195, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(196, 'media-simplearitmtica', 'Media simple(aritmética)'),
(197, 'media-recortada', 'Media recortada'),
(198, 'media-armnica', 'Media armónica'),
(199, 'media-geomtrica', 'Media geométrica'),
(200, 'media-ponderada', 'Media ponderada'),
(201, 'media-de-distribucin-de-frecuencias', 'Media de distribución de frecuencias'),
(202, 'mediana-y-posicin-de-la-mediana', 'Mediana y posición de la mediana'),
(203, 'mediana-de-una-distribucin-de-frecuencias', 'Mediana de una distribución de frecuencias'),
(204, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(205, 'rango-de-un-conjunto-de-datos', 'Rango de un conjunto de datos'),
(206, 'desviacion-estndar-de-una-muestra', 'Desviacion estándar de una muestra'),
(207, 'desviacion-estndar-de-una-poblacin', 'Desviacion estándar de una población'),
(208, 'varianza-de-una-muestra-y-una-poblacin', 'Varianza de una muestra y una población'),
(209, 'regla-prctica-del-intervalo', 'Regla práctica del intervalo'),
(210, 'regla-emprica-para-datos-con-distribucin-normal', 'Regla empírica para datos con distribución normal'),
(211, 'teorema-de-chebyshev', 'Teorema de Chebyshev'),
(212, 'desviacion-media-absoluta', 'Desviacion media absoluta'),
(213, 'coeficiente-de-variacin', 'Coeficiente de variación'),
(214, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(215, 'puntuaciones-z-valores-frecuentes-y-no-frecuentes', 'Puntuaciones Z, valores frecuentes y no frecuentes'),
(216, 'cuartiles-y-percentiles', 'Cuartiles y percentiles'),
(217, 'graficas-de-cuadro', 'Graficas de cuadro'),
(218, 'valores-extremos', 'Valores extremos'),
(219, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(220, 'diagramas-de-rbol', 'Diagramas de árbol'),
(221, 'coordinaciones', 'Coordinaciones'),
(222, 'permutaciones-simples-y-factoriales', 'Permutaciones simples y factoriales'),
(223, 'permutaciones-circulares', 'Permutaciones circulares'),
(224, 'coombinaciones', 'Coombinaciones'),
(225, 'varios-ejercicios-de-probabilidad-y-conteo', 'Varios ejercicios de probabilidad y conteo'),
(226, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(227, 'eventos-y-espacio-muestral', 'Eventos y espacio muestral'),
(228, 'conjuntos-unin-interseccin-diferencia-y-complemento', 'Conjuntos, unión, intersección, diferencia y complemento'),
(229, 'probabilidad-terica', 'Probabilidad teórica'),
(230, 'probabilidad-y-ley-de-los-grandes-nmeros', 'Probabilidad y ley de los grandes números'),
(231, 'probabilidad-no-a-eventos-complementarios', 'Probabilidad no A, eventos complementarios'),
(232, 'probabilidad-a-o-b-regla-de-la-suma', 'Probabilidad A o B, regla de la suma'),
(233, 'eventos-mutuamente-excluyentes-sucesos-disjuntos', 'Eventos mutuamente excluyentes, sucesos disjuntos'),
(234, 'probabilidad-a-y-b-eventos-independientes-y-regla-de-la-suma', 'Probabilidad A y B, eventos independientes y regla de la suma'),
(235, 'probabilidad-a-dado-b-eventos-dependientes-relacin-probabilidad-a-y-b-y-rm', 'Probabilidad A dado B, eventos dependientes, relación probabilidad A y B y RM'),
(236, 'teorema-de-bayes', 'Teorema de Bayes'),
(237, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(238, 'variable-aleatoria-y-concepto-de-funcin-de-probabilidad', 'Variable aleatoria y concepto de función de probabilidad'),
(239, 'distribucin-de-una-variable-aleatoria-discreta', 'Distribución de una variable aleatoria discreta'),
(240, 'distribucin-acumulada', 'Distribución acumulada'),
(241, 'esperanza-o-media-de-una-variable-aleatoria-discreta', 'Esperanza o media de una variable aleatoria discreta'),
(242, 'concepto-de-distribucin-de-probabilidad-binomial', 'Concepto de distribución de probabilidad binomial'),
(243, 'media-de-la-distribucin-de-probabilidad-binomial', 'Media de la distribución de probabilidad binomial'),
(244, 'desviacin-y-varianza-de-la-distribucin-de-probabilidad-binomial', 'Desviación y varianza de la distribución de probabilidad binomial'),
(245, 'distribucin-de-poisson-y-aplicaciones', 'Distribución de poisson y aplicaciones'),
(246, 'distribucin-de-probabilidad-hipergeometrica', 'Distribución de probabilidad hipergeometrica'),
(247, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(248, 'distribucin-uniforme-de-probabilidad', 'Distribución uniforme de probabilidad'),
(249, 'concepto-de-distribucin-de-probabilidades-normales', 'Concepto de distribución de probabilidades normales'),
(250, 'la-distribucin-normal-estndar-y-sus-aplicaciones', 'La distribución normal estándar y sus aplicaciones'),
(251, 'aproximacin-a-la-binomial', 'Aproximación a la binomial'),
(252, 'distribucin-exponencial-de-probabilidad', 'Distribución exponencial de probabilidad'),
(253, 'factor-de-correccin-por-continuidad', 'Factor de corrección por continuidad'),
(254, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(255, 'consejos-a-la-hora-de-preparar-una-muestra', 'Consejos a la hora de preparar una muestra'),
(256, 'muestreo-aleatorio-simple', 'Muestreo aleatorio simple'),
(257, 'muestreo-aleatorio-sistemtico', 'Muestreo aleatorio sistemático'),
(258, 'muestreo-aleatorio-estatificado', 'Muestreo aleatorio estatificado'),
(259, 'muestreo-aleatorio-por-racimos-o-conglomerados', 'Muestreo aleatorio por racimos o conglomerados'),
(260, 'muestreo-de-etapas-mltiples', 'Muestreo de etapas múltiples'),
(261, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(262, 'distribucin-muestral-de-proporciones', 'Distribución muestral de proporciones'),
(263, 'distribucin-muestral-de-medias-y-teorema-lc', 'Distribución muestral de medias y teorema LC'),
(264, 'distribucin-de-frecuencias-muestrales', 'Distribución de frecuencias muestrales'),
(265, 'distribucin-de-diferencias-y-sumas', 'Distribución de diferencias y sumas'),
(266, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(267, 'que-es-la-estimacin-de-parmetros', 'Que es la estimación de parámetros'),
(268, 'estimados-sesgados-insesgados-y-eficientes-y-puntuales', 'Estimados sesgados, insesgados y eficientes y puntuales'),
(269, 'estimador-puntual-en-la-proporcin-poblacional', 'Estimador puntual en la proporción poblacional'),
(270, 'intervalo-de-confianza-y-niveles-de-confianza', 'Intervalo de confianza y niveles de confianza'),
(271, 'intervalo-de-confianza-unilateral-en-la-estimacin-de-la-proporcin', 'Intervalo de confianza unilateral en la estimación de la proporción'),
(272, 'valores-crticos-en-la-estimacin-de-la-proporcin', 'Valores críticos en la estimación de la proporción'),
(273, 'margen-de-error-en-la-estimacin-de-la-proporcin', 'Margen de error en la estimación de la proporción'),
(274, 'determinacin-del-tamao-muestral-en-la-estimacin-de-la-proporcin', 'Determinación del tamaño muestral en la estimación de la proporción'),
(275, 'pruebas-de-hiptesis-para-la-estimacin-de-la-proporcin-de-una-poblacin', 'Pruebas de hipótesis para la estimación de la proporción de una población'),
(276, 'estadstico-de-prueba-para-la-proporcin', 'Estadístico de prueba para la proporción'),
(277, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(278, 'intervalo-de-confianza-para-la-media-mu', 'Intervalo de confianza para la media mu'),
(279, 'intervalo-de-confianza-con-factor-de-correccin-para-poblacin-finita', 'Intervalo de confianza con factor de corrección para población finita'),
(280, 'error-mximo-de-estimacin-para-la-media-mu', 'Error máximo de estimación para la media mu'),
(281, 'tamao-de-la-muestra-para-estimacin-mu', 'Tamaño de la muestra para estimación mu'),
(282, 'tamao-de-la-muestra-con-factor-de-correccin-para-poblacin-finita', 'Tamaño de la muestra con factor de corrección para población finita'),
(283, 'prueba-de-hiptesis-de-media-mu-con-sigma-conocida', 'Prueba de hipótesis de media mu con sigma conocida'),
(284, 'estadstico-de-prueba-para-la-media', 'Estadístico de prueba para la media'),
(285, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(286, 'distribucin-de-t-student', 'Distribución de t student'),
(287, 'grados-de-confianza', 'Grados de confianza'),
(288, 'margen-de-error-para-estimar-la-media-mu-con-sigma-desconocida', 'Margen de error para estimar la media mu con sigma desconocida'),
(289, 'prueba-de-hiptesis-media-mu-con-sigma-desconocida', 'Prueba de hipótesis media mu con sigma desconocida'),
(290, 'estadstico-de-prueba', 'Estadístico de prueba'),
(291, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(292, 'distribucin-chi-cuadradadauso-y-propiedad', 'Distribución chi cuadradada(uso y propiedad)'),
(293, 'estimadores-de-la-varianza-poblacional', 'Estimadores de la varianza poblacional'),
(294, 'determinacin-del-tamao-de-la-muestra-para-estimar-la-varianza-poblacional', 'Determinación del tamaño de la muestra para estimar la varianza poblacional'),
(295, 'prueba-de-hiptesis-respecto-a-la-varianza-poblacional', 'Prueba de hipótesis respecto a la varianza poblacional'),
(296, 'estadstico-de-prueba', 'Estadístico de prueba'),
(297, 'calculo-con-valores-crticos', 'Calculo con valores críticos'),
(298, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(299, 'nocin-de-lmites', 'Noción de límites'),
(300, 'regla-de-la-constante-suma-resta-y-multiplicacin', 'Regla de la constante, suma, resta y multiplicación'),
(301, 'limites-de-funciones-racionales', 'Limites de funciones racionales'),
(302, 'limites-que-incluyen-radicales', 'Limites que incluyen radicales'),
(303, 'limites-unilaterales', 'Limites unilaterales'),
(304, 'limites-bilaterales', 'Limites bilaterales'),
(305, 'limites-cuando-la-variable-tiende-a-infinito', 'Limites cuando la variable tiende a infinito'),
(306, 'final-de-una-funcin', 'Final de una función'),
(307, 'limites-de-funciones-definidas-por-partes', 'Limites de funciones definidas por partes'),
(308, 'limites-definicin-psilon-delta', 'Limites definición Épsilon-Delta'),
(309, 'limites-de-funciones-trigonomtricas', 'Limites de funciones trigonométricas'),
(310, 'limites-de-funciones-trigonomtricas-inversas', 'Limites de funciones trigonométricas inversas'),
(311, 'limites-de-funciones-logartmicas-y-exponenciales', 'Limites de funciones logarítmicas y exponenciales'),
(312, 'continuidad', 'Continuidad'),
(313, 'continuidad-de-funciones-trigonomtricas', 'Continuidad de funciones trigonométricas'),
(314, 'teorema-del-valor-intermedio', 'Teorema del valor intermedio'),
(315, 'temas-y-ejercicios-en-general-de-la-unidad', 'Temas y ejercicios en general de la unidad'),
(316, 'el-problema-de-las-rectas-tangentes', 'El problema de las rectas tangentes'),
(317, 'mtodo-de-los-4-pasos', 'Método de los 4 pasos'),
(318, 'demostracin-de-las-reglas-bsicas-de-derivacin-algebraica', 'Demostración de las reglas básicas de derivación algebraica'),
(319, 'regla-de-la-cadena', 'Regla de la cadena'),
(320, 'derivadas-sucesivas-de-una-funcin', 'Derivadas sucesivas de una función'),
(321, 'temas-y-ejercicios-en-general-de-la-unidad', 'Temas y ejercicios en general de la unidad'),
(322, 'demostracin-de-las-derivadas-de-funciones-trigonomtricas-directas', 'Demostración de las derivadas de funciones trigonométricas directas'),
(323, 'aplicaciones-de-las-derivadas-de-funciones-trigonomtricas-directas', 'Aplicaciones de las derivadas de funciones trigonométricas directas'),
(324, 'varios-ejercicios', 'Varios ejercicios'),
(325, 'demostracin-de-las-derivadas-de-funciones-trigonomtricas-inversas', 'Demostración de las derivadas de funciones trigonométricas inversas'),
(326, 'aplicaciones-de-las-derivadas-de-funciones-trigonomtricas-inversas', 'Aplicaciones de las derivadas de funciones trigonométricas inversas'),
(327, 'varios-ejercicios', 'Varios ejercicios'),
(328, 'demostracin-de-las-derivadas-de-funciones-exponenciales', 'Demostración de las derivadas de funciones exponenciales'),
(329, 'demostracin-de-las-derivadas-de-funciones-logartmicas', 'Demostración de las derivadas de funciones logarítmicas'),
(330, 'aplicaciones-de-las-derivadas-de-funciones-exponenciales-y-logartmicas', 'Aplicaciones de las derivadas de funciones exponenciales y logarítmicas'),
(331, 'varios-ejercicios', 'Varios ejercicios'),
(332, 'razones-de-cambio', 'Razones de cambio'),
(333, 'razones-relacionadas', 'Razones relacionadas'),
(334, 'varios-ejercicios', 'Varios ejercicios'),
(335, 'aproximacion-local', 'Aproximacion local'),
(336, 'incremetos-decrementos-y-concavidad', 'Incremetos, decrementos y concavidad'),
(337, 'puntos-de-inflexin', 'Puntos de inflexión'),
(338, 'maximos-y-mnimos-relativos', 'Maximos y mínimos relativos'),
(339, 'multiplicidad', 'Multiplicidad'),
(340, 'maximos-y-mnimos-absolutos', 'Maximos y mínimos absolutos'),
(341, 'teorema-del-rolle', 'Teorema del Rolle'),
(342, 'teorema-del-valor-medio', 'Teorema del valor medio'),
(343, 'teorema-del-valor-medio-de-cauchy', 'Teorema del valor medio de Cauchy'),
(344, 'teorema-de-la-diferencia-constante', 'Teorema de la diferencia constante'),
(345, 'temas-y-ejercicios-en-general-de-la-unidad', 'Temas y ejercicios en general de la unidad'),
(346, 'que-es-la-integracin', 'Que es la integración'),
(347, 'reglas-bsicas-de-integracin-de-funciones-algebraicas', 'Reglas básicas de integración de funciones algebraicas'),
(348, 'integracin-de-funciones-compuestas', 'Integración de funciones compuestas'),
(349, 'constante-de-integracin', 'Constante de integración'),
(350, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(351, 'sumas-de-riemann-y-el-clculo-del-rea-mediante-sumas', 'Sumas de Riemann y el cálculo del área mediante sumas'),
(352, 'ejercicios-y-propiedades-de-las-integrales-definidas', 'Ejercicios y propiedades de las integrales definidas'),
(353, 'ejercicios-de-reas-mediante-integracin-definida', 'Ejercicios de Áreas mediante integración definida'),
(354, 'ejercicios-de-integrales-con-funciones-como-lmites-de-integracin', 'Ejercicios de integrales con funciones como límites de integración'),
(355, 'ejercicios-y-propiedades-de-las-integrales-impropias', 'Ejercicios y propiedades de las integrales impropias'),
(356, 'discontinuidades-e-integrabilidad', 'Discontinuidades e integrabilidad'),
(357, 'funciones-logartmicas-definidas-por-integrales', 'Funciones logarítmicas definidas por integrales'),
(358, 'funcin-error', 'Función error'),
(359, 'funciones-seno-y-coseno-de-fresnel', 'Funciones seno y coseno de Fresnel'),
(360, 'funciones-elpticas', 'Funciones elípticas'),
(361, 'teorema-del-valor-medio-para-integrales', 'Teorema del valor medio para integrales'),
(362, 'mtodos-numricos-regla-de-simpson', 'Métodos Numéricos Regla de Simpson'),
(363, 'temas-y-ejercicios-en-general-de-la-unidad', 'Temas y ejercicios en general de la unidad'),
(364, 'volmenes-por-rebanadas', 'Volúmenes por rebanadas'),
(365, 'volmenes-por-discos', 'Volúmenes por discos'),
(366, 'mtodo-de-las-arandelas', 'Método de las arandelas'),
(367, 'mtodo-de-cascarones-cilndricos', 'Método de cascarones cilíndricos'),
(368, 'temas-y-ejercicios-en-general-de-la-unidad', 'Temas y ejercicios en general de la unidad'),
(369, 'definicin-de-pi-por-medio-de-integrales', 'Definición de pi por medio de integrales'),
(370, 'longitud-de-curvas', 'Longitud de curvas'),
(371, 'calculo-del-rea-en-coordenadas-polares', 'Calculo del área en coordenadas polares'),
(372, 'rea-de-una-superficie-de-revolucin', 'Área de una superficie de revolución'),
(373, 'funciones-hiperblicas-y-calculo-integral', 'Funciones hiperbólicas y calculo integral'),
(374, 'temas-y-ejercicios-en-general-de-la-unidad', 'Temas y ejercicios en general de la unidad'),
(375, 'algebra-y-propiedades-de-las-funciones-de-2-o-mas-variables', 'Algebra y propiedades de las funciones de 2 o mas variables'),
(376, 'graficas-de-funciones-de-2-variables', 'Graficas de funciones de 2 variables'),
(377, 'superficies-de-nivel', 'Superficies de nivel'),
(378, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(379, 'limites-a-lo-largo-de-curvas', 'Limites a lo largo de curvas'),
(380, 'discos-abiertos-y-cerrados-bola-abierta-y-cerrada-puntos-y-fronteras', 'Discos abiertos y cerrados, bola abierta y cerrada, puntos y fronteras'),
(381, 'evaluacion-de-limites-de-funciones-de-2-variables', 'Evaluacion de limites de funciones de 2 variables'),
(382, 'evaluacion-de-limites-de-funciones-de-3-variables', 'Evaluacion de limites de funciones de 3 variables'),
(383, 'continuidad-de-funciones-de-2-variables', 'Continuidad de funciones de 2 variables'),
(384, 'continuidad-de-funciones-de-3-variables', 'Continuidad de funciones de 3 variables'),
(385, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(386, 'definicion-y-propiedades-de-las-integrales-parciales', 'Definicion y propiedades de las integrales parciales'),
(387, 'evaluacion-de-derivadas-parciales-con-2-variables', 'Evaluacion de derivadas parciales con 2 variables'),
(388, 'evaluacion-de-derivadas-parciales-con-mas-de-2-variables', 'Evaluacion de derivadas parciales con mas de 2 variables'),
(389, 'derivadas-parciales-de-orden-superior', 'Derivadas parciales de orden superior'),
(390, 'derivadas-parciales-implicitas', 'Derivadas parciales implicitas'),
(391, 'derivadas-parciales-de-funciones-vectoriales', 'Derivadas parciales de funciones vectoriales'),
(392, 'derivavilidad-en-derivadas-parciales', 'Derivavilidad en derivadas parciales'),
(393, 'diferenciales-en-derivadas-parciales', 'Diferenciales en derivadas parciales'),
(394, 'ragla-de-la-cadena-en-derivadas-parciales', 'Ragla de la cadena en derivadas parciales'),
(395, 'aproximaciones-lineales-locales-en-derivadas-parciales', 'Aproximaciones lineales locales en derivadas parciales'),
(396, 'razones-relacionadas-en-derivadas-parciales', 'Razones relacionadas en derivadas parciales'),
(397, 'ecuaciones-de-onda-con-derivadas-parciales', 'Ecuaciones de onda con derivadas parciales'),
(398, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(399, 'derivadas-direccionales-y-pendiente-de-la-superficie', 'Derivadas direccionales y pendiente de la superficie'),
(400, 'el-gradiente-propiedades-y-aplicaciones', 'El gradiente, propiedades y aplicaciones'),
(401, 'introduccion-a-los-planos-tangentes-a-superficies', 'Introduccion a los planos tangentes a superficies'),
(402, 'planos-tangentes-y-diferenciales-totales', 'Planos tangentes y diferenciales totales'),
(403, 'planos-tangentes-a-superficies-de-nivel', 'Planos tangentes a superficies de nivel'),
(404, 'tengentes-e-intersecciones-de-superficies', 'Tengentes e intersecciones de superficies'),
(405, 'temas-en-general-de-la-uniad', 'Temas en general de la uniad'),
(406, 'conjuntos-acotados-y-no-acotados', 'Conjuntos acotados y no acotados'),
(407, 'puntos-criticos-y-puntos-silla', 'Puntos criticos y puntos silla'),
(408, 'criterio-de-las-segundas-derivadas-parciales', 'Criterio de las segundas derivadas parciales'),
(409, 'maximos-y-minimos-absolutos-de-funciones-multidependientes', 'Maximos y minimos absolutos de funciones multidependientes'),
(410, 'maximos-y-minimos-relativos-de-funciones-multidependientes', 'Maximos y minimos relativos de funciones multidependientes'),
(411, 'matriz-y-determinante-hessiana', 'Matriz y determinante hessiana'),
(412, 'problemas-de-optimizacion-de-funciones-multidependientes', 'Problemas de optimizacion de funciones multidependientes'),
(413, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(414, 'maximos-y-minimos-absolutos-restringidos', 'Maximos y minimos absolutos restringidos'),
(415, 'maximos-y-minimos-relativos-restringidos', 'Maximos y minimos relativos restringidos'),
(416, 'definicion-y-propiedades-del-multiplicador-de-lagrange', 'Definicion y propiedades del multiplicador de lagrange'),
(417, 'problemas-de-optimizacion-restringida-y-uso-de-los-multiplicadores-de-lagrange', 'Problemas de optimizacion restringida y uso de los multiplicadores de lagrange'),
(418, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(419, 'origen-y-definicion-de-las-integrales-dobles-el-problema-del-volumen-bajo-la-superficie', 'Origen y definicion de las integrales dobles, el problema del volumen bajo la superficie'),
(420, 'evaluacion-de-integrales-parciales', 'Evaluacion de integrales parciales'),
(421, 'evaluacion-dde-integrales-dobles-y-calculo-del-area-bajo-la-superficie', 'Evaluacion dde integrales dobles y calculo del area bajo la superficie'),
(422, 'evaluacion-de-integrales-dobles-con-limites-de-integracion-no-constantes', 'Evaluacion de integrales dobles con limites de integracion no constantes'),
(423, 'calculo-del-volumen-bajo-la-superficie-con-regiones-no-rectangulares', 'Calculo del volumen bajo la superficie con regiones no rectangulares'),
(424, 'inversion-del-orden-de-integracion', 'Inversion del orden de integracion'),
(425, 'calculo-de-areas-de-integracion', 'Calculo de areas de integracion'),
(426, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(427, 'region-polar-simple-y-rectangulo-polar', 'Region polar simple y rectangulo polar'),
(428, 'sumas-de-riemann-polares', 'Sumas de Riemann polares'),
(429, 'integrales-dobles-en-coordenadas-polares-evaluacion-y-calculo-del-area-bajo-la-superficie', 'Integrales dobles en coordenadas polares, evaluacion y calculo del area bajo la superficie'),
(430, 'calculo-del-area-utilizando-coordenas-polares', 'Calculo del area utilizando coordenas polares'),
(431, 'conversion-de-integrales-dobles-de-coordenas-rectangulares-a-coordenas-polares', 'Conversion de integrales dobles de coordenas rectangulares a coordenas polares'),
(432, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(433, 'definicion-propiedades-y-generacion-de-superficies-parametricas', 'Definicion, propiedades y generacion de superficies parametricas'),
(434, 'funciones-vectoriales-de-2-variables-y-superficies-parametricas', 'Funciones vectoriales de 2 variables y superficies parametricas'),
(435, 'planos-tangentes-a-superficies-parametricas', 'Planos tangentes a superficies parametricas'),
(436, 'areas-de-superficies-parametricas', 'Areas de superficies parametricas'),
(437, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(438, 'definicion-y-propiedades-de-las-integrales-triples', 'Definicion y propiedades de las integrales triples'),
(439, 'evaluacion-de-integrales-triples-sobre-cajas-rectangulares', 'Evaluacion de integrales triples sobre cajas rectangulares'),
(440, 'evaluacion-de-integrales-triples-sobre-regiones-generales', 'Evaluacion de integrales triples sobre regiones generales'),
(441, 'aplicaciones-de-las-integrales-triples-a-los-centros-de-gravedad', 'Aplicaciones de las integrales triples a los centros de gravedad'),
(442, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(443, 'integrales-triples-en-coordenas-cilindricas', 'Integrales triples en coordenas cilindricas'),
(444, 'conversion-de-integrales-triples-en-coordenas-rectangulares-a-coordenas-cilindricas', 'Conversion de integrales triples en coordenas rectangulares a coordenas cilindricas'),
(445, 'integrales-triples-en-coordenas-esfericas', 'Integrales triples en coordenas esfericas'),
(446, 'conversion-de-integrales-triples-de-coordenas-rectangulares-a-coordenas-esfericas', 'Conversion de integrales triples de coordenas rectangulares a coordenas esfericas'),
(447, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(448, 'jacobiano-en-integrales', 'Jacobiano en integrales'),
(449, 'transformaciones-del-plano', 'Transformaciones del plano'),
(450, 'cambio-de-variables-en-integrales-dobles', 'Cambio de variables en integrales dobles'),
(451, 'cambio-de-variables-en-integrales-triples', 'Cambio de variables en integrales triples'),
(452, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(453, 'definicion-propiedades-y-graficacin-de-funciones-vectoriales', 'Definicion, propiedades y graficación de funciones vectoriales'),
(454, 'limites-de-funciones-vectoriales', 'Limites de funciones vectoriales'),
(455, 'continuidad-de-funciones-vectoriales', 'Continuidad de funciones vectoriales'),
(456, 'derivadas-de-funciones-vectoriales-definicion-y-significado-geomtrico', 'Derivadas de funciones vectoriales, definicion y significado geométrico'),
(457, 'funciones-vectoriales-de-2-variables', 'Funciones vectoriales de 2 variables'),
(458, 'derivadas-parciales-de-funciones-vectoriales', 'Derivadas parciales de funciones vectoriales'),
(459, 'diferenciales-de-funciones-vectoriales', 'Diferenciales de funciones vectoriales'),
(460, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(461, 'vectores-tangente', 'Vectores tangente'),
(462, 'vectores-normales', 'Vectores normales'),
(463, 'vectores-binormales', 'Vectores binormales'),
(464, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(465, 'definicion-y-propiedades-y-formulas-de-la-curvatura', 'Definicion y propiedades y formulas de la curvatura'),
(466, 'aplicaciones-al-movimiento-de-la-curvatura', 'Aplicaciones al movimiento de la curvatura'),
(467, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(468, 'definicion-propiedades-y-graficas-de-las-campos-vectoriales', 'Definicion, propiedades y graficas de las campos vectoriales'),
(469, 'campos-del-inverso-cuadrado', 'Campos del inverso cuadrado'),
(470, 'campos-conservativos-y-funciones-de-potencial', 'Campos conservativos y funciones de potencial'),
(471, 'campos-gradiente', 'Campos gradiente'),
(472, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(473, 'el-operador-nabla-en-coordenadas-cartesianas', 'El operador nabla en coordenadas cartesianas'),
(474, 'el-operador-nabla-en-coordenadas-cilindricas-y-esfericas', 'El operador nabla en coordenadas cilindricas y esfericas'),
(475, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(476, 'operador-lapciano', 'Operador Lapciano'),
(477, 'ecuacion-de-laplace', 'Ecuacion de laplace'),
(478, 'temas-en-general-de-la-unida', 'Temas en general de la unida'),
(479, 'nocion-del-teorema-de-la-divergencia', 'Nocion del teorema de la divergencia'),
(480, 'difinicion-propiedades-y-demostracion-del-teorema-de-la-divergencia', 'Difinicion, propiedades y demostracion del teorema de la divergencia'),
(481, 'uso-y-aplicaciones-del-teorema-de-la-', 'Uso y aplicaciones del teorema de la '),
(482, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(483, 'definicion-y-propiedades-del-rotacional', 'Definicion y propiedades del rotacional'),
(484, 'campos-rotacional-e-irrotacionales', 'Campos rotacional e irrotacionales'),
(485, 'uso-y-aplicaciones-del-rotacional', 'Uso y aplicaciones del rotacional'),
(486, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(487, 'definicion-y-propiedades-de-las-integrales-de-linea', 'Definicion y propiedades de las integrales de linea'),
(488, 'evaluacion-de-integrales-de-linea-dependientes-de-la-trayectoria', 'Evaluacion de integrales de linea dependientes de la trayectoria'),
(489, 'evaluacion-de-integrales-de-linea-independientes-de-la-trayectoria', 'Evaluacion de integrales de linea independientes de la trayectoria'),
(490, 'integrales-de-linea-y-campos-vectoriales-conservativos', 'Integrales de linea y campos vectoriales conservativos'),
(491, 'integrales-de-linea-a-lo-largo-de-curvas-por-partes', 'Integrales de linea a lo largo de curvas por partes'),
(492, 'fisica-e-integrales-de-linea', 'Fisica e integrales de linea'),
(493, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(494, 'definicion-propiedades-y-demostracion-del-teorema-de-green', 'Definicion, propiedades y demostracion del Teorema de Green'),
(495, 'teorema-de-green-para-regiones-multiplemente-conexas', 'Teorema de green para regiones multiplemente conexas'),
(496, 'uso-y-aplicaciones-del-teorema-de-green', 'Uso y aplicaciones del teorema de Green'),
(497, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(498, 'definicion-propiedades-y-demostracion-del-teorema-de-stokes', 'Definicion, propiedades y demostracion del teorema de Stokes'),
(499, 'uso-y-aplicaciones-del-teorema-de-stokes', 'Uso y aplicaciones del teorema de Stokes'),
(500, 'el-rotacional-y-el-teorema-de-stokes', 'El rotacional y el teorema de Stokes'),
(501, 'relacion-entre-los-teoremas-de-green-y-stokes', 'Relacion entre los teoremas de Green y Stokes'),
(502, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(503, 'parametrizacion-de-superficies', 'Parametrizacion de superficies'),
(504, 'definicion-y-propiedades-de-las-integrales-de-superficie', 'Definicion y propiedades de las integrales de superficie'),
(505, 'evaluacion-de-integrales-de-superficie', 'Evaluacion de integrales de superficie'),
(506, 'aplicaciones-de-flujo-e-integrales-de-flujo', 'Aplicaciones de flujo e integrales de flujo'),
(507, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(508, 'definicion-de-una-matriz', 'Definicion de una matriz'),
(509, 'matriz-cuadradada', 'Matriz cuadradada'),
(510, 'matriz-diagonal', 'Matriz diagonal'),
(511, 'matriz-escalar', 'Matriz escalar'),
(512, 'identidad', 'identidad'),
(513, 'matriz-triangular', 'Matriz triangular'),
(514, 'matriz-indepotente', 'Matriz indepotente'),
(515, 'matriz-conmutable', 'Matriz conmutable'),
(516, 'matriz-nilpotente', 'Matriz nilpotente'),
(517, 'matriz-involutiva', 'Matriz involutiva'),
(518, 'rango-y-nulidad-de-una-matriz', 'Rango y nulidad de una matriz'),
(519, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(520, 'propiedades-y-evaluacin-de-una-matriz-por-un-escalar', 'Propiedades y evaluación de una matriz por un escalar'),
(521, 'propiedades-y-evaluacin-de-la-suma-de-matrices', 'Propiedades y evaluación de la suma de matrices'),
(522, 'propiedades-y-evaluacin-de-la-multiplicacin-de-matrices', 'Propiedades y evaluación de la multiplicación de matrices'),
(523, 'matrices-particionadas', 'Matrices particionadas'),
(524, 'potencias-de-matrices', 'Potencias de matrices'),
(525, 'matrices-y-solucin-sistemas-de-ecuaciones-lineales', 'Matrices y solución sistemas de ecuaciones lineales'),
(526, 'mtodos-iterativos-para-resolver-matrices', 'Métodos iterativos para resolver matrices'),
(527, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(528, 'evaluacin-y-propiedades-de-una-matriz-inversa', 'Evaluación y propiedades de una matriz inversa'),
(529, 'matrices-elementales', 'Matrices elementales'),
(530, 'el-mtodo-de-gauss-jordan-para-calcular-la-inversa', 'El método de Gauss-Jordan para calcular la inversa'),
(531, 'solucin-de-sistemas-de-ecuaciones-en-trminos-de-la-matriz-inversa', 'Solución de sistemas de ecuaciones en términos de la matriz inversa'),
(532, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(533, 'matriz-simtrica', 'Matriz simétrica'),
(534, 'propiedades-y-evaluacin-de-la-transpuesta', 'Propiedades y evaluación de la transpuesta'),
(535, 'matriz-adjunta', 'Matriz adjunta'),
(536, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(537, 'evaluacin-y-propiedades-de-la-factorizacin-lu', 'Evaluación y propiedades de la factorización LU'),
(538, 'matriz-de-permutacin', 'Matriz de permutación'),
(539, 'evaluacin-y-propiedades-de-la-factorizacin-plu', 'Evaluación y propiedades de la factorización PLU'),
(540, 'solucin-de-sistemas-de-ecuaciones-utilizando-factorizacin-de-matrices', 'Solución de sistemas de ecuaciones utilizando factorización de matrices'),
(541, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(542, 'definicin-y-propiedades-de-los-determinantes', 'Definición y propiedades de los determinantes'),
(543, 'evaluacin-bsica-de-determinantes', 'Evaluación básica de determinantes'),
(544, 'unicidad-del-determinante', 'Unicidad del determinante'),
(545, 'teorema-de-expansin-de-laplace', 'Teorema de expansión de Laplace'),
(546, 'desarrollo-por-cofactores', 'Desarrollo por cofactores'),
(547, 'determinates-de-matrices-elementales', 'Determinates de matrices elementales'),
(548, 'determinates-de-matrices-triangulares', 'Determinates de matrices triangulares'),
(549, 'determinates-de-matrices-transpuestas', 'Determinates de matrices transpuestas'),
(550, 'mas-sobre-determinantes-y-matrices', 'Mas sobre determinantes y matrices'),
(551, 'operaciones-matriciales-bsicas-y-determinantes', 'Operaciones matriciales básicas y determinantes'),
(552, 'la-regla-de-cramer', 'La regla de Cramer'),
(553, 'metodo-de-condensacin-de-lewis-carroll', 'Metodo de condensación de Lewis-Carroll'),
(554, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(555, 'producto-cruz-y-determinantes', 'Producto cruz y determinantes'),
(556, 'area-volumen-y-determinantes', 'Area, volumen y determinantes'),
(557, 'ajustes-de-curvas-y-determinantes', 'Ajustes de curvas y determinantes'),
(558, 'determinates-en-las-telecomunicaciones', 'Determinates en las telecomunicaciones'),
(559, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(560, 'definicin-y-propiedades-del-espacio-vectorial', 'Definición y propiedades del espacio vectorial'),
(561, 'definicin-y-propiedades-del-espacio-vectorial-trivial', 'Definición y propiedades del espacio vectorial trivial'),
(562, 'definicin-y-propiedades-del-subespacio', 'Definición y propiedades del subespacio'),
(563, 'definicin-y-propiedades-del-subespacio-trivial', 'Definición y propiedades del subespacio trivial'),
(564, 'subespacio-propio', 'Subespacio propio'),
(565, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(566, 'definicin-propiedades-y-evaluacin-de-las-combinaciones-lineales', 'Definición, propiedades y evaluación de las combinaciones lineales'),
(567, 'el-conjunto-generador', 'El conjunto generador'),
(568, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(569, 'definicin-y-propiedades-de-la-base', 'Definición y propiedades de la base'),
(570, 'definicin-y-propiedades-de-la-dimensin', 'Definición y propiedades de la dimensión'),
(571, 'la-base-cannica', 'La base canónica'),
(572, 'cambios-de-base-y-matriz-de-transicin', 'Cambios de base y matriz de transición'),
(573, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(574, 'definicin-propiedades-y-evaluacin-bsica-de-transformaciones-lineales', 'Definición, propiedades y evaluación básica de transformaciones lineales'),
(575, 'transformacin-cero', 'Transformación cero'),
(576, 'transformacin-identidad', 'Transformación identidad'),
(577, 'transformacin-de-reflexin', 'Transformación de reflexión'),
(578, 'transformacin-de-rotacin', 'Transformación de rotación'),
(579, 'transformacin-de-proyeccin-ortogonal', 'Transformación de proyección ortogonal'),
(580, 'operador-de-transposicin', 'Operador de transposición'),
(581, 'ejemplos-de-transformaciones-no-lineales', 'Ejemplos de transformaciones no lineales'),
(582, 'nulidad-rango-y-kernel-de-una-transformacin-lineal', 'Nulidad, rango y Kernel de una transformación lineal'),
(583, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(584, 'matriz-de-transformacin', 'Matriz de transformación'),
(585, 'geometria-de-las-transformaciones-lineales-expansiones-comprensiones-reflexiones-y-cortes', 'Geometria de las transformaciones lineales, expansiones, comprensiones, reflexiones y cortes'),
(586, 'descomposicin-de-una-transposicin-lineal', 'Descomposición de una transposición lineal'),
(587, 'transformaciones-lineales-compuestas', 'Transformaciones lineales compuestas');
INSERT INTO `tm_limpias` (`id_tml`, `tm_limpia`, `tm_sucia`) VALUES
(588, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(589, 'definicin-propiedades-y-evaluacin-de-isometras', 'Definición, propiedades y evaluación de isometrías'),
(590, 'espacios-vectoriales-isomorfos', 'Espacios vectoriales isomorfos'),
(591, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(592, 'concepto-propiedades-y-evaluacin-bsica-de-valores-y-vectores-caractersticos', 'Concepto, propiedades y evaluación básica de valores y vectores característicos'),
(593, 'espacio-caracterstico', 'Espacio característico'),
(594, 'polinomio-caracterstico', 'Polinomio característico'),
(595, 'ecuacin-caracterstica', 'Ecuación característica'),
(596, 'valores-y-vectores-caractersticos-de-una-matriz-cuadradada', 'Valores y vectores característicos de una matriz cuadradada'),
(597, 'valores-y-vectores-caractersticos-de-una-matriz-triangular', 'Valores y vectores característicos de una matriz triangular'),
(598, 'multiplicidad-algebraica-de-un-valor-caracterstico', 'Multiplicidad algebraica de un valor característico'),
(599, 'multiplicidad-geomtrica-de-un-valor-caracterstico', 'Multiplicidad geométrica de un valor característico'),
(600, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(601, 'matrices-diagonizables', 'Matrices diagonizables'),
(602, 'el-teorema-de-la-diagonalizacin', 'El teorema de la diagonalización'),
(603, 'matrices-semejantes', 'Matrices semejantes'),
(604, 'relacin-de-equivalencia', 'Relación de equivalencia'),
(605, 'el-mtodo-de-la-potencia', 'El método de la potencia'),
(606, 'valor-caracterstico-dominante', 'Valor característico dominante'),
(607, 'mtodo-de-potencia-ajustado', 'Método de potencia ajustado'),
(608, 'mtodo-de-potencia-inverso', 'Método de potencia inverso'),
(609, 'mtodo-de-potencia-inverso-ajustado', 'Método de potencia inverso ajustado'),
(610, 'teorema-de-disco-de-geshgorin', 'Teorema de disco de Geshgorin'),
(611, 'teorema-de-cayley-hamilton', 'Teorema de Cayley-Hamilton'),
(612, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(613, 'modelos-de-crecimiento-poblacional-eigenvalores-y-matriz-de-leslie', 'Modelos de crecimiento poblacional, eigenvalores y matriz de leslie'),
(614, 'cadenas-de-markov-eigenvalores-y-matriz-de-transicin-de-rango-largo', 'Cadenas  de Markov, eigenvalores y matriz de transición de rango largo'),
(615, 'el-teorema-de-perron-frobenius', 'El teorema de Perron-Frobenius'),
(616, 'relacin-de-recurrencia-lineal', 'Relación de recurrencia lineal'),
(617, 'sistemas-de-ecuaciones-diferenciales-y-eigenvalores', 'Sistemas de ecuaciones diferenciales y eigenvalores'),
(618, 'sistemas-dinmicos-lineales-discretos', 'Sistemas dinámicos lineales discretos'),
(619, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(620, 'conjuntos-ortogonales', 'Conjuntos ortogonales'),
(621, 'base-ortogonal', 'Base ortogonal'),
(622, 'conjuntos-ortonormales', 'Conjuntos ortonormales'),
(623, 'base-ortonormales', 'Base ortonormales'),
(624, 'complemento-ortogonal', 'Complemento ortogonal'),
(625, 'subespacios-fundamentales', 'Subespacios fundamentales'),
(626, 'proyeccin-ortogonal-en-rn', 'Proyección ortogonal en Rn'),
(627, 'norma-de-un-vector-en-rn', 'Norma de un vector en Rn'),
(628, 'teorema-de-descomposicin-ortogonal', 'Teorema de descomposición ortogonal'),
(629, 'teorema-de-aproximacin-de-la-norma', 'Teorema de aproximación de la norma'),
(630, 'proceso-de-ortogonalizacin-de-gram-smidt', 'Proceso de ortogonalización de Gram-Smidt'),
(631, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(632, 'definicin-propiedades-y-evaluacin-bsica-de-la-diagonalizacin-ortogonal', 'Definición, propiedades y evaluación básica de la diagonalización ortogonal'),
(633, 'el-teorema-espectral', 'El teorema espectral'),
(634, 'descomposicin-espectral-o-forma-de-proyeccin-del-teorema-espectral', 'Descomposición espectral o forma de proyección del teorema espectral'),
(635, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(636, 'matriz-de-jordn', 'Matriz de Jordán'),
(637, 'matriz-de-bloques-de-jordn', 'Matriz de bloques de Jordán'),
(638, 'forma-cannica-de-jordn', 'Forma canónica de Jordán'),
(639, 'valor-caracterstico-generalizado', 'Valor característico generalizado'),
(640, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(641, 'definicin-propiedades-y-evaluacin-bsica-del-producto-interno', 'Definición, propiedades y evaluación básica del producto interno'),
(642, 'producto-punto-ponderado', 'Producto punto ponderado'),
(643, 'bases-ortogonales-y-producto-interno', 'Bases ortogonales y producto interno'),
(644, 'proyecciones-ortogonales-componente-ortogonal-y-producto-interno', 'Proyecciones ortogonales, componente ortogonal y producto interno'),
(645, 'polinomios-normalizados-de-lagendre', 'Polinomios normalizados de Lagendre'),
(646, 'la-desigualdad-de-cauchy-schwarz', 'La desigualdad de Cauchy-Schwarz'),
(647, 'la-desigualdad-del-tringulo', 'La desigualdad del triángulo'),
(648, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(649, 'producto-punto-complejo', 'Producto punto complejo'),
(650, 'transpuesta-conjugada', 'Transpuesta conjugada'),
(651, 'matriz-hermitiana', 'Matriz hermitiana'),
(652, 'matriz-compleja-cuadradada-unitaria', 'Matriz compleja cuadradada unitaria'),
(653, 'matriz-compleja-cuadradada-diagonizable-unitariamente', 'Matriz compleja cuadradada diagonizable unitariamente'),
(654, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(655, 'espacio-lineal-normado', 'Espacio lineal normado'),
(656, 'norma-suma', 'Norma suma'),
(657, 'norma-mxima', 'Norma máxima'),
(658, 'norma-euclidiana', 'Norma euclidiana'),
(659, 'norma-de-hamming', 'Norma de Hamming'),
(660, 'norma-matricial', 'Norma matricial'),
(661, 'norma-de-frobenius', 'Norma de Frobenius'),
(662, 'operador-norma', 'Operador norma'),
(663, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(664, 'los-valores-singulares-de-una-matriz', 'Los valores singulares de una matriz'),
(665, 'definicin-propiedades-y-evaluacin-de-la-descomposicin-de-valor-singular', 'Definición, propiedades y evaluación de la descomposición de valor singular'),
(666, 'valores-singulares-izquierdos-y-derechos', 'Valores singulares izquierdos y derechos'),
(667, 'forma-del-producto-punto-de-la-dvs', 'Forma del producto punto de la DVS'),
(668, 'inversa-de-moore-penrose', 'Inversa de Moore Penrose'),
(669, 'aplicaciones-prcticas-de-la-dvs', 'Aplicaciones prácticas de la DVS'),
(670, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(671, 'regla-de-correspondencia-dominio-y-rango', 'Regla de correspondencia, dominio y rango'),
(672, 'operaciones-bsicas-de-funciones-suma-resta-multiplicacin-y-divisin', 'Operaciones básicas de funciones suma, resta, multiplicación y división'),
(673, 'combinacin-de-funciones', 'Combinación de funciones'),
(674, 'funciones-inversas', 'Funciones inversas'),
(675, 'funcin-linealgrafica-desplazamientos-reflexiones-expansiones-y-contracciones', 'Función lineal(Grafica, desplazamientos, reflexiones, expansiones y contracciones)'),
(676, 'funcin-cuadrticagrafica-desplazamientos-reflexiones-expansiones-y-contracciones', 'Función cuadrática(Grafica, desplazamientos, reflexiones, expansiones y contracciones)'),
(677, 'funcin-cubica-grafica-desplazamientos-reflexiones-expansiones-y-contracciones', 'Función cubica (Grafica, desplazamientos, reflexiones, expansiones y contracciones)'),
(678, 'temas-y-ejercicios-en-general-', 'Temas y ejercicios en general '),
(679, 'partes-de-una-funcin-polinomial', 'Partes de una función polinomial'),
(680, 'divisin-de-polinomios', 'División de polinomios'),
(681, 'teorema-del-residuo', 'Teorema del residuo'),
(682, 'races-o-ceros-por-factorizacin', 'Raíces o ceros por factorización'),
(683, 'races-racionales', 'Raíces racionales'),
(684, 'mtodo-de-biseccin', 'Método de bisección'),
(685, 'ejemplos-de-graficacin-de-funciones-polinomiales', 'Ejemplos de graficación de funciones polinomiales'),
(686, 'temas-y-ejercicios-en-general', 'Temas y ejercicios en general'),
(687, 'definicin-y-propiedades-de-las-funciones-racionales', 'Definición y propiedades de las funciones racionales'),
(688, 'como-graficar-una-funcin-racional-varios-ejemplos', 'Como graficar una función racional Varios ejemplos'),
(689, 'tipos-de-asintotas', 'Tipos de asintotas'),
(690, 'descomposicin-de-fracciones-parciales', 'Descomposición de fracciones parciales'),
(691, 'temas-y-ejercicios-en-general', 'Temas y ejercicios en general'),
(692, 'funciones-exponenciales-grficas-y-propiedades', 'Funciones exponenciales,  gráficas y propiedades'),
(693, 'funcin-exponencial-de-base-e', 'Función exponencial de base e'),
(694, 'propiedades-de-los-logaritmos-y-cambio-de-base', 'Propiedades de los logaritmos y cambio de base'),
(695, 'cambio-de-base', 'Cambio de base'),
(696, 'funciones-logartmicas-grficas-y-propiedades', 'Funciones logarítmicas, gráficas y propiedades'),
(697, 'logaritmo-natural', 'Logaritmo natural'),
(698, 'ecuaciones-exponenciales-y-logartmicas', 'Ecuaciones exponenciales y logarítmicas'),
(699, 'temas-y-ejercicios-en-general', 'Temas y ejercicios en general'),
(700, 'sistemas-2x2-reduccin', 'Sistemas 2x2 reducción'),
(701, 'sistemas-2x2-comparacin', 'Sistemas 2x2 comparación'),
(702, 'sistemas-2x2-suma-y-resta', 'Sistemas 2x2 suma y resta'),
(703, 'sistemas-2x2-fracciones', 'Sistemas 2x2 fracciones'),
(704, 'sistemas-3x3-con-nmeros-enteros', 'Sistemas 3x3 con números enteros'),
(705, 'sistemas-3x3-con-nmeros-fraccionarios', 'Sistemas 3x3 con números fraccionarios'),
(706, 'mtodo-de-determinantes', 'Método de determinantes'),
(707, 'sistemas-2x2-de-segundo-grado', 'Sistemas 2x2 de segundo grado'),
(708, 'sistemas-de-ecuaciones-de-ms-de-segundo-grado', 'Sistemas de ecuaciones de más de segundo grado'),
(709, 'eliminacin-gauss-jordn', 'Eliminación Gauss-Jordán'),
(710, 'sistemas-de-desigualdades', 'Sistemas de desigualdades'),
(711, 'programacin-lineal', 'Programación lineal'),
(712, 'temas-y-ejercicios-en-general', 'Temas y ejercicios en general'),
(713, 'matrices-concepto-y-propiedades', 'Matrices, concepto y propiedades'),
(714, 'suma-y-resta-de-matrices', 'Suma y resta de matrices'),
(715, 'multiplicacin-de-una-matriz-por-un-numero-escalar', 'Multiplicación de una matriz por un numero escalar'),
(716, 'multiplicacin-de-matrices-y-propiedades', 'Multiplicación de matrices y propiedades'),
(717, 'matriz-identidad', 'Matriz identidad'),
(718, 'inversa-de-una-matriz-cuadrada', 'Inversa de una matriz cuadrada'),
(719, 'ecuaciones-matriciales', 'Ecuaciones matriciales'),
(720, 'temas-y-ejercicios-en-general', 'Temas y ejercicios en general'),
(721, 'sucesiones', 'Sucesiones'),
(722, 'series-y-notacin-sumatoria', 'Series y notación sumatoria'),
(723, 'progresiones-aritmticas', 'Progresiones aritméticas'),
(724, 'progresiones-geomtricas', 'Progresiones geométricas'),
(725, 'induccin-matemtica', 'Inducción matemática'),
(726, 'permutacin-y-factorial', 'Permutación y factorial'),
(727, 'coordinaciones', 'Coordinaciones'),
(728, 'combinaciones', 'Combinaciones'),
(729, 'triangulo-de-pascal-y-binomio-de-newton', 'Triangulo de pascal y binomio de newton'),
(730, 'temas-y-ejercicios-en-general', 'Temas y ejercicios en general'),
(731, 'grados-radianes-y-arcos', 'Grados, radianes y arcos'),
(732, 'tringulos-semejantesteorema-de-euclides', 'Triángulos semejantes(teorema de Euclides)'),
(733, 'ngulos-complementarios-adyacentes-y-colaterales', 'Ángulos complementarios, adyacentes y colaterales'),
(734, 'razones-trigonomtricas-y-soluciones-del-tringulo-rectngulo', 'Razones trigonométricas y soluciones del triángulo rectángulo'),
(735, 'temas-y-ejercicios-en-general', 'Temas y ejercicios en general'),
(736, 'que-son-el-dominio-de-ngulos-y-de-radianes', 'Que son el dominio de ángulos y de radianes'),
(737, 'funciones-trigonomtrica-en-el-crculo', 'Funciones trigonométrica en el círculo'),
(738, 'funciones-trigonomtrica-en-cuadrantes', 'Funciones trigonométrica en cuadrantes'),
(739, 'temas-en-general-', 'Temas en general '),
(740, 'grafica-de-la-funcin-seno-y-coseno', 'Grafica de la función seno y coseno'),
(741, 'grafica-de-la-funcin-tangente-y-cotangente', 'Grafica de la función tangente y cotangente'),
(742, 'grafica-de-la-funcin-csc-y-sec', 'Grafica de la función csc y sec'),
(743, 'graficas-de-formas-combinadas-introduccin-a-las-series-de-fourier', 'Graficas de formas combinadas, introducción a las series de Fourier'),
(744, 'temas-y-ejercicios-en-general', 'Temas y ejercicios en general'),
(745, 'identidades-reciprocas-del-cociente-y-negativo', 'Identidades reciprocas, del cociente y negativo'),
(746, 'identidades-pitagricas', 'Identidades pitagóricas'),
(747, 'identidades-suma-y-resta-de-ngulos', 'Identidades suma y resta de ángulos'),
(748, 'identidades-de-ngulos-complementarios-y-suplementarios', 'Identidades de ángulos complementarios y suplementarios'),
(749, 'identidades-del-ngulo-doble-y-del-semiangulo', 'Identidades del ángulo doble y del semiangulo'),
(750, 'identidades-de-producto-suma-y-de-suma-producto', 'Identidades de producto-suma y de suma-producto'),
(751, 'varios-ejercicios-de-identidades', 'Varios ejercicios de identidades'),
(752, 'temas-y-ejercicios-en-general', 'Temas y ejercicios en general'),
(753, 'funciones-inversa-seno-y-cosenopropiedades-y-graficas', 'Funciones inversa seno y coseno(propiedades y graficas)'),
(754, 'funciones-inversa-tangente-y-cotangentepropiedades-y-graficas', 'Funciones inversa tangente y cotangente(propiedades y graficas)'),
(755, 'funciones-inversa-sec-y-csc-propiedades-y-graficas', 'Funciones inversa sec y csc (propiedades y graficas)'),
(756, 'temas-y-ejercicios-en-general', 'Temas y ejercicios en general'),
(757, 'mtodos-y-ejercicios-resueltos', 'Métodos y ejercicios resueltos'),
(758, 'solucin-de-desigualdades-trigonomtricas', 'Solución de desigualdades trigonométricas'),
(759, 'temas-y-ejercicios-en-general', 'Temas y ejercicios en general'),
(760, 'ley-de-los-senos-y-tipos-de-casos', 'Ley de los senos y tipos de casos'),
(761, 'ley-de-los-cosenos-y-tipos-de-casos', 'Ley de los cosenos y tipos de casos'),
(762, 'vectores-geomtricos', 'Vectores geométricos'),
(763, 'vectores-algebraicos', 'Vectores algebraicos'),
(764, 'temas-en-general', 'Temas en general'),
(765, 'sistemas-de-coordenadas-polares-y-cambios-de-sistemas', 'Sistemas de coordenadas polares y cambios de sistemas'),
(766, 'nmeros-complejos-en-forma-rectangular-y-polar', 'Números complejos en forma rectangular y polar'),
(767, 'teorema-de-moivre-y-teorema-de-la-raz-ensima-', 'Teorema de Moivre y teorema de la raíz enésima '),
(768, 'pendiente-de-la-recta', 'Pendiente de la recta'),
(769, 'ecuacion-punto-pendiente', 'Ecuacion punto pendiente'),
(770, 'ecuacion-de-la-recta-conociendo-2-puntos-de-ella', 'Ecuacion de la recta conociendo 2 puntos de ella'),
(771, 'forma-general-de-la-ecuacin-de-la-recta', 'Forma general de la ecuación de la recta'),
(772, 'forma-normal-de-la-ecuacin-de-la-recta', 'Forma normal de la ecuación de la recta'),
(773, 'ecuacion-paramtrica-de-la-recta', 'Ecuacion paramétrica de la recta'),
(774, 'distancia-entre-2-puntos', 'Distancia entre 2 puntos'),
(775, 'distancia-de-un-punto-a-una-recta', 'Distancia de un punto a una recta'),
(776, 'distancia-entre-2-rectas-paralelas', 'Distancia entre 2 rectas paralelas'),
(777, 'punto-medio-de-un-segmento', 'Punto medio de un segmento'),
(778, 'razn-de-segmentos', 'Razón de segmentos'),
(779, 'interseccin-de-rectas-', 'Intersección de rectas '),
(780, 'angulo-entre-2-rectas', 'Angulo entre 2 rectas'),
(781, 'paralelismo-y-perpendicularidad', 'Paralelismo y perpendicularidad'),
(782, 'temas-y-ejercicios-en-general', 'Temas y ejercicios en general'),
(783, 'varios-ejercicios-sobre-lugares-geomtricos', 'Varios ejercicios sobre lugares geométricos'),
(784, 'ortocentro', 'Ortocentro'),
(785, 'medianas-y-baricentros', 'Medianas y baricentros'),
(786, 'mediatriz-y-circuncentro', 'Mediatriz y circuncentro'),
(787, 'bisectriz-e-incentro', 'Bisectriz e Incentro'),
(788, 'recta-de-euler', 'Recta de Euler'),
(789, 'varios-ejercicios-sobre-lugares-geomtricos-para-el-tringulo', 'Varios ejercicios sobre lugares geométricos para el triángulo'),
(790, 'temas-y-ejercicios-en-general-del-tringulo', 'Temas y ejercicios en general del triángulo'),
(791, 'circulo-con-centro-en-el-origen', 'Circulo con centro en el origen'),
(792, 'forma-estndar-o-canonica-del-circulo', 'Forma estándar o canonica del circulo'),
(793, 'forma-general-de-la-ecuacin-del-circulo', 'Forma general de la ecuación del circulo'),
(794, 'desigualdades-y-crculos', 'Desigualdades y círculos'),
(795, 'ecuaciones-paramtricas-en-el-crculo', 'Ecuaciones paramétricas en el círculo'),
(796, 'intersecciones-en-el-crculo', 'Intersecciones en el círculo'),
(797, 'temas-y-ejercicios-en-general-del-circulo-', 'Temas y ejercicios en general del circulo '),
(798, 'elementos-de-la-parbola', 'Elementos de la parábola'),
(799, 'parabolas-horizontales', 'Parabolas horizontales'),
(800, 'parabolas-verticales', 'Parabolas verticales'),
(801, 'ecuacion-general-de-la-parbola', 'Ecuacion general de la parábola'),
(802, 'ecuacion-estndar-o-cannica', 'Ecuacion estándar o canónica'),
(803, 'ejercicios-graficar-la-parbola-dados-ciertos-datos', 'Ejercicios - Graficar la parábola dados ciertos datos'),
(804, 'ejercicios-encontrar-ecuacin-de-la-parbola', 'Ejercicios - Encontrar ecuación de la parábola'),
(805, 'ejercicios-calculo-de-elementos-en-la-parbola', 'Ejercicios - Calculo de elementos en la parábola'),
(806, 'desigualdades-y-la-parbola', 'Desigualdades y la parábola'),
(807, 'ecuaciones-paramtricas-de-la-parbola', 'Ecuaciones paramétricas de la parábola'),
(808, 'intersecciones-en-la-parbola', 'Intersecciones en la parábola'),
(809, 'temas-y-ejercicios-en-general-de-la-parbola', 'Temas y ejercicios en general de la parábola'),
(810, 'elementos-de-la-elipse', 'Elementos de la elipse'),
(811, 'elipse-horizontal', 'Elipse horizontal'),
(812, 'elipse-vertical', 'Elipse vertical'),
(813, 'la-excentricidad-de-la-elipse', 'La excentricidad de la elipse'),
(814, 'forma-general-de-la-ecuacin-de-la-elipse', 'Forma general de la ecuación de la elipse'),
(815, 'forma-simtrica-de-la-ecuacin-de-la-elipse', 'Forma simétrica de la ecuación de la elipse'),
(816, 'desigualdades-y-la-elipse', 'Desigualdades y la elipse'),
(817, 'ecuaciones-paramtricas-de-la-elipse', 'Ecuaciones paramétricas de la elipse'),
(818, 'interseccion-en-la-elipse', 'Interseccion en la elipse'),
(819, 'temas-y-ejercicios-en-general-de-la-elipse', 'Temas y ejercicios en general de la elipse'),
(820, 'elementos-de-la-hiprbola', 'Elementos de la hipérbola'),
(821, 'hiperbola-horizontal', 'Hiperbola horizontal'),
(822, 'hiperbola-vertical', 'Hiperbola vertical'),
(823, 'ecuacion-general-de-la-hiprbola', 'Ecuacion general de la hipérbola'),
(824, 'forma-simtrica-de-la-ecuacin-de-la-hiprbola', 'Forma simétrica de la ecuación de la hipérbola'),
(825, 'ejercicios-sobre-asntotas-de-la-hiprbola', 'Ejercicios sobre asíntotas de la hipérbola'),
(826, 'la-excentricidad-de-la-hiprbola', 'La excentricidad de la hipérbola'),
(827, 'desigualdades-y-la-hiprbola', 'Desigualdades y la hipérbola'),
(828, 'ecuaciones-paramtricas-en-la-hiprbola', 'Ecuaciones paramétricas en la hipérbola'),
(829, 'temas-y-ejercicios-en-general-de-la-hiprbola', 'Temas y ejercicios en general de la hipérbola'),
(830, 'intoduccion-y-graficas-de-las-ecuaciones-polares', 'Intoduccion y graficas de las ecuaciones polares'),
(831, 'ecuaciones-polares-su-equivalencia-a-coordenas-cartesianas', 'Ecuaciones polares, su equivalencia a coordenas cartesianas'),
(832, 'rectas-en-ecuaciones-polares', 'Rectas en ecuaciones polares'),
(833, 'circulos-en-ecuaciones-polares', 'Circulos en ecuaciones polares'),
(834, 'parabolas-en-ecuaciones-polares', 'Parabolas en ecuaciones polares'),
(835, 'elipses-en-ecuaciones-polares', 'Elipses en ecuaciones polares'),
(836, 'hiperbolas-en-ecuaciones-polares', 'Hiperbolas en ecuaciones polares'),
(837, 'lamniscatas', 'Lamniscatas'),
(838, 'simetria-en-coordenas-polares', 'Simetria en coordenas polares'),
(839, 'caracoles', 'Caracoles'),
(840, 'rosas', 'Rosas'),
(841, 'espirales', 'Espirales'),
(842, 'concoides-de-nicmedes', 'Concoides de Nicómedes'),
(843, 'rotacion-de-curvas-en-coordenas-polares', 'Rotacion de curvas en coordenas polares'),
(844, 'lugares-geomtricos-en-coordenadas-polares', 'Lugares geométricos en coordenadas polares'),
(845, 'temas-y-ejercicios-en-general-de-ecuaciones-polares', 'Temas y ejercicios en general de ecuaciones polares'),
(846, 'que-es-la-estadstica', 'Que es la estadística'),
(847, 'muestra-y-poblacin', 'Muestra y población'),
(848, 'tipos-de-variables-y-datos', 'Tipos de variables y datos'),
(849, 'nivel-de-medicin-ordinal-nominal-de-intervalo-y-de-razn', 'Nivel de medición ordinal, nominal, de intervalo y de razón'),
(850, 'pensamiento-crtico-como-analizar-que-una-muestra-est-mal-o-con-datos-engaoso', 'Pensamiento crítico, como analizar que una muestra está mal o con datos engañoso'),
(851, 'estudios-transversales-estudios-retrospectivos-y-estudios-prospectivos', 'Estudios transversales, estudios retrospectivos y estudios prospectivos'),
(852, 'tema-en-general-de-la-unidad', 'Tema en general de la unidad'),
(853, 'distribucion-de-frecuencias-simples', 'Distribucion de frecuencias simples'),
(854, 'distribucion-de-frecuencias-relativas-y-acumuladas', 'Distribucion de frecuencias relativas y acumuladas'),
(855, 'distribucion-de-frecuencias-porcentuales', 'Distribucion de frecuencias porcentuales'),
(856, 'histogramas', 'Histogramas'),
(857, 'ojivas-menos-que-y-ms-que', 'Ojivas, menos que y más que'),
(858, 'graficas-de-puntos', 'Graficas de puntos'),
(859, 'graficas-de-pareto', 'Graficas de pareto'),
(860, 'grafica-de-tallo-y-hoja', 'Grafica de tallo y hoja'),
(861, 'poligono-de-frecuencias', 'Poligono de frecuencias'),
(862, 'tabulaciones-cruzadas', 'Tabulaciones cruzadas'),
(863, 'pensamiento-crtico-para-juzgar-una-grfica', 'Pensamiento crítico para juzgar una gráfica'),
(864, 'creacion-de-graficas-propias', 'Creacion de graficas propias'),
(865, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(866, 'media-simplearitmtica', 'Media simple(aritmética)'),
(867, 'media-recortada', 'Media recortada'),
(868, 'media-armnica', 'Media armónica'),
(869, 'media-geomtrica', 'Media geométrica'),
(870, 'media-ponderada', 'Media ponderada'),
(871, 'media-de-distribucin-de-frecuencias', 'Media de distribución de frecuencias'),
(872, 'mediana-y-posicin-de-la-mediana', 'Mediana y posición de la mediana'),
(873, 'mediana-de-una-distribucin-de-frecuencias', 'Mediana de una distribución de frecuencias'),
(874, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(875, 'rango-de-un-conjunto-de-datos', 'Rango de un conjunto de datos'),
(876, 'desviacion-estndar-de-una-muestra', 'Desviacion estándar de una muestra'),
(877, 'desviacion-estndar-de-una-poblacin', 'Desviacion estándar de una población'),
(878, 'varianza-de-una-muestra-y-una-poblacin', 'Varianza de una muestra y una población'),
(879, 'regla-prctica-del-intervalo', 'Regla práctica del intervalo'),
(880, 'regla-emprica-para-datos-con-distribucin-normal', 'Regla empírica para datos con distribución normal'),
(881, 'teorema-de-chebyshev', 'Teorema de Chebyshev'),
(882, 'desviacion-media-absoluta', 'Desviacion media absoluta'),
(883, 'coeficiente-de-variacin', 'Coeficiente de variación'),
(884, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(885, 'puntuaciones-z-valores-frecuentes-y-no-frecuentes', 'Puntuaciones Z, valores frecuentes y no frecuentes'),
(886, 'cuartiles-y-percentiles', 'Cuartiles y percentiles'),
(887, 'graficas-de-cuadro', 'Graficas de cuadro'),
(888, 'valores-extremos', 'Valores extremos'),
(889, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(890, 'diagramas-de-rbol', 'Diagramas de árbol'),
(891, 'coordinaciones', 'Coordinaciones'),
(892, 'permutaciones-simples-y-factoriales', 'Permutaciones simples y factoriales'),
(893, 'permutaciones-circulares', 'Permutaciones circulares'),
(894, 'coombinaciones', 'Coombinaciones'),
(895, 'varios-ejercicios-de-probabilidad-y-conteo', 'Varios ejercicios de probabilidad y conteo'),
(896, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(897, 'eventos-y-espacio-muestral', 'Eventos y espacio muestral'),
(898, 'conjuntos-unin-interseccin-diferencia-y-complemento', 'Conjuntos, unión, intersección, diferencia y complemento'),
(899, 'probabilidad-terica', 'Probabilidad teórica'),
(900, 'probabilidad-y-ley-de-los-grandes-nmeros', 'Probabilidad y ley de los grandes números'),
(901, 'probabilidad-no-a-eventos-complementarios', 'Probabilidad no A, eventos complementarios'),
(902, 'probabilidad-a-o-b-regla-de-la-suma', 'Probabilidad A o B, regla de la suma'),
(903, 'eventos-mutuamente-excluyentes-sucesos-disjuntos', 'Eventos mutuamente excluyentes, sucesos disjuntos'),
(904, 'probabilidad-a-y-b-eventos-independientes-y-regla-de-la-suma', 'Probabilidad A y B, eventos independientes y regla de la suma'),
(905, 'probabilidad-a-dado-b-eventos-dependientes-relacin-probabilidad-a-y-b-y-rm', 'Probabilidad A dado B, eventos dependientes, relación probabilidad A y B y RM'),
(906, 'teorema-de-bayes', 'Teorema de Bayes'),
(907, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(908, 'variable-aleatoria-y-concepto-de-funcin-de-probabilidad', 'Variable aleatoria y concepto de función de probabilidad'),
(909, 'distribucin-de-una-variable-aleatoria-discreta', 'Distribución de una variable aleatoria discreta'),
(910, 'distribucin-acumulada', 'Distribución acumulada'),
(911, 'esperanza-o-media-de-una-variable-aleatoria-discreta', 'Esperanza o media de una variable aleatoria discreta'),
(912, 'concepto-de-distribucin-de-probabilidad-binomial', 'Concepto de distribución de probabilidad binomial'),
(913, 'media-de-la-distribucin-de-probabilidad-binomial', 'Media de la distribución de probabilidad binomial'),
(914, 'desviacin-y-varianza-de-la-distribucin-de-probabilidad-binomial', 'Desviación y varianza de la distribución de probabilidad binomial'),
(915, 'distribucin-de-poisson-y-aplicaciones', 'Distribución de poisson y aplicaciones'),
(916, 'distribucin-de-probabilidad-hipergeometrica', 'Distribución de probabilidad hipergeometrica'),
(917, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(918, 'distribucin-uniforme-de-probabilidad', 'Distribución uniforme de probabilidad'),
(919, 'concepto-de-distribucin-de-probabilidades-normales', 'Concepto de distribución de probabilidades normales'),
(920, 'la-distribucin-normal-estndar-y-sus-aplicaciones', 'La distribución normal estándar y sus aplicaciones'),
(921, 'aproximacin-a-la-binomial', 'Aproximación a la binomial'),
(922, 'distribucin-exponencial-de-probabilidad', 'Distribución exponencial de probabilidad'),
(923, 'factor-de-correccin-por-continuidad', 'Factor de corrección por continuidad'),
(924, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(925, 'consejos-a-la-hora-de-preparar-una-muestra', 'Consejos a la hora de preparar una muestra'),
(926, 'muestreo-aleatorio-simple', 'Muestreo aleatorio simple'),
(927, 'muestreo-aleatorio-sistemtico', 'Muestreo aleatorio sistemático'),
(928, 'muestreo-aleatorio-estatificado', 'Muestreo aleatorio estatificado'),
(929, 'muestreo-aleatorio-por-racimos-o-conglomerados', 'Muestreo aleatorio por racimos o conglomerados'),
(930, 'muestreo-de-etapas-mltiples', 'Muestreo de etapas múltiples'),
(931, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(932, 'distribucin-muestral-de-proporciones', 'Distribución muestral de proporciones'),
(933, 'distribucin-muestral-de-medias-y-teorema-lc', 'Distribución muestral de medias y teorema LC'),
(934, 'distribucin-de-frecuencias-muestrales', 'Distribución de frecuencias muestrales'),
(935, 'distribucin-de-diferencias-y-sumas', 'Distribución de diferencias y sumas'),
(936, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(937, 'que-es-la-estimacin-de-parmetros', 'Que es la estimación de parámetros'),
(938, 'estimados-sesgados-insesgados-y-eficientes-y-puntuales', 'Estimados sesgados, insesgados y eficientes y puntuales'),
(939, 'estimador-puntual-en-la-proporcin-poblacional', 'Estimador puntual en la proporción poblacional'),
(940, 'intervalo-de-confianza-y-niveles-de-confianza', 'Intervalo de confianza y niveles de confianza'),
(941, 'intervalo-de-confianza-unilateral-en-la-estimacin-de-la-proporcin', 'Intervalo de confianza unilateral en la estimación de la proporción'),
(942, 'valores-crticos-en-la-estimacin-de-la-proporcin', 'Valores críticos en la estimación de la proporción'),
(943, 'margen-de-error-en-la-estimacin-de-la-proporcin', 'Margen de error en la estimación de la proporción'),
(944, 'determinacin-del-tamao-muestral-en-la-estimacin-de-la-proporcin', 'Determinación del tamaño muestral en la estimación de la proporción'),
(945, 'pruebas-de-hiptesis-para-la-estimacin-de-la-proporcin-de-una-poblacin', 'Pruebas de hipótesis para la estimación de la proporción de una población'),
(946, 'estadstico-de-prueba-para-la-proporcin', 'Estadístico de prueba para la proporción'),
(947, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(948, 'intervalo-de-confianza-para-la-media-mu', 'Intervalo de confianza para la media mu'),
(949, 'intervalo-de-confianza-con-factor-de-correccin-para-poblacin-finita', 'Intervalo de confianza con factor de corrección para población finita'),
(950, 'error-mximo-de-estimacin-para-la-media-mu', 'Error máximo de estimación para la media mu'),
(951, 'tamao-de-la-muestra-para-estimacin-mu', 'Tamaño de la muestra para estimación mu'),
(952, 'tamao-de-la-muestra-con-factor-de-correccin-para-poblacin-finita', 'Tamaño de la muestra con factor de corrección para población finita'),
(953, 'prueba-de-hiptesis-de-media-mu-con-sigma-conocida', 'Prueba de hipótesis de media mu con sigma conocida'),
(954, 'estadstico-de-prueba-para-la-media', 'Estadístico de prueba para la media'),
(955, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(956, 'distribucin-de-t-student', 'Distribución de t student'),
(957, 'grados-de-confianza', 'Grados de confianza'),
(958, 'margen-de-error-para-estimar-la-media-mu-con-sigma-desconocida', 'Margen de error para estimar la media mu con sigma desconocida'),
(959, 'prueba-de-hiptesis-media-mu-con-sigma-desconocida', 'Prueba de hipótesis media mu con sigma desconocida'),
(960, 'estadstico-de-prueba', 'Estadístico de prueba'),
(961, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(962, 'distribucin-chi-cuadradadauso-y-propiedad', 'Distribución chi cuadradada(uso y propiedad)'),
(963, 'estimadores-de-la-varianza-poblacional', 'Estimadores de la varianza poblacional'),
(964, 'determinacin-del-tamao-de-la-muestra-para-estimar-la-varianza-poblacional', 'Determinación del tamaño de la muestra para estimar la varianza poblacional'),
(965, 'prueba-de-hiptesis-respecto-a-la-varianza-poblacional', 'Prueba de hipótesis respecto a la varianza poblacional'),
(966, 'estadstico-de-prueba', 'Estadístico de prueba'),
(967, 'calculo-con-valores-crticos', 'Calculo con valores críticos'),
(968, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(969, 'nocin-de-lmites', 'Noción de límites'),
(970, 'regla-de-la-constante-suma-resta-y-multiplicacin', 'Regla de la constante, suma, resta y multiplicación'),
(971, 'limites-de-funciones-racionales', 'Limites de funciones racionales'),
(972, 'limites-que-incluyen-radicales', 'Limites que incluyen radicales'),
(973, 'limites-unilaterales', 'Limites unilaterales'),
(974, 'limites-bilaterales', 'Limites bilaterales'),
(975, 'limites-cuando-la-variable-tiende-a-infinito', 'Limites cuando la variable tiende a infinito'),
(976, 'final-de-una-funcin', 'Final de una función'),
(977, 'limites-de-funciones-definidas-por-partes', 'Limites de funciones definidas por partes'),
(978, 'limites-definicin-psilon-delta', 'Limites definición Épsilon-Delta'),
(979, 'limites-de-funciones-trigonomtricas', 'Limites de funciones trigonométricas'),
(980, 'limites-de-funciones-trigonomtricas-inversas', 'Limites de funciones trigonométricas inversas'),
(981, 'limites-de-funciones-logartmicas-y-exponenciales', 'Limites de funciones logarítmicas y exponenciales'),
(982, 'continuidad', 'Continuidad'),
(983, 'continuidad-de-funciones-trigonomtricas', 'Continuidad de funciones trigonométricas'),
(984, 'teorema-del-valor-intermedio', 'Teorema del valor intermedio'),
(985, 'temas-y-ejercicios-en-general-de-la-unidad', 'Temas y ejercicios en general de la unidad'),
(986, 'el-problema-de-las-rectas-tangentes', 'El problema de las rectas tangentes'),
(987, 'mtodo-de-los-4-pasos', 'Método de los 4 pasos'),
(988, 'demostracin-de-las-reglas-bsicas-de-derivacin-algebraica', 'Demostración de las reglas básicas de derivación algebraica'),
(989, 'regla-de-la-cadena', 'Regla de la cadena'),
(990, 'derivadas-sucesivas-de-una-funcin', 'Derivadas sucesivas de una función'),
(991, 'temas-y-ejercicios-en-general-de-la-unidad', 'Temas y ejercicios en general de la unidad'),
(992, 'demostracin-de-las-derivadas-de-funciones-trigonomtricas-directas', 'Demostración de las derivadas de funciones trigonométricas directas'),
(993, 'aplicaciones-de-las-derivadas-de-funciones-trigonomtricas-directas', 'Aplicaciones de las derivadas de funciones trigonométricas directas'),
(994, 'varios-ejercicios', 'Varios ejercicios'),
(995, 'demostracin-de-las-derivadas-de-funciones-trigonomtricas-inversas', 'Demostración de las derivadas de funciones trigonométricas inversas'),
(996, 'aplicaciones-de-las-derivadas-de-funciones-trigonomtricas-inversas', 'Aplicaciones de las derivadas de funciones trigonométricas inversas'),
(997, 'varios-ejercicios', 'Varios ejercicios'),
(998, 'demostracin-de-las-derivadas-de-funciones-exponenciales', 'Demostración de las derivadas de funciones exponenciales'),
(999, 'demostracin-de-las-derivadas-de-funciones-logartmicas', 'Demostración de las derivadas de funciones logarítmicas'),
(1000, 'aplicaciones-de-las-derivadas-de-funciones-exponenciales-y-logartmicas', 'Aplicaciones de las derivadas de funciones exponenciales y logarítmicas'),
(1001, 'varios-ejercicios', 'Varios ejercicios'),
(1002, 'razones-de-cambio', 'Razones de cambio'),
(1003, 'razones-relacionadas', 'Razones relacionadas'),
(1004, 'varios-ejercicios', 'Varios ejercicios'),
(1005, 'aproximacion-local', 'Aproximacion local'),
(1006, 'incremetos-decrementos-y-concavidad', 'Incremetos, decrementos y concavidad'),
(1007, 'puntos-de-inflexin', 'Puntos de inflexión'),
(1008, 'maximos-y-mnimos-relativos', 'Maximos y mínimos relativos'),
(1009, 'multiplicidad', 'Multiplicidad'),
(1010, 'maximos-y-mnimos-absolutos', 'Maximos y mínimos absolutos'),
(1011, 'teorema-del-rolle', 'Teorema del Rolle'),
(1012, 'teorema-del-valor-medio', 'Teorema del valor medio'),
(1013, 'teorema-del-valor-medio-de-cauchy', 'Teorema del valor medio de Cauchy'),
(1014, 'teorema-de-la-diferencia-constante', 'Teorema de la diferencia constante'),
(1015, 'temas-y-ejercicios-en-general-de-la-unidad', 'Temas y ejercicios en general de la unidad'),
(1016, 'que-es-la-integracin', 'Que es la integración'),
(1017, 'reglas-bsicas-de-integracin-de-funciones-algebraicas', 'Reglas básicas de integración de funciones algebraicas'),
(1018, 'integracin-de-funciones-compuestas', 'Integración de funciones compuestas'),
(1019, 'constante-de-integracin', 'Constante de integración'),
(1020, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(1021, 'sumas-de-riemann-y-el-clculo-del-rea-mediante-sumas', 'Sumas de Riemann y el cálculo del área mediante sumas'),
(1022, 'ejercicios-y-propiedades-de-las-integrales-definidas', 'Ejercicios y propiedades de las integrales definidas'),
(1023, 'ejercicios-de-reas-mediante-integracin-definida', 'Ejercicios de Áreas mediante integración definida'),
(1024, 'ejercicios-de-integrales-con-funciones-como-lmites-de-integracin', 'Ejercicios de integrales con funciones como límites de integración'),
(1025, 'ejercicios-y-propiedades-de-las-integrales-impropias', 'Ejercicios y propiedades de las integrales impropias'),
(1026, 'discontinuidades-e-integrabilidad', 'Discontinuidades e integrabilidad'),
(1027, 'funciones-logartmicas-definidas-por-integrales', 'Funciones logarítmicas definidas por integrales'),
(1028, 'funcin-error', 'Función error'),
(1029, 'funciones-seno-y-coseno-de-fresnel', 'Funciones seno y coseno de Fresnel'),
(1030, 'funciones-elpticas', 'Funciones elípticas'),
(1031, 'teorema-del-valor-medio-para-integrales', 'Teorema del valor medio para integrales'),
(1032, 'mtodos-numricos-regla-de-simpson', 'Métodos Numéricos Regla de Simpson'),
(1033, 'temas-y-ejercicios-en-general-de-la-unidad', 'Temas y ejercicios en general de la unidad'),
(1034, 'volmenes-por-rebanadas', 'Volúmenes por rebanadas'),
(1035, 'volmenes-por-discos', 'Volúmenes por discos'),
(1036, 'mtodo-de-las-arandelas', 'Método de las arandelas'),
(1037, 'mtodo-de-cascarones-cilndricos', 'Método de cascarones cilíndricos'),
(1038, 'temas-y-ejercicios-en-general-de-la-unidad', 'Temas y ejercicios en general de la unidad'),
(1039, 'definicin-de-pi-por-medio-de-integrales', 'Definición de pi por medio de integrales'),
(1040, 'longitud-de-curvas', 'Longitud de curvas'),
(1041, 'calculo-del-rea-en-coordenadas-polares', 'Calculo del área en coordenadas polares'),
(1042, 'rea-de-una-superficie-de-revolucin', 'Área de una superficie de revolución'),
(1043, 'funciones-hiperblicas-y-calculo-integral', 'Funciones hiperbólicas y calculo integral'),
(1044, 'temas-y-ejercicios-en-general-de-la-unidad', 'Temas y ejercicios en general de la unidad'),
(1045, 'algebra-y-propiedades-de-las-funciones-de-2-o-mas-variables', 'Algebra y propiedades de las funciones de 2 o mas variables'),
(1046, 'graficas-de-funciones-de-2-variables', 'Graficas de funciones de 2 variables'),
(1047, 'superficies-de-nivel', 'Superficies de nivel'),
(1048, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(1049, 'limites-a-lo-largo-de-curvas', 'Limites a lo largo de curvas'),
(1050, 'discos-abiertos-y-cerrados-bola-abierta-y-cerrada-puntos-y-fronteras', 'Discos abiertos y cerrados, bola abierta y cerrada, puntos y fronteras'),
(1051, 'evaluacion-de-limites-de-funciones-de-2-variables', 'Evaluacion de limites de funciones de 2 variables'),
(1052, 'evaluacion-de-limites-de-funciones-de-3-variables', 'Evaluacion de limites de funciones de 3 variables'),
(1053, 'continuidad-de-funciones-de-2-variables', 'Continuidad de funciones de 2 variables'),
(1054, 'continuidad-de-funciones-de-3-variables', 'Continuidad de funciones de 3 variables'),
(1055, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(1056, 'definicion-y-propiedades-de-las-integrales-parciales', 'Definicion y propiedades de las integrales parciales'),
(1057, 'evaluacion-de-derivadas-parciales-con-2-variables', 'Evaluacion de derivadas parciales con 2 variables'),
(1058, 'evaluacion-de-derivadas-parciales-con-mas-de-2-variables', 'Evaluacion de derivadas parciales con mas de 2 variables'),
(1059, 'derivadas-parciales-de-orden-superior', 'Derivadas parciales de orden superior'),
(1060, 'derivadas-parciales-implicitas', 'Derivadas parciales implicitas'),
(1061, 'derivadas-parciales-de-funciones-vectoriales', 'Derivadas parciales de funciones vectoriales'),
(1062, 'derivavilidad-en-derivadas-parciales', 'Derivavilidad en derivadas parciales'),
(1063, 'diferenciales-en-derivadas-parciales', 'Diferenciales en derivadas parciales'),
(1064, 'ragla-de-la-cadena-en-derivadas-parciales', 'Ragla de la cadena en derivadas parciales'),
(1065, 'aproximaciones-lineales-locales-en-derivadas-parciales', 'Aproximaciones lineales locales en derivadas parciales'),
(1066, 'razones-relacionadas-en-derivadas-parciales', 'Razones relacionadas en derivadas parciales'),
(1067, 'ecuaciones-de-onda-con-derivadas-parciales', 'Ecuaciones de onda con derivadas parciales'),
(1068, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(1069, 'derivadas-direccionales-y-pendiente-de-la-superficie', 'Derivadas direccionales y pendiente de la superficie'),
(1070, 'el-gradiente-propiedades-y-aplicaciones', 'El gradiente, propiedades y aplicaciones'),
(1071, 'introduccion-a-los-planos-tangentes-a-superficies', 'Introduccion a los planos tangentes a superficies'),
(1072, 'planos-tangentes-y-diferenciales-totales', 'Planos tangentes y diferenciales totales'),
(1073, 'planos-tangentes-a-superficies-de-nivel', 'Planos tangentes a superficies de nivel'),
(1074, 'tengentes-e-intersecciones-de-superficies', 'Tengentes e intersecciones de superficies'),
(1075, 'temas-en-general-de-la-uniad', 'Temas en general de la uniad'),
(1076, 'conjuntos-acotados-y-no-acotados', 'Conjuntos acotados y no acotados'),
(1077, 'puntos-criticos-y-puntos-silla', 'Puntos criticos y puntos silla'),
(1078, 'criterio-de-las-segundas-derivadas-parciales', 'Criterio de las segundas derivadas parciales'),
(1079, 'maximos-y-minimos-absolutos-de-funciones-multidependientes', 'Maximos y minimos absolutos de funciones multidependientes'),
(1080, 'maximos-y-minimos-relativos-de-funciones-multidependientes', 'Maximos y minimos relativos de funciones multidependientes'),
(1081, 'matriz-y-determinante-hessiana', 'Matriz y determinante hessiana'),
(1082, 'problemas-de-optimizacion-de-funciones-multidependientes', 'Problemas de optimizacion de funciones multidependientes'),
(1083, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(1084, 'maximos-y-minimos-absolutos-restringidos', 'Maximos y minimos absolutos restringidos'),
(1085, 'maximos-y-minimos-relativos-restringidos', 'Maximos y minimos relativos restringidos'),
(1086, 'definicion-y-propiedades-del-multiplicador-de-lagrange', 'Definicion y propiedades del multiplicador de lagrange'),
(1087, 'problemas-de-optimizacion-restringida-y-uso-de-los-multiplicadores-de-lagrange', 'Problemas de optimizacion restringida y uso de los multiplicadores de lagrange'),
(1088, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(1089, 'origen-y-definicion-de-las-integrales-dobles-el-problema-del-volumen-bajo-la-superficie', 'Origen y definicion de las integrales dobles, el problema del volumen bajo la superficie'),
(1090, 'evaluacion-de-integrales-parciales', 'Evaluacion de integrales parciales'),
(1091, 'evaluacion-dde-integrales-dobles-y-calculo-del-area-bajo-la-superficie', 'Evaluacion dde integrales dobles y calculo del area bajo la superficie'),
(1092, 'evaluacion-de-integrales-dobles-con-limites-de-integracion-no-constantes', 'Evaluacion de integrales dobles con limites de integracion no constantes'),
(1093, 'calculo-del-volumen-bajo-la-superficie-con-regiones-no-rectangulares', 'Calculo del volumen bajo la superficie con regiones no rectangulares'),
(1094, 'inversion-del-orden-de-integracion', 'Inversion del orden de integracion'),
(1095, 'calculo-de-areas-de-integracion', 'Calculo de areas de integracion'),
(1096, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(1097, 'region-polar-simple-y-rectangulo-polar', 'Region polar simple y rectangulo polar'),
(1098, 'sumas-de-riemann-polares', 'Sumas de Riemann polares'),
(1099, 'integrales-dobles-en-coordenadas-polares-evaluacion-y-calculo-del-area-bajo-la-superficie', 'Integrales dobles en coordenadas polares, evaluacion y calculo del area bajo la superficie'),
(1100, 'calculo-del-area-utilizando-coordenas-polares', 'Calculo del area utilizando coordenas polares'),
(1101, 'conversion-de-integrales-dobles-de-coordenas-rectangulares-a-coordenas-polares', 'Conversion de integrales dobles de coordenas rectangulares a coordenas polares'),
(1102, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(1103, 'definicion-propiedades-y-generacion-de-superficies-parametricas', 'Definicion, propiedades y generacion de superficies parametricas'),
(1104, 'funciones-vectoriales-de-2-variables-y-superficies-parametricas', 'Funciones vectoriales de 2 variables y superficies parametricas'),
(1105, 'planos-tangentes-a-superficies-parametricas', 'Planos tangentes a superficies parametricas'),
(1106, 'areas-de-superficies-parametricas', 'Areas de superficies parametricas'),
(1107, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(1108, 'definicion-y-propiedades-de-las-integrales-triples', 'Definicion y propiedades de las integrales triples'),
(1109, 'evaluacion-de-integrales-triples-sobre-cajas-rectangulares', 'Evaluacion de integrales triples sobre cajas rectangulares'),
(1110, 'evaluacion-de-integrales-triples-sobre-regiones-generales', 'Evaluacion de integrales triples sobre regiones generales'),
(1111, 'aplicaciones-de-las-integrales-triples-a-los-centros-de-gravedad', 'Aplicaciones de las integrales triples a los centros de gravedad'),
(1112, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(1113, 'integrales-triples-en-coordenas-cilindricas', 'Integrales triples en coordenas cilindricas'),
(1114, 'conversion-de-integrales-triples-en-coordenas-rectangulares-a-coordenas-cilindricas', 'Conversion de integrales triples en coordenas rectangulares a coordenas cilindricas'),
(1115, 'integrales-triples-en-coordenas-esfericas', 'Integrales triples en coordenas esfericas'),
(1116, 'conversion-de-integrales-triples-de-coordenas-rectangulares-a-coordenas-esfericas', 'Conversion de integrales triples de coordenas rectangulares a coordenas esfericas'),
(1117, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(1118, 'jacobiano-en-integrales', 'Jacobiano en integrales'),
(1119, 'transformaciones-del-plano', 'Transformaciones del plano'),
(1120, 'cambio-de-variables-en-integrales-dobles', 'Cambio de variables en integrales dobles'),
(1121, 'cambio-de-variables-en-integrales-triples', 'Cambio de variables en integrales triples'),
(1122, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(1123, 'definicion-propiedades-y-graficacin-de-funciones-vectoriales', 'Definicion, propiedades y graficación de funciones vectoriales'),
(1124, 'limites-de-funciones-vectoriales', 'Limites de funciones vectoriales'),
(1125, 'continuidad-de-funciones-vectoriales', 'Continuidad de funciones vectoriales'),
(1126, 'derivadas-de-funciones-vectoriales-definicion-y-significado-geomtrico', 'Derivadas de funciones vectoriales, definicion y significado geométrico'),
(1127, 'funciones-vectoriales-de-2-variables', 'Funciones vectoriales de 2 variables'),
(1128, 'derivadas-parciales-de-funciones-vectoriales', 'Derivadas parciales de funciones vectoriales'),
(1129, 'diferenciales-de-funciones-vectoriales', 'Diferenciales de funciones vectoriales'),
(1130, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(1131, 'vectores-tangente', 'Vectores tangente'),
(1132, 'vectores-normales', 'Vectores normales'),
(1133, 'vectores-binormales', 'Vectores binormales'),
(1134, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(1135, 'definicion-y-propiedades-y-formulas-de-la-curvatura', 'Definicion y propiedades y formulas de la curvatura'),
(1136, 'aplicaciones-al-movimiento-de-la-curvatura', 'Aplicaciones al movimiento de la curvatura'),
(1137, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(1138, 'definicion-propiedades-y-graficas-de-las-campos-vectoriales', 'Definicion, propiedades y graficas de las campos vectoriales'),
(1139, 'campos-del-inverso-cuadrado', 'Campos del inverso cuadrado'),
(1140, 'campos-conservativos-y-funciones-de-potencial', 'Campos conservativos y funciones de potencial'),
(1141, 'campos-gradiente', 'Campos gradiente'),
(1142, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(1143, 'el-operador-nabla-en-coordenadas-cartesianas', 'El operador nabla en coordenadas cartesianas'),
(1144, 'el-operador-nabla-en-coordenadas-cilindricas-y-esfericas', 'El operador nabla en coordenadas cilindricas y esfericas'),
(1145, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(1146, 'operador-lapciano', 'Operador Lapciano'),
(1147, 'ecuacion-de-laplace', 'Ecuacion de laplace'),
(1148, 'temas-en-general-de-la-unida', 'Temas en general de la unida'),
(1149, 'nocion-del-teorema-de-la-divergencia', 'Nocion del teorema de la divergencia'),
(1150, 'difinicion-propiedades-y-demostracion-del-teorema-de-la-divergencia', 'Difinicion, propiedades y demostracion del teorema de la divergencia'),
(1151, 'uso-y-aplicaciones-del-teorema-de-la-', 'Uso y aplicaciones del teorema de la '),
(1152, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(1153, 'definicion-y-propiedades-del-rotacional', 'Definicion y propiedades del rotacional'),
(1154, 'campos-rotacional-e-irrotacionales', 'Campos rotacional e irrotacionales'),
(1155, 'uso-y-aplicaciones-del-rotacional', 'Uso y aplicaciones del rotacional'),
(1156, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(1157, 'definicion-y-propiedades-de-las-integrales-de-linea', 'Definicion y propiedades de las integrales de linea'),
(1158, 'evaluacion-de-integrales-de-linea-dependientes-de-la-trayectoria', 'Evaluacion de integrales de linea dependientes de la trayectoria'),
(1159, 'evaluacion-de-integrales-de-linea-independientes-de-la-trayectoria', 'Evaluacion de integrales de linea independientes de la trayectoria'),
(1160, 'integrales-de-linea-y-campos-vectoriales-conservativos', 'Integrales de linea y campos vectoriales conservativos'),
(1161, 'integrales-de-linea-a-lo-largo-de-curvas-por-partes', 'Integrales de linea a lo largo de curvas por partes'),
(1162, 'fisica-e-integrales-de-linea', 'Fisica e integrales de linea'),
(1163, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(1164, 'definicion-propiedades-y-demostracion-del-teorema-de-green', 'Definicion, propiedades y demostracion del Teorema de Green'),
(1165, 'teorema-de-green-para-regiones-multiplemente-conexas', 'Teorema de green para regiones multiplemente conexas'),
(1166, 'uso-y-aplicaciones-del-teorema-de-green', 'Uso y aplicaciones del teorema de Green'),
(1167, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(1168, 'definicion-propiedades-y-demostracion-del-teorema-de-stokes', 'Definicion, propiedades y demostracion del teorema de Stokes'),
(1169, 'uso-y-aplicaciones-del-teorema-de-stokes', 'Uso y aplicaciones del teorema de Stokes'),
(1170, 'el-rotacional-y-el-teorema-de-stokes', 'El rotacional y el teorema de Stokes'),
(1171, 'relacion-entre-los-teoremas-de-green-y-stokes', 'Relacion entre los teoremas de Green y Stokes'),
(1172, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(1173, 'parametrizacion-de-superficies', 'Parametrizacion de superficies'),
(1174, 'definicion-y-propiedades-de-las-integrales-de-superficie', 'Definicion y propiedades de las integrales de superficie');
INSERT INTO `tm_limpias` (`id_tml`, `tm_limpia`, `tm_sucia`) VALUES
(1175, 'evaluacion-de-integrales-de-superficie', 'Evaluacion de integrales de superficie'),
(1176, 'aplicaciones-de-flujo-e-integrales-de-flujo', 'Aplicaciones de flujo e integrales de flujo'),
(1177, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(1178, 'definicion-de-una-matriz', 'Definicion de una matriz'),
(1179, 'matriz-cuadradada', 'Matriz cuadradada'),
(1180, 'matriz-diagonal', 'Matriz diagonal'),
(1181, 'matriz-escalar', 'Matriz escalar'),
(1182, 'identidad', 'identidad'),
(1183, 'matriz-triangular', 'Matriz triangular'),
(1184, 'matriz-indepotente', 'Matriz indepotente'),
(1185, 'matriz-conmutable', 'Matriz conmutable'),
(1186, 'matriz-nilpotente', 'Matriz nilpotente'),
(1187, 'matriz-involutiva', 'Matriz involutiva'),
(1188, 'rango-y-nulidad-de-una-matriz', 'Rango y nulidad de una matriz'),
(1189, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(1190, 'propiedades-y-evaluacin-de-una-matriz-por-un-escalar', 'Propiedades y evaluación de una matriz por un escalar'),
(1191, 'propiedades-y-evaluacin-de-la-suma-de-matrices', 'Propiedades y evaluación de la suma de matrices'),
(1192, 'propiedades-y-evaluacin-de-la-multiplicacin-de-matrices', 'Propiedades y evaluación de la multiplicación de matrices'),
(1193, 'matrices-particionadas', 'Matrices particionadas'),
(1194, 'potencias-de-matrices', 'Potencias de matrices'),
(1195, 'matrices-y-solucin-sistemas-de-ecuaciones-lineales', 'Matrices y solución sistemas de ecuaciones lineales'),
(1196, 'mtodos-iterativos-para-resolver-matrices', 'Métodos iterativos para resolver matrices'),
(1197, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(1198, 'evaluacin-y-propiedades-de-una-matriz-inversa', 'Evaluación y propiedades de una matriz inversa'),
(1199, 'matrices-elementales', 'Matrices elementales'),
(1200, 'el-mtodo-de-gauss-jordan-para-calcular-la-inversa', 'El método de Gauss-Jordan para calcular la inversa'),
(1201, 'solucin-de-sistemas-de-ecuaciones-en-trminos-de-la-matriz-inversa', 'Solución de sistemas de ecuaciones en términos de la matriz inversa'),
(1202, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(1203, 'matriz-simtrica', 'Matriz simétrica'),
(1204, 'propiedades-y-evaluacin-de-la-transpuesta', 'Propiedades y evaluación de la transpuesta'),
(1205, 'matriz-adjunta', 'Matriz adjunta'),
(1206, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(1207, 'evaluacin-y-propiedades-de-la-factorizacin-lu', 'Evaluación y propiedades de la factorización LU'),
(1208, 'matriz-de-permutacin', 'Matriz de permutación'),
(1209, 'evaluacin-y-propiedades-de-la-factorizacin-plu', 'Evaluación y propiedades de la factorización PLU'),
(1210, 'solucin-de-sistemas-de-ecuaciones-utilizando-factorizacin-de-matrices', 'Solución de sistemas de ecuaciones utilizando factorización de matrices'),
(1211, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(1212, 'definicin-y-propiedades-de-los-determinantes', 'Definición y propiedades de los determinantes'),
(1213, 'evaluacin-bsica-de-determinantes', 'Evaluación básica de determinantes'),
(1214, 'unicidad-del-determinante', 'Unicidad del determinante'),
(1215, 'teorema-de-expansin-de-laplace', 'Teorema de expansión de Laplace'),
(1216, 'desarrollo-por-cofactores', 'Desarrollo por cofactores'),
(1217, 'determinates-de-matrices-elementales', 'Determinates de matrices elementales'),
(1218, 'determinates-de-matrices-triangulares', 'Determinates de matrices triangulares'),
(1219, 'determinates-de-matrices-transpuestas', 'Determinates de matrices transpuestas'),
(1220, 'mas-sobre-determinantes-y-matrices', 'Mas sobre determinantes y matrices'),
(1221, 'operaciones-matriciales-bsicas-y-determinantes', 'Operaciones matriciales básicas y determinantes'),
(1222, 'la-regla-de-cramer', 'La regla de Cramer'),
(1223, 'metodo-de-condensacin-de-lewis-carroll', 'Metodo de condensación de Lewis-Carroll'),
(1224, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(1225, 'producto-cruz-y-determinantes', 'Producto cruz y determinantes'),
(1226, 'area-volumen-y-determinantes', 'Area, volumen y determinantes'),
(1227, 'ajustes-de-curvas-y-determinantes', 'Ajustes de curvas y determinantes'),
(1228, 'determinates-en-las-telecomunicaciones', 'Determinates en las telecomunicaciones'),
(1229, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(1230, 'definicin-y-propiedades-del-espacio-vectorial', 'Definición y propiedades del espacio vectorial'),
(1231, 'definicin-y-propiedades-del-espacio-vectorial-trivial', 'Definición y propiedades del espacio vectorial trivial'),
(1232, 'definicin-y-propiedades-del-subespacio', 'Definición y propiedades del subespacio'),
(1233, 'definicin-y-propiedades-del-subespacio-trivial', 'Definición y propiedades del subespacio trivial'),
(1234, 'subespacio-propio', 'Subespacio propio'),
(1235, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(1236, 'definicin-propiedades-y-evaluacin-de-las-combinaciones-lineales', 'Definición, propiedades y evaluación de las combinaciones lineales'),
(1237, 'el-conjunto-generador', 'El conjunto generador'),
(1238, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(1239, 'definicin-y-propiedades-de-la-base', 'Definición y propiedades de la base'),
(1240, 'definicin-y-propiedades-de-la-dimensin', 'Definición y propiedades de la dimensión'),
(1241, 'la-base-cannica', 'La base canónica'),
(1242, 'cambios-de-base-y-matriz-de-transicin', 'Cambios de base y matriz de transición'),
(1243, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(1244, 'definicin-propiedades-y-evaluacin-bsica-de-transformaciones-lineales', 'Definición, propiedades y evaluación básica de transformaciones lineales'),
(1245, 'transformacin-cero', 'Transformación cero'),
(1246, 'transformacin-identidad', 'Transformación identidad'),
(1247, 'transformacin-de-reflexin', 'Transformación de reflexión'),
(1248, 'transformacin-de-rotacin', 'Transformación de rotación'),
(1249, 'transformacin-de-proyeccin-ortogonal', 'Transformación de proyección ortogonal'),
(1250, 'operador-de-transposicin', 'Operador de transposición'),
(1251, 'ejemplos-de-transformaciones-no-lineales', 'Ejemplos de transformaciones no lineales'),
(1252, 'nulidad-rango-y-kernel-de-una-transformacin-lineal', 'Nulidad, rango y Kernel de una transformación lineal'),
(1253, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(1254, 'matriz-de-transformacin', 'Matriz de transformación'),
(1255, 'geometria-de-las-transformaciones-lineales-expansiones-comprensiones-reflexiones-y-cortes', 'Geometria de las transformaciones lineales, expansiones, comprensiones, reflexiones y cortes'),
(1256, 'descomposicin-de-una-transposicin-lineal', 'Descomposición de una transposición lineal'),
(1257, 'transformaciones-lineales-compuestas', 'Transformaciones lineales compuestas'),
(1258, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(1259, 'definicin-propiedades-y-evaluacin-de-isometras', 'Definición, propiedades y evaluación de isometrías'),
(1260, 'espacios-vectoriales-isomorfos', 'Espacios vectoriales isomorfos'),
(1261, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(1262, 'concepto-propiedades-y-evaluacin-bsica-de-valores-y-vectores-caractersticos', 'Concepto, propiedades y evaluación básica de valores y vectores característicos'),
(1263, 'espacio-caracterstico', 'Espacio característico'),
(1264, 'polinomio-caracterstico', 'Polinomio característico'),
(1265, 'ecuacin-caracterstica', 'Ecuación característica'),
(1266, 'valores-y-vectores-caractersticos-de-una-matriz-cuadradada', 'Valores y vectores característicos de una matriz cuadradada'),
(1267, 'valores-y-vectores-caractersticos-de-una-matriz-triangular', 'Valores y vectores característicos de una matriz triangular'),
(1268, 'multiplicidad-algebraica-de-un-valor-caracterstico', 'Multiplicidad algebraica de un valor característico'),
(1269, 'multiplicidad-geomtrica-de-un-valor-caracterstico', 'Multiplicidad geométrica de un valor característico'),
(1270, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(1271, 'matrices-diagonizables', 'Matrices diagonizables'),
(1272, 'el-teorema-de-la-diagonalizacin', 'El teorema de la diagonalización'),
(1273, 'matrices-semejantes', 'Matrices semejantes'),
(1274, 'relacin-de-equivalencia', 'Relación de equivalencia'),
(1275, 'el-mtodo-de-la-potencia', 'El método de la potencia'),
(1276, 'valor-caracterstico-dominante', 'Valor característico dominante'),
(1277, 'mtodo-de-potencia-ajustado', 'Método de potencia ajustado'),
(1278, 'mtodo-de-potencia-inverso', 'Método de potencia inverso'),
(1279, 'mtodo-de-potencia-inverso-ajustado', 'Método de potencia inverso ajustado'),
(1280, 'teorema-de-disco-de-geshgorin', 'Teorema de disco de Geshgorin'),
(1281, 'teorema-de-cayley-hamilton', 'Teorema de Cayley-Hamilton'),
(1282, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(1283, 'modelos-de-crecimiento-poblacional-eigenvalores-y-matriz-de-leslie', 'Modelos de crecimiento poblacional, eigenvalores y matriz de leslie'),
(1284, 'cadenas-de-markov-eigenvalores-y-matriz-de-transicin-de-rango-largo', 'Cadenas  de Markov, eigenvalores y matriz de transición de rango largo'),
(1285, 'el-teorema-de-perron-frobenius', 'El teorema de Perron-Frobenius'),
(1286, 'relacin-de-recurrencia-lineal', 'Relación de recurrencia lineal'),
(1287, 'sistemas-de-ecuaciones-diferenciales-y-eigenvalores', 'Sistemas de ecuaciones diferenciales y eigenvalores'),
(1288, 'sistemas-dinmicos-lineales-discretos', 'Sistemas dinámicos lineales discretos'),
(1289, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(1290, 'conjuntos-ortogonales', 'Conjuntos ortogonales'),
(1291, 'base-ortogonal', 'Base ortogonal'),
(1292, 'conjuntos-ortonormales', 'Conjuntos ortonormales'),
(1293, 'base-ortonormales', 'Base ortonormales'),
(1294, 'complemento-ortogonal', 'Complemento ortogonal'),
(1295, 'subespacios-fundamentales', 'Subespacios fundamentales'),
(1296, 'proyeccin-ortogonal-en-rn', 'Proyección ortogonal en Rn'),
(1297, 'norma-de-un-vector-en-rn', 'Norma de un vector en Rn'),
(1298, 'teorema-de-descomposicin-ortogonal', 'Teorema de descomposición ortogonal'),
(1299, 'teorema-de-aproximacin-de-la-norma', 'Teorema de aproximación de la norma'),
(1300, 'proceso-de-ortogonalizacin-de-gram-smidt', 'Proceso de ortogonalización de Gram-Smidt'),
(1301, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(1302, 'definicin-propiedades-y-evaluacin-bsica-de-la-diagonalizacin-ortogonal', 'Definición, propiedades y evaluación básica de la diagonalización ortogonal'),
(1303, 'el-teorema-espectral', 'El teorema espectral'),
(1304, 'descomposicin-espectral-o-forma-de-proyeccin-del-teorema-espectral', 'Descomposición espectral o forma de proyección del teorema espectral'),
(1305, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(1306, 'matriz-de-jordn', 'Matriz de Jordán'),
(1307, 'matriz-de-bloques-de-jordn', 'Matriz de bloques de Jordán'),
(1308, 'forma-cannica-de-jordn', 'Forma canónica de Jordán'),
(1309, 'valor-caracterstico-generalizado', 'Valor característico generalizado'),
(1310, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(1311, 'definicin-propiedades-y-evaluacin-bsica-del-producto-interno', 'Definición, propiedades y evaluación básica del producto interno'),
(1312, 'producto-punto-ponderado', 'Producto punto ponderado'),
(1313, 'bases-ortogonales-y-producto-interno', 'Bases ortogonales y producto interno'),
(1314, 'proyecciones-ortogonales-componente-ortogonal-y-producto-interno', 'Proyecciones ortogonales, componente ortogonal y producto interno'),
(1315, 'polinomios-normalizados-de-lagendre', 'Polinomios normalizados de Lagendre'),
(1316, 'la-desigualdad-de-cauchy-schwarz', 'La desigualdad de Cauchy-Schwarz'),
(1317, 'la-desigualdad-del-tringulo', 'La desigualdad del triángulo'),
(1318, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(1319, 'producto-punto-complejo', 'Producto punto complejo'),
(1320, 'transpuesta-conjugada', 'Transpuesta conjugada'),
(1321, 'matriz-hermitiana', 'Matriz hermitiana'),
(1322, 'matriz-compleja-cuadradada-unitaria', 'Matriz compleja cuadradada unitaria'),
(1323, 'matriz-compleja-cuadradada-diagonizable-unitariamente', 'Matriz compleja cuadradada diagonizable unitariamente'),
(1324, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(1325, 'espacio-lineal-normado', 'Espacio lineal normado'),
(1326, 'norma-suma', 'Norma suma'),
(1327, 'norma-mxima', 'Norma máxima'),
(1328, 'norma-euclidiana', 'Norma euclidiana'),
(1329, 'norma-de-hamming', 'Norma de Hamming'),
(1330, 'norma-matricial', 'Norma matricial'),
(1331, 'norma-de-frobenius', 'Norma de Frobenius'),
(1332, 'operador-norma', 'Operador norma'),
(1333, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad'),
(1334, 'los-valores-singulares-de-una-matriz', 'Los valores singulares de una matriz'),
(1335, 'definicin-propiedades-y-evaluacin-de-la-descomposicin-de-valor-singular', 'Definición, propiedades y evaluación de la descomposición de valor singular'),
(1336, 'valores-singulares-izquierdos-y-derechos', 'Valores singulares izquierdos y derechos'),
(1337, 'forma-del-producto-punto-de-la-dvs', 'Forma del producto punto de la DVS'),
(1338, 'inversa-de-moore-penrose', 'Inversa de Moore Penrose'),
(1339, 'aplicaciones-prcticas-de-la-dvs', 'Aplicaciones prácticas de la DVS'),
(1340, 'temas-en-general-de-la-unidad', 'Temas en general de la unidad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_relacion`
--

CREATE TABLE IF NOT EXISTS `tm_relacion` (
  `id_tmrel` int(11) NOT NULL,
  `id_lprc` int(11) DEFAULT NULL,
  `materia` varchar(30) DEFAULT NULL,
  `unidad` varchar(120) DEFAULT NULL,
  `tema` varchar(120) DEFAULT NULL,
  `ruta` varchar(150) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=137 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tm_relacion`
--

INSERT INTO `tm_relacion` (`id_tmrel`, `id_lprc`, `materia`, `unidad`, `tema`, `ruta`) VALUES
(1, 28, NULL, NULL, NULL, ''),
(2, 28, 'Calculo avanzado', 'Limites y continuidad para funciones de 2 o mas variables', 'Limites a lo largo de curvas', '?un=Limites y continuidad para funciones de 2 o mas variables&tm=Limites a lo largo de curvas'),
(3, 28, 'Calculo avanzado', 'Limites y continuidad para funciones de 2 o mas variables', 'Discos abiertos y cerrados, bola abierta y cerrada, puntos y fronteras', '?un=Limites y continuidad para funciones de 2 o mas variables&tm=Discos abiertos y cerrados, bola abierta y cerrada, puntos y fronteras'),
(4, 36, '--', '', '', '?un='),
(5, 36, 'Calculo integral', 'Introducciï¿½n a la integraciï¿½n', '', '?un=Introducciï¿½n a la integraciï¿½n'),
(6, 39, 'Calculo avanzado', 'Las funciones vectoriales', 'Funciones vectoriales de 2 variables', '?un=Las funciones vectoriales&tm=Funciones vectoriales de 2 variables'),
(7, 41, 'Calculo avanzado', 'Integrales dobles en coordenas polares', 'Region polar simple y rectangulo polar', '?un=Integrales dobles en coordenas polares&tm=Region polar simple y rectangulo polar'),
(8, 41, 'Calculo avanzado', 'Integrales dobles en coordenas polares', 'Integrales dobles en coordenadas polares, evaluacion y calculo del area bajo la superficie', '?un=Integrales dobles en coordenas polares&tm=Integrales dobles en coordenadas polares, evaluacion y calculo del area bajo la superficie'),
(9, 42, 'Calculo avanzado', 'Las funciones vectoriales', 'Limites de funciones vectoriales', '?un=Las funciones vectoriales&tm=Limites de funciones vectoriales'),
(10, 42, 'Calculo avanzado', 'Las funciones vectoriales', 'Derivadas de funciones vectoriales, definicion y significado geomï¿½trico', '?un=Las funciones vectoriales&tm=Derivadas de funciones vectoriales, definicion y significado geomï¿½trico'),
(11, 42, 'Calculo avanzado', 'Las funciones vectoriales', 'Derivadas parciales de funciones vectoriales', '?un=Las funciones vectoriales&tm=Derivadas parciales de funciones vectoriales'),
(12, 42, 'Calculo avanzado', 'Las funciones vectoriales', 'Temas en general de la unidad', '?un=Las funciones vectoriales&tm=Temas en general de la unidad'),
(13, 43, 'Calculo avanzado', 'Curvatura', 'Definicion y propiedades y formulas de la curvatura', '?un=Curvatura&tm=Definicion y propiedades y formulas de la curvatura'),
(14, 45, 'Calculo avanzado', 'Campos vectoriales', 'Definicion, propiedades y graficas de las campos vectoriales', '?un=Campos vectoriales&tm=Definicion, propiedades y graficas de las campos vectoriales'),
(15, 47, 'Calculo avanzado', 'Funciones de dos o mas variables', '', '?un=Funciones de dos o mas variables'),
(16, 47, 'Calculo avanzado', 'Introduccion a las integrales dobles', 'Evaluacion de integrales parciales', '?un=Introduccion a las integrales dobles&tm=Evaluacion de integrales parciales'),
(17, 47, 'Calculo avanzado', 'Introduccion a las integrales dobles', 'Inversion del orden de integracion', '?un=Introduccion a las integrales dobles&tm=Inversion del orden de integracion'),
(18, 48, 'Calculo avanzado', 'Integrales Triples en coordenas cilindricas y esfericas', 'Conversion de integrales triples en coordenas rectangulares a coordenas cilindricas', '?un=Integrales Triples en coordenas cilindricas y esfericas&tm=Conversion de integrales triples en coordenas rectangulares a coordenas cilindricas'),
(19, 49, 'Ecuaciones diferenciales', 'Series de Fourier y ED', '', '?un=Series de Fourier y ED'),
(20, 50, 'Calculo avanzado', 'Campos vectoriales', 'Campos del inverso cuadrado', '?un=Campos vectoriales&tm=Campos del inverso cuadrado'),
(21, 51, 'Calculo avanzado', 'Integrales Triples', 'Evaluacion de integrales triples sobre cajas rectangulares', '?un=Integrales Triples&tm=Evaluacion de integrales triples sobre cajas rectangulares'),
(22, 3, 'Calculo integral', 'Contenidos en general', '', '?un=Contenidos en general'),
(23, 7, 'Algebra lineal', 'Espacios y subespacios', 'Subespacio propio', '?un=Espacios y subespacios&tm=Subespacio propio'),
(24, 13, 'Calculo avanzado', 'Curvatura', '', '?un=Curvatura'),
(25, 13, 'Calculo avanzado', 'Campos vectoriales', '', '?un=Campos vectoriales'),
(26, 13, 'Calculo avanzado', 'Coordenas curvilineas', '', '?un=Coordenas curvilineas'),
(27, 13, 'Calculo avanzado', 'Limites y continuidad para funciones de 2 o mas variables', '', '?un=Limites y continuidad para funciones de 2 o mas variables'),
(28, 13, 'Calculo avanzado', 'Limites y continuidad para funciones de 2 o mas variables', 'Evaluacion de limites de funciones de 2 variables', '?un=Limites y continuidad para funciones de 2 o mas variables&tm=Evaluacion de limites de funciones de 2 variables'),
(29, 13, 'Calculo avanzado', 'Limites y continuidad para funciones de 2 o mas variables', 'Evaluacion de limites de funciones de 3 variables', '?un=Limites y continuidad para funciones de 2 o mas variables&tm=Evaluacion de limites de funciones de 3 variables'),
(30, 13, 'Calculo avanzado', 'Limites y continuidad para funciones de 2 o mas variables', 'Continuidad de funciones de 3 variables', '?un=Limites y continuidad para funciones de 2 o mas variables&tm=Continuidad de funciones de 3 variables'),
(31, 13, 'Calculo avanzado', 'Superficies parametricas', '', '?un=Superficies parametricas'),
(32, 13, 'Calculo avanzado', 'Superficies parametricas', 'Definicion, propiedades y generacion de superficies parametricas', '?un=Superficies parametricas&tm=Definicion, propiedades y generacion de superficies parametricas'),
(33, 13, 'Calculo avanzado', 'Superficies parametricas', 'Funciones vectoriales de 2 variables y superficies parametricas', '?un=Superficies parametricas&tm=Funciones vectoriales de 2 variables y superficies parametricas'),
(34, 14, 'Calculo avanzado', 'Vectores importantes', '', '?un=Vectores importantes'),
(35, 14, 'Calculo avanzado', 'Vectores importantes', 'Vectores tangente', '?un=Vectores importantes&tm=Vectores tangente'),
(36, 15, 'Algebra lineal', 'Matrices bï¿½sicas', '', '?un=Matrices bï¿½sicas'),
(37, 16, 'Ecuaciones diferenciales', 'Sistemas de Ecuaciones Diferenciales', '', '?un=Sistemas de Ecuaciones Diferenciales'),
(38, 23, 'Calculo integral', 'Introducciï¿½n a la integraciï¿½n', '', '?un=Introducciï¿½n a la integraciï¿½n'),
(39, 23, 'Calculo integral', 'Contenidos en general', '', '?un=Contenidos en general'),
(40, 24, 'Calculo avanzado', 'Integrales dobles en coordenas polares', '', '?un=Integrales dobles en coordenas polares'),
(41, 24, 'Calculo avanzado', 'Coordenas curvilineas', '', '?un=Coordenas curvilineas'),
(42, 24, 'Calculo avanzado', 'Campos vectoriales', '', '?un=Campos vectoriales'),
(43, 25, 'Calculo avanzado', 'Funciones de dos o mas variables', '', '?un=Funciones de dos o mas variables'),
(44, 25, 'Calculo avanzado', 'Derivadas direccionales y gradientes', 'Derivadas direccionales y pendiente de la superficie', '?un=Derivadas direccionales y gradientes&tm=Derivadas direccionales y pendiente de la superficie'),
(45, 25, 'Calculo avanzado', 'Derivadas direccionales y gradientes', 'Planos tangentes y diferenciales totales', '?un=Derivadas direccionales y gradientes&tm=Planos tangentes y diferenciales totales'),
(46, 26, 'Algebra lineal', 'Matrices bï¿½sicas', '', '?un=Matrices bï¿½sicas'),
(47, 26, 'Algebra lineal', 'Ortogonalidad en el espacio', '', '?un=Ortogonalidad en el espacio'),
(48, 27, 'Calculo integral', 'Introducciï¿½n a la integraciï¿½n', '', '?un=Introducciï¿½n a la integraciï¿½n'),
(49, 27, 'Algebra lineal', 'Matrices bï¿½sicas', '', '?un=Matrices bï¿½sicas'),
(50, 27, 'Algebra lineal', 'Algunas aplicaciones de los determinantes', '', '?un=Algunas aplicaciones de los determinantes'),
(51, 29, 'Calculo avanzado', 'Funciones de dos o mas variables', '', '?un=Funciones de dos o mas variables'),
(52, 29, 'Ecuaciones diferenciales', 'Conceptos bï¿½sicos sobre Ecuaciones Diferenciales', '', '?un=Conceptos bï¿½sicos sobre Ecuaciones Diferenciales'),
(53, 42, 'Calculo integral', 'Introducciï¿½n a la integraciï¿½n', '', '?un=Introducciï¿½n a la integraciï¿½n'),
(54, 42, 'Algebra lineal', 'Matrices bï¿½sicas', '', '?un=Matrices bï¿½sicas'),
(55, 43, 'Calculo integral', 'Introducciï¿½n a la integraciï¿½n', '', '?un=Introducciï¿½n a la integraciï¿½n'),
(56, 43, 'Calculo avanzado', 'Funciones de dos o mas variables', '', '?un=Funciones de dos o mas variables'),
(57, 44, 'Calculo avanzado', 'Funciones de dos o mas variables', '', '?un=Funciones de dos o mas variables'),
(58, 44, 'Calculo avanzado', 'Funciones de dos o mas variables', '', '?un=Funciones de dos o mas variables'),
(59, 49, 'Algebra lineal', 'Matrices bï¿½sicas', '', '?un=Matrices bï¿½sicas'),
(60, 49, 'Algebra lineal', 'Matrices bï¿½sicas', '', '?un=Matrices bï¿½sicas'),
(61, 50, 'Calculo integral', 'Introducciï¿½n a la integraciï¿½n', '', '?un=Introducciï¿½n a la integraciï¿½n'),
(62, 41, 'Calculo integral', 'Contenidos en general', '', '?un=Contenidos en general'),
(63, 41, 'Algebra lineal', 'Matrices bï¿½sicas', '', '?un=Matrices bï¿½sicas'),
(64, 42, 'Calculo avanzado', 'Funciones de dos o mas variables', '', '?un=Funciones de dos o mas variables'),
(65, 43, 'Calculo integral', 'Integraciï¿½n definida en el cï¿½lculo de volï¿½menes', '', '?un=Integraciï¿½n definida en el cï¿½lculo de volï¿½menes'),
(66, 44, 'Calculo integral', 'Introducciï¿½n a la integraciï¿½n', '', '?un=Introducciï¿½n a la integraciï¿½n'),
(67, 45, 'Calculo integral', 'Contenidos en general', '', '?un=Contenidos en general'),
(68, 45, 'Algebra lineal', 'Matrices bï¿½sicas', '', '?un=Matrices bï¿½sicas'),
(69, 46, 'Calculo integral', 'Introducciï¿½n a la integraciï¿½n', '', '?un=Introducciï¿½n a la integraciï¿½n'),
(70, 47, 'Calculo integral', 'Introducciï¿½n a la integraciï¿½n', '', '?un=Introducciï¿½n a la integraciï¿½n'),
(71, 48, 'Calculo integral', 'Introducciï¿½n a la integraciï¿½n', '', '?un=Introducciï¿½n a la integraciï¿½n'),
(72, 49, 'Calculo avanzado', 'Funciones de dos o mas variables', '', '?un=Funciones de dos o mas variables'),
(73, 50, 'Calculo avanzado', 'Funciones de dos o mas variables', '', '?un=Funciones de dos o mas variables'),
(74, 51, 'Calculo integral', 'Introducciï¿½n a la integraciï¿½n', '', '?un=Introducciï¿½n a la integraciï¿½n'),
(75, 53, 'Calculo integral', 'Introducciï¿½n a la integraciï¿½n', '', '?un=Introducciï¿½n a la integraciï¿½n'),
(76, 54, 'Algebra lineal', 'Matrices bï¿½sicas', '', '?un=Matrices bï¿½sicas'),
(77, 54, 'Calculo avanzado', 'Funciones de dos o mas variables', '', '?un=Funciones de dos o mas variables'),
(78, 55, 'Algebra lineal', 'Matrices bï¿½sicas', '', '?un=Matrices bï¿½sicas'),
(79, 56, 'Calculo integral', 'Introducciï¿½n a la integraciï¿½n', '', '?un=Introducciï¿½n a la integraciï¿½n'),
(80, 57, 'Calculo avanzado', 'Funciones de dos o mas variables', '', '?un=Funciones de dos o mas variables'),
(81, 57, 'Calculo integral', 'Introducciï¿½n a la integraciï¿½n', '', '?un=Introducciï¿½n a la integraciï¿½n'),
(82, 57, 'Algebra lineal', 'Matrices bï¿½sicas', '', '?un=Matrices bï¿½sicas'),
(83, 58, 'Calculo avanzado', 'Funciones de dos o mas variables', '', '?un=Funciones de dos o mas variables'),
(84, 58, 'Ecuaciones diferenciales', 'Conceptos bï¿½sicos sobre Ecuaciones Diferenciales', '', '?un=Conceptos bï¿½sicos sobre Ecuaciones Diferenciales'),
(85, 60, 'Calculo integral', 'Introducciï¿½n a la integraciï¿½n', '', '?un=Introducciï¿½n a la integraciï¿½n'),
(86, 72, 'Calculo integral', 'Introducciï¿½n a la integraciï¿½n', '', '?un=Introducciï¿½n a la integraciï¿½n'),
(87, 72, 'Algebra lineal', 'Matrices bï¿½sicas', '', '?un=Matrices bï¿½sicas'),
(88, 73, 'Calculo avanzado', 'Funciones de dos o mas variables', '', '?un=Funciones de dos o mas variables'),
(89, 74, 'Calculo integral', 'Introducciï¿½n a la integraciï¿½n', '', '?un=Introducciï¿½n a la integraciï¿½n'),
(90, 75, 'Calculo integral', 'Introducciï¿½n a la integraciï¿½n', '', '?un=Introducciï¿½n a la integraciï¿½n'),
(91, 76, 'Calculo integral', 'Introducciï¿½n a la integraciï¿½n', '', '?un=Introducciï¿½n a la integraciï¿½n'),
(92, 77, 'Calculo integral', 'Introducciï¿½n a la integraciï¿½n', '', '?un=Introducciï¿½n a la integraciï¿½n'),
(93, 89, 'Calculo avanzado', 'Funciones de dos o mas variables', '', '?un=Funciones de dos o mas variables'),
(94, 89, 'Calculo integral', 'Introducciï¿½n a la integraciï¿½n', '', '?un=Introducciï¿½n a la integraciï¿½n'),
(95, 90, 'Calculo integral', 'Introducciï¿½n a la integraciï¿½n', '', '?un=Introducciï¿½n a la integraciï¿½n'),
(96, 91, 'Calculo integral', 'Introducciï¿½n a la integraciï¿½n', '', 'http://localhost/cambio/calculointegral/lista-integral?un=introduccin-a-la-integracin'),
(97, 93, 'Calculo avanzado', 'Funciones de dos o mas variables', '', 'http://localhost/cambio/c-avanzado/lista-calculo?un=funciones-de-dos-o-mas-variables'),
(98, 105, 'Calculo integral', 'Introducciï¿½n a la integraciï¿½n', '', 'http://localhost/cambio/calculointegral/lista-integral?un=introduccin-a-la-integracin'),
(99, 106, 'Calculo avanzado', 'Funciones de dos o mas variables', '', 'http://localhost/cambio/c-avanzado/lista-calculo?un=funciones-de-dos-o-mas-variables'),
(100, 107, 'Calculo avanzado', 'Funciones de dos o mas variables', '', 'http://localhost/cambio/c-avanzado/lista-calculo?un=funciones-de-dos-o-mas-variables'),
(101, 108, 'Calculo integral', 'Introducciï¿½n a la integraciï¿½n', '', 'http://localhost/cambio/calculointegral/lista-integral?un=introduccin-a-la-integracin'),
(102, 109, 'Calculo integral', 'Introducciï¿½n a la integraciï¿½n', '', 'http://localhost/cambio/calculointegral/lista-integral?un=introduccin-a-la-integracin'),
(103, 110, 'Calculo integral', 'Introducciï¿½n a la integraciï¿½n', '', 'http://localhost/cambio/calculointegral/lista-integral?un=introduccin-a-la-integracin'),
(104, 111, 'Calculo avanzado', 'Funciones de dos o mas variables', '', 'http://localhost/cambio/c-avanzado/lista-calculo?un=funciones-de-dos-o-mas-variables'),
(105, 112, 'Calculo integral', 'Introducciï¿½n a la integraciï¿½n', '', 'http://localhost/cambio/calculointegral/lista-integral?un=introduccin-a-la-integracin'),
(106, 113, 'Calculo integral', 'Introducciï¿½n a la integraciï¿½n', '', 'http://localhost/cambio/calculointegral/lista-integral?un=introduccin-a-la-integracin'),
(107, 114, 'Calculo integral', 'Introducciï¿½n a la integraciï¿½n', '', 'http://localhost/cambio/calculointegral/lista-integral?un=introduccin-a-la-integracin'),
(108, 115, 'Calculo integral', 'Introducciï¿½n a la integraciï¿½n', '', 'http://localhost/cambio/calculointegral/lista-integral?un=introduccin-a-la-integracin'),
(109, 116, 'Calculo integral', 'Introducciï¿½n a la integraciï¿½n', '', 'http://localhost/cambio/calculointegral/lista-integral?un=introduccin-a-la-integracin'),
(110, 117, 'Calculo avanzado', 'Funciones de dos o mas variables', '', 'http://localhost/cambio/c-avanzado/lista-calculo?un=funciones-de-dos-o-mas-variables'),
(111, 118, 'Algebra lineal', 'Matrices bï¿½sicas', '', 'http://localhost/cambio/lineal/lista-algebralineal?un=matrices-bsicas'),
(112, 119, 'Calculo avanzado', 'Funciones de dos o mas variables', '', 'http://localhost/cambio/c-avanzado/lista-calculo?un=funciones-de-dos-o-mas-variables'),
(113, 120, 'Calculo integral', 'Introducciï¿½n a la integraciï¿½n', '', 'http://localhost/cambio/calculointegral/lista-integral?un=introduccin-a-la-integracin'),
(114, 121, 'Calculo integral', 'Introducciï¿½n a la integraciï¿½n', '', 'http://localhost/cambio/calculointegral/lista-integral?un=introduccin-a-la-integracin'),
(115, 122, 'Algebra lineal', 'Matrices bï¿½sicas', '', 'http://localhost/cambio/lineal/lista-algebralineal?un=matrices-bsicas'),
(116, 123, 'Calculo avanzado', 'Funciones de dos o mas variables', '', 'http://localhost/cambio/c-avanzado/lista-calculo?un=funciones-de-dos-o-mas-variables'),
(117, 124, 'Calculo integral', 'Introducciï¿½n a la integraciï¿½n', '', 'http://localhost/cambio/calculointegral/lista-integral?un=introduccin-a-la-integracin'),
(118, 125, 'Calculo integral', 'Introducciï¿½n a la integraciï¿½n', '', 'http://localhost/cambio/calculointegral/lista-integral?un=introduccin-a-la-integracin'),
(119, 126, 'Calculo integral', 'Introducciï¿½n a la integraciï¿½n', '', 'http://localhost/cambio/calculointegral/lista-integral?un=introduccin-a-la-integracin'),
(120, 127, 'Calculo avanzado', 'Funciones de dos o mas variables', '', 'http://localhost/cambio/c-avanzado/lista-calculo?un=funciones-de-dos-o-mas-variables'),
(121, 128, 'Calculo integral', 'Introducciï¿½n a la integraciï¿½n', '', 'http://localhost/cambio/calculointegral/lista-integral?un=introduccin-a-la-integracin'),
(122, 130, 'Calculo avanzado', 'Funciones de dos o mas variables', '', 'http://localhost/cambio/c-avanzado/lista-calculo?un=funciones-de-dos-o-mas-variables'),
(123, 131, 'Calculo integral', 'Introducciï¿½n a la integraciï¿½n', '', 'http://localhost/cambio/calculointegral/lista-integral?un=introduccin-a-la-integracin'),
(124, 132, 'Calculo integral', 'Introducciï¿½n a la integraciï¿½n', '', 'http://localhost/cambio/calculointegral/lista-integral?un=introduccin-a-la-integracin'),
(125, 133, 'Calculo avanzado', 'Funciones de dos o mas variables', '', 'http://localhost/cambio/c-avanzado/lista-calculo?un=funciones-de-dos-o-mas-variables'),
(126, 134, 'Calculo avanzado', 'Funciones de dos o mas variables', '', 'http://localhost/cambio/c-avanzado/lista-calculo?un=funciones-de-dos-o-mas-variables'),
(127, 135, 'Algebra lineal', 'Matrices bï¿½sicas', '', 'http://localhost/cambio/lineal/lista-algebralineal?un=matrices-bsicas'),
(128, 137, 'Calculo integral', 'Introducciï¿½n a la integraciï¿½n', '', 'http://localhost/cambio/calculointegral/lista-integral?un=introduccin-a-la-integracin'),
(129, 138, 'Ecuaciones diferenciales', 'Conceptos bï¿½sicos sobre Ecuaciones Diferenciales', '', 'http://localhost/cambio/diferenciales/lista-diferenciales?un=conceptos-bsicos-sobre-ecuaciones-diferenciales'),
(130, 139, 'Calculo avanzado', 'Funciones de dos o mas variables', '', 'http://localhost/cambio/c-avanzado/lista-calculo?un=funciones-de-dos-o-mas-variables'),
(131, 1, 'Calculo avanzado', 'Funciones de dos o mas variables', '', 'http://localhost/cambio/c-avanzado/lista-calculo?un=funciones-de-dos-o-mas-variables'),
(132, 2, 'Calculo avanzado', 'Funciones de dos o mas variables', '', 'http://localhost/cambio/c-avanzado/lista-calculo?un=funciones-de-dos-o-mas-variables'),
(133, 3, 'Calculo integral', 'Introducciï¿½n a la integraciï¿½n', '', 'http://localhost/cambio/calculointegral/lista-integral?un=introduccin-a-la-integracin'),
(134, 30, 'Calculo diferencial', 'Lï¿½mites y continuidad', '', 'http://localhost/cambio/calculodif/panel-calculodiferencial?un=lmites-y-continuidad'),
(135, 1, 'Algebra lineal', 'Matrices bï¿½sicas', '', 'http://localhost/cambio/lineal/panel-algebra-lineal?un=matrices-bsicas'),
(136, 1, 'Algebra lineal', 'La inversa de una matriz', '', 'http://localhost/cambio/lineal/panel-algebra-lineal?un=la-inversa-de-una-matriz');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidades_materias`
--

CREATE TABLE IF NOT EXISTS `unidades_materias` (
  `id_unidades` int(11) NOT NULL,
  `materia` varchar(40) NOT NULL,
  `unidad` varchar(120) NOT NULL,
  `clave_un` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `unidades_materias`
--

INSERT INTO `unidades_materias` (`id_unidades`, `materia`, `unidad`, `clave_un`) VALUES
(1, 'Algebra basica', '1-Suma, resta, multiplicación algebraica y uso de paréntesis', 'ha0'),
(2, 'Algebra basica', '2-División algebraica', 'ha1'),
(3, 'Algebra basica', '3-Productos notables', 'ha2'),
(4, 'Algebra basica', '4-Descomposición factorial', 'ha3'),
(5, 'Algebra basica', '5-Máximo común divisor', 'ha4'),
(6, 'Algebra basica', '6-Mínimo común múltiplo', 'ha5'),
(7, 'Algebra basica', '7-Reducción de fracciones algebraicas', 'ha6'),
(8, 'Algebra basica', '8-Operaciones con fracciones algebraicas', 'ha7'),
(9, 'Algebra basica', '9-Potenciación y teoría de los exponentes', 'ha8'),
(10, 'Algebra basica', '10-Radicales', 'ha9'),
(11, 'Algebra basica', '11-Operaciones con cantidades imaginarias', 'ha10'),
(12, 'Algebra basica', '12-Ecuaciones de primer grado con una incógnita', 'ha11'),
(13, 'Algebra basica', '13-Aplicaciones de las ecuaciones de primer grado con una incógnita', 'ha12'),
(14, 'Algebra basica', '14-Ecuaciones fraccionarias de primer grado con una incógnita', 'ha13'),
(15, 'Algebra basica', '15-Aplicaciones de las ecuaciones fraccionarias', 'ha14'),
(16, 'Algebra basica', '16-Ecuaciones de segundo grado con una incógnita', 'ha15'),
(17, 'Algebra basica', '17-Aplicaciones de las ecuaciones de segundo grado con una incógnita', 'ha16'),
(18, 'Algebra basica', 'Contenidos generales', 'ha17'),
(19, 'Algebra intermedia', 'Gráficas y funciones', 'hb1'),
(20, 'Algebra intermedia', 'Funciones polinomiales', 'hb2'),
(21, 'Algebra intermedia', 'Funciones racionales', 'hb3'),
(22, 'Algebra intermedia', 'Funciones exponencial y logarítmica', 'hb4'),
(23, 'Algebra intermedia', 'Sistemas de ecuaciones y desigualdades', 'hb5'),
(24, 'Algebra intermedia', 'Introducción al algebra lineal', 'hb6'),
(25, 'Algebra intermedia', 'Sucesiones, series y combinaciones', 'hb7'),
(26, 'Algebra intermedia', 'Contenidos generales', 'hb8'),
(27, 'Trigonometria', 'Medidas y razones de los triangulos rectangulos', 'hc1'),
(28, 'Trigonometria', 'Funciones trigonometricas', 'hc2'),
(29, 'Trigonometria', 'Graficas de las funciones trigonometricas', 'hc3'),
(30, 'Trigonometria', 'Identidades trigonometricas', 'hc4'),
(31, 'Trigonometria', 'Funciones trignometricas inversas', 'hc5'),
(32, 'Trigonometria', 'Ecuaciones y desigualdades trignometricas', 'hc6'),
(33, 'Trigonometria', 'Leyes de los angulos', 'hc7'),
(34, 'Trigonometria', 'Coordenadas polares', 'hc8'),
(35, 'Trigonometria', 'Contenidos generales', 'hc9'),
(36, 'Geometria analitica', 'La recta – Formas y ecuaciones', 'hd1'),
(37, 'Geometria analitica', 'La recta – Mas operaciones', 'hd2'),
(38, 'Geometria analitica', 'Introducción a los lugares geométricos', 'hd3'),
(39, 'Geometria analitica', 'El triángulo', 'hd4'),
(40, 'Geometria analitica', 'El circulo', 'hd5'),
(41, 'Geometria analitica', 'La parábola', 'hd6'),
(42, 'Geometria analitica', 'La elipse', 'hd7'),
(43, 'Geometria analitica', 'La hipérbola', 'hd8'),
(44, 'Geometria analitica', 'Coordenas polares', 'hd9'),
(45, 'Geometria analitica', 'Contenidos en general', 'hd10'),
(46, 'Estadistica', 'Conceptos básicos en la estadística', 'he1'),
(47, 'Estadistica', 'Presentación de datos', 'he2'),
(48, 'Estadistica', 'Medidas de tendencia central', 'he3'),
(49, 'Estadistica', 'Medidas de variación y dispersión', 'he4'),
(50, 'Estadistica', 'Medidas de posición relativa', 'he5'),
(51, 'Estadistica', 'Probabilidad 1 - Conteo', 'he6'),
(52, 'Estadistica', 'Probabilidad 2 – Tipos de probabilidad', 'he7'),
(53, 'Estadistica', 'Distribución de probabilidades discretas', 'he8'),
(54, 'Estadistica', 'Distribución de probabilidad normal', 'he9'),
(55, 'Estadistica', 'Diseño básico de una muestra', 'he10'),
(56, 'Estadistica', 'Distribuciones muéstrales', 'he11'),
(57, 'Estadistica', 'Estimación de la proporción de una población', 'he12'),
(58, 'Estadistica', 'Estimación de la media poblacional mu con sigma conocida', 'he13'),
(59, 'Estadistica', ' Estimación de la media poblacional ? con simga desconocida', 'he14'),
(60, 'Estadistica', 'estimación de la varianza poblacional', 'he15'),
(61, 'Estadistica', 'Contenidos en general', 'he16'),
(62, 'Calculo diferencial', 'Límites y continuidad', 'hf1'),
(63, 'Calculo diferencial', 'Introducción a la derivación', 'hf2'),
(64, 'Calculo diferencial', 'Derivadas implícitas', 'hf3'),
(65, 'Calculo diferencial', 'Derivadas de funciones trigonométricas directas', 'hf4'),
(66, 'Calculo diferencial', 'Derivadas de funciones trigonométricas inversas', 'hf5'),
(67, 'Calculo diferencial', 'Derivadas de funciones exponenciales y logarítmicas', 'hf6'),
(68, 'Calculo diferencial', 'Razones', 'hf7'),
(69, 'Calculo diferencial', 'Regla de lHopital', 'hf8'),
(70, 'Calculo diferencial', 'Aplicaciones de las derivadas', 'hf9'),
(71, 'Calculo diferencial', 'Diferenciales', 'hf10'),
(72, 'Calculo diferencial', 'Contenidos en general', 'hf11'),
(73, 'Calculo integral', 'Introducción a la integración', 'hi1'),
(74, 'Calculo integral', 'Integración de funciones trigonométricas directas', 'hi2'),
(75, 'Calculo integral', 'Integración de funciones trigonométricas inversas', 'hi3'),
(76, 'Calculo integral', 'Integración de funciones exponenciales', 'hi4'),
(77, 'Calculo integral', 'Integración de funciones logarítmicas', 'hi5'),
(78, 'Calculo integral', 'Métodos de integración: Integración por partes', 'hi6'),
(79, 'Calculo integral', 'Métodos de integración: Sustitución trigonométrica', 'hi7'),
(80, 'Calculo integral', 'Integración por fracciones parciales', 'hi8'),
(81, 'Calculo integral', 'Integración por racionalización', 'hi9'),
(82, 'Calculo integral', 'Integración definida', 'hi10'),
(83, 'Calculo integral', 'Integración definida en el cálculo de volúmenes', 'hi11'),
(84, 'Calculo integral', 'Integración definida – Mas aplicaciones a la geometría', 'hi12'),
(85, 'Calculo integral', 'Tópicos – Aplicaciones a la Física, Economía e Ingeniería', 'hi13'),
(86, 'Calculo integral', 'Contenidos en general', 'hi14'),
(89, 'Calculo avanzado', 'Funciones de dos o mas variables', 'hk1'),
(90, 'Calculo avanzado', 'Limites y continuidad para funciones de 2 o mas variables', 'hk2'),
(91, 'Calculo avanzado', 'Derivadas parciales', 'hk3'),
(92, 'Calculo avanzado', 'Derivadas direccionales y gradientes', 'hk4'),
(93, 'Calculo avanzado', 'Maximos y minimos de funciones multivariable', 'hk5'),
(94, 'Calculo avanzado', 'Maximos y minimos restringidos de funciones multivariable, Multiplicadores de Lagrange', 'hk6'),
(95, 'Calculo avanzado', 'Introduccion a las integrales dobles', 'hk7'),
(96, 'Calculo avanzado', 'Integrales dobles en coordenas polares', 'hk8'),
(97, 'Calculo avanzado', 'Superficies parametricas', 'hk9'),
(98, 'Calculo avanzado', 'Integrales Triples', 'hk10'),
(99, 'Calculo avanzado', 'Integrales Triples en coordenas cilindricas y esfericas', 'hk11'),
(100, 'Calculo avanzado', 'Jacobianos y cambios de variables en inegrales triples', 'hk12'),
(101, 'Calculo avanzado', 'Curvas parametricas en el espacio 3D', 'hk13'),
(102, 'Calculo avanzado', 'Las funciones vectoriales', 'hk14'),
(103, 'Calculo avanzado', 'Cambio de parametro y longitud de arco', 'hk15'),
(104, 'Calculo avanzado', 'Vectores importantes', 'hk16'),
(105, 'Calculo avanzado', 'Curvatura', 'hk17'),
(106, 'Calculo avanzado', 'Coordenas curvilineas', 'hk18'),
(107, 'Calculo avanzado', 'Campos vectoriales', 'hk19'),
(108, 'Calculo avanzado', 'El operador nabla', 'hk20'),
(109, 'Calculo avanzado', 'Lapciano y Ecuacion de laplace', 'hk21'),
(110, 'Calculo avanzado', 'Divergencia', 'hk22'),
(111, 'Calculo avanzado', 'Rotacional', 'hk23'),
(112, 'Calculo avanzado', 'Integrales de linea', 'hk24'),
(113, 'Calculo avanzado', 'Teorema de Green', 'hk25'),
(114, 'Calculo avanzado', 'Teorema de Stokes', 'hk26'),
(115, 'Calculo avanzado', 'Integrales de Superficie', 'hk27'),
(116, 'Calculo avanzado', 'Contenidos en general', 'hk28'),
(120, 'Algebra lineal', 'Matrices básicas', 'hkl1'),
(121, 'Algebra lineal', 'Operaciones básicas con matrices', 'hkl2'),
(122, 'Algebra lineal', 'La inversa de una matriz', 'hkl3'),
(123, 'Algebra lineal', 'La transpuesta de una matriz', 'hkl4'),
(124, 'Algebra lineal', 'Factorización de matrices', 'hkl5'),
(125, 'Algebra lineal', 'Determinantes', 'hkl6'),
(126, 'Algebra lineal', 'Algunas aplicaciones de los determinantes', 'hkl7'),
(127, 'Algebra lineal', 'Espacios y subespacios', 'hkl8'),
(128, 'Algebra lineal', 'Combinación lineal', 'hkl9'),
(129, 'Algebra lineal', 'Independencia  y dependencia lineal', 'hkl10'),
(130, 'Algebra lineal', 'Bases, dimensión y cambios de base', 'hkl11'),
(131, 'Algebra lineal', 'Introducción a las transformaciones lineales', 'hkl12'),
(132, 'Algebra lineal', 'Representación matricial de una transformación lineal', 'hkl13'),
(133, 'Algebra lineal', 'Isometría', 'hkl14'),
(134, 'Algebra lineal', 'Aplicaciones prácticas de las transformaciones lineales', 'hkl15'),
(135, 'Algebra lineal', 'Conceptos básicos de los valores y vectores característicos', 'hkl16'),
(136, 'Algebra lineal', 'La diagonalización', 'hkl17'),
(137, 'Algebra lineal', 'Métodos iterativos para calcular valores característicos', 'hkl18'),
(138, 'Algebra lineal', 'Aplicaciones de los valores y vectores característicos', 'hkl19'),
(139, 'Algebra lineal', 'Ortogonalidad en el espacio', 'hkl20'),
(140, 'Algebra lineal', 'Diagonalización ortogonal de matrices simétricas y el teorema espectral', 'hkl21'),
(141, 'Algebra lineal', 'Forma canónica de Jordán', 'hkl22'),
(142, 'Algebra lineal', 'Espacios con producto interno', 'hkl23'),
(143, 'Algebra lineal', 'Producto punto complejo y la matriz hermitiana', 'hkl24'),
(144, 'Algebra lineal', 'Normas', 'hkl25'),
(145, 'Algebra lineal', 'Descomposición del valor singular', 'hkl26'),
(156, 'Algebra lineal', 'Aplicaciones-Formas cuadráticas', 'hkl27'),
(157, 'Algebra lineal', 'Aplicaciones-Minimos cuadrados', 'hkl28'),
(158, 'Algebra lineal', 'Aproximacion de funciones', 'hkl29'),
(159, 'Algebra lineal', 'Contenidos en general', 'hkl30'),
(201, 'Ecuaciones diferenciales', 'Conceptos básicos sobre Ecuaciones Diferenciales', 'hm1'),
(202, 'Ecuaciones diferenciales', 'Ecuaciones Diferenciales de variables separables', 'hm2'),
(203, 'Ecuaciones diferenciales', 'Ecuaciones Diferenciales exactas y derivadas parciales', 'hm3'),
(204, 'Ecuaciones diferenciales', 'Ecuaciones Diferenciales con factores integrantes', 'hm4'),
(205, 'Ecuaciones diferenciales', 'Ecuaciones Diferenciales lineales homogéneas y no homogéneas de primer orden', 'hm5'),
(206, 'Ecuaciones diferenciales', 'Aplicaciones de las ecuaciones diferenciales de primer orden', 'hm6'),
(207, 'Ecuaciones diferenciales', 'Ecuaciones Diferenciales lineales y homogéneas de orden superior', 'hm7'),
(208, 'Ecuaciones diferenciales', 'Ecuaciones Diferenciales no homogéneas de orden superior', 'hm8'),
(209, 'Ecuaciones diferenciales', 'Mas sobre Ecuaciones Diferenciales de orden superior', 'hm9'),
(210, 'Ecuaciones diferenciales', 'Aplicaciones de las Ecuaciones Diferenciales de orden superior', 'hm10'),
(211, 'Ecuaciones diferenciales', 'Solución de ecuaciones diferenciales mediante series', 'hm11'),
(212, 'Ecuaciones diferenciales', 'Transformada de laplace y ED', 'hm12'),
(213, 'Ecuaciones diferenciales', 'Series de Fourier y ED', 'hm13'),
(214, 'Ecuaciones diferenciales', 'Sistemas de Ecuaciones Diferenciales', 'hm14'),
(215, 'Ecuaciones diferenciales', 'Metodos Numéricos para resolver Ecuaciones Diferenciales', 'hm15'),
(216, 'Ecuaciones diferenciales', 'Introducción a las Ecuaciones Diferenciales Parciales', 'hm16'),
(217, 'Ecuaciones diferenciales', 'Contenidos en general', 'hm17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `uni_limpias`
--

CREATE TABLE IF NOT EXISTS `uni_limpias` (
  `id_unl` int(11) NOT NULL,
  `un_limpia` varchar(200) DEFAULT NULL,
  `un_sucia` varchar(200) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=289 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `uni_limpias`
--

INSERT INTO `uni_limpias` (`id_unl`, `un_limpia`, `un_sucia`) VALUES
(1, '1-suma-resta-multiplicacin-algebraica-y-uso-de-parntesis', '1-Suma, resta, multiplicación algebraica y uso de paréntesis'),
(2, '2-divisin-algebraica', '2-División algebraica'),
(3, '3-productos-notables', '3-Productos notables'),
(4, '4-descomposicin-factorial', '4-Descomposición factorial'),
(5, '5-mximo-comn-divisor', '5-Máximo común divisor'),
(6, '6-mnimo-comn-mltiplo', '6-Mínimo común múltiplo'),
(7, '7-reduccin-de-fracciones-algebraicas', '7-Reducción de fracciones algebraicas'),
(8, '8-operaciones-con-fracciones-algebraicas', '8-Operaciones con fracciones algebraicas'),
(9, '9-potenciacin-y-teora-de-los-exponentes', '9-Potenciación y teoría de los exponentes'),
(10, '10-radicales', '10-Radicales'),
(11, '11-operaciones-con-cantidades-imaginarias', '11-Operaciones con cantidades imaginarias'),
(12, '12-ecuaciones-de-primer-grado-con-una-incgnita', '12-Ecuaciones de primer grado con una incógnita'),
(13, '13-aplicaciones-de-las-ecuaciones-de-primer-grado-con-una-incgnita', '13-Aplicaciones de las ecuaciones de primer grado con una incógnita'),
(14, '14-ecuaciones-fraccionarias-de-primer-grado-con-una-incgnita', '14-Ecuaciones fraccionarias de primer grado con una incógnita'),
(15, '15-aplicaciones-de-las-ecuaciones-fraccionarias', '15-Aplicaciones de las ecuaciones fraccionarias'),
(16, '16-ecuaciones-de-segundo-grado-con-una-incgnita', '16-Ecuaciones de segundo grado con una incógnita'),
(17, '17-aplicaciones-de-las-ecuaciones-de-segundo-grado-con-una-incgnita', '17-Aplicaciones de las ecuaciones de segundo grado con una incógnita'),
(18, 'contenidos-generales', 'Contenidos generales'),
(19, 'grficas-y-funciones', 'Gráficas y funciones'),
(20, 'funciones-polinomiales', 'Funciones polinomiales'),
(21, 'funciones-racionales', 'Funciones racionales'),
(22, 'funciones-exponencial-y-logartmica', 'Funciones exponencial y logarítmica'),
(23, 'sistemas-de-ecuaciones-y-desigualdades', 'Sistemas de ecuaciones y desigualdades'),
(24, 'introduccin-al-algebra-lineal', 'Introducción al algebra lineal'),
(25, 'sucesiones-series-y-combinaciones', 'Sucesiones, series y combinaciones'),
(26, 'contenidos-generales', 'Contenidos generales'),
(27, 'medidas-y-razones-de-los-triangulos-rectangulos', 'Medidas y razones de los triangulos rectangulos'),
(28, 'funciones-trigonometricas', 'Funciones trigonometricas'),
(29, 'graficas-de-las-funciones-trigonometricas', 'Graficas de las funciones trigonometricas'),
(30, 'identidades-trigonometricas', 'Identidades trigonometricas'),
(31, 'funciones-trignometricas-inversas', 'Funciones trignometricas inversas'),
(32, 'ecuaciones-y-desigualdades-trignometricas', 'Ecuaciones y desigualdades trignometricas'),
(33, 'leyes-de-los-angulos', 'Leyes de los angulos'),
(34, 'coordenadas-polares', 'Coordenadas polares'),
(35, 'contenidos-generales', 'Contenidos generales'),
(36, 'la-recta-formas-y-ecuaciones', 'La recta – Formas y ecuaciones'),
(37, 'la-recta-mas-operaciones', 'La recta – Mas operaciones'),
(38, 'introduccin-a-los-lugares-geomtricos', 'Introducción a los lugares geométricos'),
(39, 'el-tringulo', 'El triángulo'),
(40, 'el-circulo', 'El circulo'),
(41, 'la-parbola', 'La parábola'),
(42, 'la-elipse', 'La elipse'),
(43, 'la-hiprbola', 'La hipérbola'),
(44, 'coordenas-polares', 'Coordenas polares'),
(45, 'contenidos-en-general', 'Contenidos en general'),
(46, 'conceptos-bsicos-en-la-estadstica', 'Conceptos básicos en la estadística'),
(47, 'presentacin-de-datos', 'Presentación de datos'),
(48, 'medidas-de-tendencia-central', 'Medidas de tendencia central'),
(49, 'medidas-de-variacin-y-dispersin', 'Medidas de variación y dispersión'),
(50, 'medidas-de-posicin-relativa', 'Medidas de posición relativa'),
(51, 'probabilidad-1-conteo', 'Probabilidad 1 - Conteo'),
(52, 'probabilidad-2-tipos-de-probabilidad', 'Probabilidad 2 – Tipos de probabilidad'),
(53, 'distribucin-de-probabilidades-discretas', 'Distribución de probabilidades discretas'),
(54, 'distribucin-de-probabilidad-normal', 'Distribución de probabilidad normal'),
(55, 'diseo-bsico-de-una-muestra', 'Diseño básico de una muestra'),
(56, 'distribuciones-mustrales', 'Distribuciones muéstrales'),
(57, 'estimacin-de-la-proporcin-de-una-poblacin', 'Estimación de la proporción de una población'),
(58, 'estimacin-de-la-media-poblacional-mu-con-sigma-conocida', 'Estimación de la media poblacional mu con sigma conocida'),
(59, '-estimacin-de-la-media-poblacional-con-simga-desconocida', ' Estimación de la media poblacional ? con simga desconocida'),
(60, 'estimacin-de-la-varianza-poblacional', 'estimación de la varianza poblacional'),
(61, 'contenidos-en-general', 'Contenidos en general'),
(62, 'lmites-y-continuidad', 'Límites y continuidad'),
(63, 'introduccin-a-la-derivacin', 'Introducción a la derivación'),
(64, 'derivadas-implcitas', 'Derivadas implícitas'),
(65, 'derivadas-de-funciones-trigonomtricas-directas', 'Derivadas de funciones trigonométricas directas'),
(66, 'derivadas-de-funciones-trigonomtricas-inversas', 'Derivadas de funciones trigonométricas inversas'),
(67, 'derivadas-de-funciones-exponenciales-y-logartmicas', 'Derivadas de funciones exponenciales y logarítmicas'),
(68, 'razones', 'Razones'),
(69, 'regla-de-lhopital', 'Regla de lHopital'),
(70, 'aplicaciones-de-las-derivadas', 'Aplicaciones de las derivadas'),
(71, 'diferenciales', 'Diferenciales'),
(72, 'contenidos-en-general', 'Contenidos en general'),
(73, 'introduccin-a-la-integracin', 'Introducción a la integración'),
(74, 'integracin-de-funciones-trigonomtricas-directas', 'Integración de funciones trigonométricas directas'),
(75, 'integracin-de-funciones-trigonomtricas-inversas', 'Integración de funciones trigonométricas inversas'),
(76, 'integracin-de-funciones-exponenciales', 'Integración de funciones exponenciales'),
(77, 'integracin-de-funciones-logartmicas', 'Integración de funciones logarítmicas'),
(78, 'mtodos-de-integracin-integracin-por-partes', 'Métodos de integración: Integración por partes'),
(79, 'mtodos-de-integracin-sustitucin-trigonomtrica', 'Métodos de integración: Sustitución trigonométrica'),
(80, 'integracin-por-fracciones-parciales', 'Integración por fracciones parciales'),
(81, 'integracin-por-racionalizacin', 'Integración por racionalización'),
(82, 'integracin-definida', 'Integración definida'),
(83, 'integracin-definida-en-el-clculo-de-volmenes', 'Integración definida en el cálculo de volúmenes'),
(84, 'integracin-definida-mas-aplicaciones-a-la-geometra', 'Integración definida – Mas aplicaciones a la geometría'),
(85, 'tpicos-aplicaciones-a-la-fsica-economa-e-ingeniera', 'Tópicos – Aplicaciones a la Física, Economía e Ingeniería'),
(86, 'contenidos-en-general', 'Contenidos en general'),
(87, 'funciones-de-dos-o-mas-variables', 'Funciones de dos o mas variables'),
(88, 'limites-y-continuidad-para-funciones-de-2-o-mas-variables', 'Limites y continuidad para funciones de 2 o mas variables'),
(89, 'derivadas-parciales', 'Derivadas parciales'),
(90, 'derivadas-direccionales-y-gradientes', 'Derivadas direccionales y gradientes'),
(91, 'maximos-y-minimos-de-funciones-multivariable', 'Maximos y minimos de funciones multivariable'),
(92, 'maximos-y-minimos-restringidos-de-funciones-multivariable-multiplicadores-de-lagrange', 'Maximos y minimos restringidos de funciones multivariable, Multiplicadores de Lagrange'),
(93, 'introduccion-a-las-integrales-dobles', 'Introduccion a las integrales dobles'),
(94, 'integrales-dobles-en-coordenas-polares', 'Integrales dobles en coordenas polares'),
(95, 'superficies-parametricas', 'Superficies parametricas'),
(96, 'integrales-triples', 'Integrales Triples'),
(97, 'integrales-triples-en-coordenas-cilindricas-y-esfericas', 'Integrales Triples en coordenas cilindricas y esfericas'),
(98, 'jacobianos-y-cambios-de-variables-en-inegrales-triples', 'Jacobianos y cambios de variables en inegrales triples'),
(99, 'curvas-parametricas-en-el-espacio-3d', 'Curvas parametricas en el espacio 3D'),
(100, 'las-funciones-vectoriales', 'Las funciones vectoriales'),
(101, 'cambio-de-parametro-y-longitud-de-arco', 'Cambio de parametro y longitud de arco'),
(102, 'vectores-importantes', 'Vectores importantes'),
(103, 'curvatura', 'Curvatura'),
(104, 'coordenas-curvilineas', 'Coordenas curvilineas'),
(105, 'campos-vectoriales', 'Campos vectoriales'),
(106, 'el-operador-nabla', 'El operador nabla'),
(107, 'lapciano-y-ecuacion-de-laplace', 'Lapciano y Ecuacion de laplace'),
(108, 'divergencia', 'Divergencia'),
(109, 'rotacional', 'Rotacional'),
(110, 'integrales-de-linea', 'Integrales de linea'),
(111, 'teorema-de-green', 'Teorema de Green'),
(112, 'teorema-de-stokes', 'Teorema de Stokes'),
(113, 'integrales-de-superficie', 'Integrales de Superficie'),
(114, 'contenidos-en-general', 'Contenidos en general'),
(115, 'matrices-bsicas', 'Matrices básicas'),
(116, 'operaciones-bsicas-con-matrices', 'Operaciones básicas con matrices'),
(117, 'la-inversa-de-una-matriz', 'La inversa de una matriz'),
(118, 'la-transpuesta-de-una-matriz', 'La transpuesta de una matriz'),
(119, 'factorizacin-de-matrices', 'Factorización de matrices'),
(120, 'determinantes', 'Determinantes'),
(121, 'algunas-aplicaciones-de-los-determinantes', 'Algunas aplicaciones de los determinantes'),
(122, 'espacios-y-subespacios', 'Espacios y subespacios'),
(123, 'combinacin-lineal', 'Combinación lineal'),
(124, 'independencia-y-dependencia-lineal', 'Independencia  y dependencia lineal'),
(125, 'bases-dimensin-y-cambios-de-base', 'Bases, dimensión y cambios de base'),
(126, 'introduccin-a-las-transformaciones-lineales', 'Introducción a las transformaciones lineales'),
(127, 'representacin-matricial-de-una-transformacin-lineal', 'Representación matricial de una transformación lineal'),
(128, 'isometra', 'Isometría'),
(129, 'aplicaciones-prcticas-de-las-transformaciones-lineales', 'Aplicaciones prácticas de las transformaciones lineales'),
(130, 'conceptos-bsicos-de-los-valores-y-vectores-caractersticos', 'Conceptos básicos de los valores y vectores característicos'),
(131, 'la-diagonalizacin', 'La diagonalización'),
(132, 'mtodos-iterativos-para-calcular-valores-caractersticos', 'Métodos iterativos para calcular valores característicos'),
(133, 'aplicaciones-de-los-valores-y-vectores-caractersticos', 'Aplicaciones de los valores y vectores característicos'),
(134, 'ortogonalidad-en-el-espacio', 'Ortogonalidad en el espacio'),
(135, 'diagonalizacin-ortogonal-de-matrices-simtricas-y-el-teorema-espectral', 'Diagonalización ortogonal de matrices simétricas y el teorema espectral'),
(136, 'forma-cannica-de-jordn', 'Forma canónica de Jordán'),
(137, 'espacios-con-producto-interno', 'Espacios con producto interno'),
(138, 'producto-punto-complejo-y-la-matriz-hermitiana', 'Producto punto complejo y la matriz hermitiana'),
(139, 'normas', 'Normas'),
(140, 'descomposicin-del-valor-singular', 'Descomposición del valor singular'),
(141, 'aplicaciones-formas-cuadrticas', 'Aplicaciones-Formas cuadráticas'),
(142, 'aplicaciones-minimos-cuadrados', 'Aplicaciones-Minimos cuadrados'),
(143, 'aproximacion-de-funciones', 'Aproximacion de funciones'),
(144, 'contenidos-en-general', 'Contenidos en general'),
(145, '1-suma-resta-multiplicacin-algebraica-y-uso-de-parntesis', '1-Suma, resta, multiplicación algebraica y uso de paréntesis'),
(146, '2-divisin-algebraica', '2-División algebraica'),
(147, '3-productos-notables', '3-Productos notables'),
(148, '4-descomposicin-factorial', '4-Descomposición factorial'),
(149, '5-mximo-comn-divisor', '5-Máximo común divisor'),
(150, '6-mnimo-comn-mltiplo', '6-Mínimo común múltiplo'),
(151, '7-reduccin-de-fracciones-algebraicas', '7-Reducción de fracciones algebraicas'),
(152, '8-operaciones-con-fracciones-algebraicas', '8-Operaciones con fracciones algebraicas'),
(153, '9-potenciacin-y-teora-de-los-exponentes', '9-Potenciación y teoría de los exponentes'),
(154, '10-radicales', '10-Radicales'),
(155, '11-operaciones-con-cantidades-imaginarias', '11-Operaciones con cantidades imaginarias'),
(156, '12-ecuaciones-de-primer-grado-con-una-incgnita', '12-Ecuaciones de primer grado con una incógnita'),
(157, '13-aplicaciones-de-las-ecuaciones-de-primer-grado-con-una-incgnita', '13-Aplicaciones de las ecuaciones de primer grado con una incógnita'),
(158, '14-ecuaciones-fraccionarias-de-primer-grado-con-una-incgnita', '14-Ecuaciones fraccionarias de primer grado con una incógnita'),
(159, '15-aplicaciones-de-las-ecuaciones-fraccionarias', '15-Aplicaciones de las ecuaciones fraccionarias'),
(160, '16-ecuaciones-de-segundo-grado-con-una-incgnita', '16-Ecuaciones de segundo grado con una incógnita'),
(161, '17-aplicaciones-de-las-ecuaciones-de-segundo-grado-con-una-incgnita', '17-Aplicaciones de las ecuaciones de segundo grado con una incógnita'),
(162, 'contenidos-generales', 'Contenidos generales'),
(163, 'grficas-y-funciones', 'Gráficas y funciones'),
(164, 'funciones-polinomiales', 'Funciones polinomiales'),
(165, 'funciones-racionales', 'Funciones racionales'),
(166, 'funciones-exponencial-y-logartmica', 'Funciones exponencial y logarítmica'),
(167, 'sistemas-de-ecuaciones-y-desigualdades', 'Sistemas de ecuaciones y desigualdades'),
(168, 'introduccin-al-algebra-lineal', 'Introducción al algebra lineal'),
(169, 'sucesiones-series-y-combinaciones', 'Sucesiones, series y combinaciones'),
(170, 'contenidos-generales', 'Contenidos generales'),
(171, 'medidas-y-razones-de-los-triangulos-rectangulos', 'Medidas y razones de los triangulos rectangulos'),
(172, 'funciones-trigonometricas', 'Funciones trigonometricas'),
(173, 'graficas-de-las-funciones-trigonometricas', 'Graficas de las funciones trigonometricas'),
(174, 'identidades-trigonometricas', 'Identidades trigonometricas'),
(175, 'funciones-trignometricas-inversas', 'Funciones trignometricas inversas'),
(176, 'ecuaciones-y-desigualdades-trignometricas', 'Ecuaciones y desigualdades trignometricas'),
(177, 'leyes-de-los-angulos', 'Leyes de los angulos'),
(178, 'coordenadas-polares', 'Coordenadas polares'),
(179, 'contenidos-generales', 'Contenidos generales'),
(180, 'la-recta-formas-y-ecuaciones', 'La recta – Formas y ecuaciones'),
(181, 'la-recta-mas-operaciones', 'La recta – Mas operaciones'),
(182, 'introduccin-a-los-lugares-geomtricos', 'Introducción a los lugares geométricos'),
(183, 'el-tringulo', 'El triángulo'),
(184, 'el-circulo', 'El circulo'),
(185, 'la-parbola', 'La parábola'),
(186, 'la-elipse', 'La elipse'),
(187, 'la-hiprbola', 'La hipérbola'),
(188, 'coordenas-polares', 'Coordenas polares'),
(189, 'contenidos-en-general', 'Contenidos en general'),
(190, 'conceptos-bsicos-en-la-estadstica', 'Conceptos básicos en la estadística'),
(191, 'presentacin-de-datos', 'Presentación de datos'),
(192, 'medidas-de-tendencia-central', 'Medidas de tendencia central'),
(193, 'medidas-de-variacin-y-dispersin', 'Medidas de variación y dispersión'),
(194, 'medidas-de-posicin-relativa', 'Medidas de posición relativa'),
(195, 'probabilidad-1-conteo', 'Probabilidad 1 - Conteo'),
(196, 'probabilidad-2-tipos-de-probabilidad', 'Probabilidad 2 – Tipos de probabilidad'),
(197, 'distribucin-de-probabilidades-discretas', 'Distribución de probabilidades discretas'),
(198, 'distribucin-de-probabilidad-normal', 'Distribución de probabilidad normal'),
(199, 'diseo-bsico-de-una-muestra', 'Diseño básico de una muestra'),
(200, 'distribuciones-mustrales', 'Distribuciones muéstrales'),
(201, 'estimacin-de-la-proporcin-de-una-poblacin', 'Estimación de la proporción de una población'),
(202, 'estimacin-de-la-media-poblacional-mu-con-sigma-conocida', 'Estimación de la media poblacional mu con sigma conocida'),
(203, '-estimacin-de-la-media-poblacional-con-simga-desconocida', ' Estimación de la media poblacional ? con simga desconocida'),
(204, 'estimacin-de-la-varianza-poblacional', 'estimación de la varianza poblacional'),
(205, 'contenidos-en-general', 'Contenidos en general'),
(206, 'lmites-y-continuidad', 'Límites y continuidad'),
(207, 'introduccin-a-la-derivacin', 'Introducción a la derivación'),
(208, 'derivadas-implcitas', 'Derivadas implícitas'),
(209, 'derivadas-de-funciones-trigonomtricas-directas', 'Derivadas de funciones trigonométricas directas'),
(210, 'derivadas-de-funciones-trigonomtricas-inversas', 'Derivadas de funciones trigonométricas inversas'),
(211, 'derivadas-de-funciones-exponenciales-y-logartmicas', 'Derivadas de funciones exponenciales y logarítmicas'),
(212, 'razones', 'Razones'),
(213, 'regla-de-lhopital', 'Regla de lHopital'),
(214, 'aplicaciones-de-las-derivadas', 'Aplicaciones de las derivadas'),
(215, 'diferenciales', 'Diferenciales'),
(216, 'contenidos-en-general', 'Contenidos en general'),
(217, 'introduccin-a-la-integracin', 'Introducción a la integración'),
(218, 'integracin-de-funciones-trigonomtricas-directas', 'Integración de funciones trigonométricas directas'),
(219, 'integracin-de-funciones-trigonomtricas-inversas', 'Integración de funciones trigonométricas inversas'),
(220, 'integracin-de-funciones-exponenciales', 'Integración de funciones exponenciales'),
(221, 'integracin-de-funciones-logartmicas', 'Integración de funciones logarítmicas'),
(222, 'mtodos-de-integracin-integracin-por-partes', 'Métodos de integración: Integración por partes'),
(223, 'mtodos-de-integracin-sustitucin-trigonomtrica', 'Métodos de integración: Sustitución trigonométrica'),
(224, 'integracin-por-fracciones-parciales', 'Integración por fracciones parciales'),
(225, 'integracin-por-racionalizacin', 'Integración por racionalización'),
(226, 'integracin-definida', 'Integración definida'),
(227, 'integracin-definida-en-el-clculo-de-volmenes', 'Integración definida en el cálculo de volúmenes'),
(228, 'integracin-definida-mas-aplicaciones-a-la-geometra', 'Integración definida – Mas aplicaciones a la geometría'),
(229, 'tpicos-aplicaciones-a-la-fsica-economa-e-ingeniera', 'Tópicos – Aplicaciones a la Física, Economía e Ingeniería'),
(230, 'contenidos-en-general', 'Contenidos en general'),
(231, 'funciones-de-dos-o-mas-variables', 'Funciones de dos o mas variables'),
(232, 'limites-y-continuidad-para-funciones-de-2-o-mas-variables', 'Limites y continuidad para funciones de 2 o mas variables'),
(233, 'derivadas-parciales', 'Derivadas parciales'),
(234, 'derivadas-direccionales-y-gradientes', 'Derivadas direccionales y gradientes'),
(235, 'maximos-y-minimos-de-funciones-multivariable', 'Maximos y minimos de funciones multivariable'),
(236, 'maximos-y-minimos-restringidos-de-funciones-multivariable-multiplicadores-de-lagrange', 'Maximos y minimos restringidos de funciones multivariable, Multiplicadores de Lagrange'),
(237, 'introduccion-a-las-integrales-dobles', 'Introduccion a las integrales dobles'),
(238, 'integrales-dobles-en-coordenas-polares', 'Integrales dobles en coordenas polares'),
(239, 'superficies-parametricas', 'Superficies parametricas'),
(240, 'integrales-triples', 'Integrales Triples'),
(241, 'integrales-triples-en-coordenas-cilindricas-y-esfericas', 'Integrales Triples en coordenas cilindricas y esfericas'),
(242, 'jacobianos-y-cambios-de-variables-en-inegrales-triples', 'Jacobianos y cambios de variables en inegrales triples'),
(243, 'curvas-parametricas-en-el-espacio-3d', 'Curvas parametricas en el espacio 3D'),
(244, 'las-funciones-vectoriales', 'Las funciones vectoriales'),
(245, 'cambio-de-parametro-y-longitud-de-arco', 'Cambio de parametro y longitud de arco'),
(246, 'vectores-importantes', 'Vectores importantes'),
(247, 'curvatura', 'Curvatura'),
(248, 'coordenas-curvilineas', 'Coordenas curvilineas'),
(249, 'campos-vectoriales', 'Campos vectoriales'),
(250, 'el-operador-nabla', 'El operador nabla'),
(251, 'lapciano-y-ecuacion-de-laplace', 'Lapciano y Ecuacion de laplace'),
(252, 'divergencia', 'Divergencia'),
(253, 'rotacional', 'Rotacional'),
(254, 'integrales-de-linea', 'Integrales de linea'),
(255, 'teorema-de-green', 'Teorema de Green'),
(256, 'teorema-de-stokes', 'Teorema de Stokes'),
(257, 'integrales-de-superficie', 'Integrales de Superficie'),
(258, 'contenidos-en-general', 'Contenidos en general'),
(259, 'matrices-bsicas', 'Matrices básicas'),
(260, 'operaciones-bsicas-con-matrices', 'Operaciones básicas con matrices'),
(261, 'la-inversa-de-una-matriz', 'La inversa de una matriz'),
(262, 'la-transpuesta-de-una-matriz', 'La transpuesta de una matriz'),
(263, 'factorizacin-de-matrices', 'Factorización de matrices'),
(264, 'determinantes', 'Determinantes'),
(265, 'algunas-aplicaciones-de-los-determinantes', 'Algunas aplicaciones de los determinantes'),
(266, 'espacios-y-subespacios', 'Espacios y subespacios'),
(267, 'combinacin-lineal', 'Combinación lineal'),
(268, 'independencia-y-dependencia-lineal', 'Independencia  y dependencia lineal'),
(269, 'bases-dimensin-y-cambios-de-base', 'Bases, dimensión y cambios de base'),
(270, 'introduccin-a-las-transformaciones-lineales', 'Introducción a las transformaciones lineales'),
(271, 'representacin-matricial-de-una-transformacin-lineal', 'Representación matricial de una transformación lineal'),
(272, 'isometra', 'Isometría'),
(273, 'aplicaciones-prcticas-de-las-transformaciones-lineales', 'Aplicaciones prácticas de las transformaciones lineales'),
(274, 'conceptos-bsicos-de-los-valores-y-vectores-caractersticos', 'Conceptos básicos de los valores y vectores característicos'),
(275, 'la-diagonalizacin', 'La diagonalización'),
(276, 'mtodos-iterativos-para-calcular-valores-caractersticos', 'Métodos iterativos para calcular valores característicos'),
(277, 'aplicaciones-de-los-valores-y-vectores-caractersticos', 'Aplicaciones de los valores y vectores característicos'),
(278, 'ortogonalidad-en-el-espacio', 'Ortogonalidad en el espacio'),
(279, 'diagonalizacin-ortogonal-de-matrices-simtricas-y-el-teorema-espectral', 'Diagonalización ortogonal de matrices simétricas y el teorema espectral'),
(280, 'forma-cannica-de-jordn', 'Forma canónica de Jordán'),
(281, 'espacios-con-producto-interno', 'Espacios con producto interno'),
(282, 'producto-punto-complejo-y-la-matriz-hermitiana', 'Producto punto complejo y la matriz hermitiana'),
(283, 'normas', 'Normas'),
(284, 'descomposicin-del-valor-singular', 'Descomposición del valor singular'),
(285, 'aplicaciones-formas-cuadrticas', 'Aplicaciones-Formas cuadráticas'),
(286, 'aplicaciones-minimos-cuadrados', 'Aplicaciones-Minimos cuadrados'),
(287, 'aproximacion-de-funciones', 'Aproximacion de funciones'),
(288, 'contenidos-en-general', 'Contenidos en general');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuariosfise`
--

CREATE TABLE IF NOT EXISTS `usuariosfise` (
  `id_user` int(11) NOT NULL,
  `correo_user` varchar(55) NOT NULL,
  `name_user` varchar(55) NOT NULL,
  `type_user` varchar(20) DEFAULT NULL,
  `pais` varchar(20) DEFAULT NULL,
  `point_user` varchar(10) NOT NULL,
  `pass_user` varchar(15) NOT NULL,
  `fecha_registro_us` varchar(25) NOT NULL,
  `fecha_modificacion_us` varchar(25) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuariosfise`
--

INSERT INTO `usuariosfise` (`id_user`, `correo_user`, `name_user`, `type_user`, `pais`, `point_user`, `pass_user`, `fecha_registro_us`, `fecha_modificacion_us`) VALUES
(1, 'villagran_gg@hotmail.com', 'Memin', '0', '0', '216', 'qwe', '28-09-2015 17:00', '0'),
(2, 'gorron_tuzo@hotmail.com', 'guillermoTRv', 'Maestro', 'MÃ©xico', '95', 'qwe', '30-09-2015 09:40', '30-09-2015 10:31'),
(3, 'as@h', 'gorron_tuzo@hotmail.com', NULL, NULL, '20', '123a', '30-09-2015 10:34', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_practicas`
--

CREATE TABLE IF NOT EXISTS `usuarios_practicas` (
  `id_usprc` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_practica` int(11) DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL,
  `ejercicio` int(11) NOT NULL,
  `correctos` int(11) NOT NULL,
  `materia` varchar(30) NOT NULL,
  `modulo` varchar(140) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios_practicas`
--

INSERT INTO `usuarios_practicas` (`id_usprc`, `id_usuario`, `id_practica`, `estado`, `ejercicio`, `correctos`, `materia`, `modulo`) VALUES
(1, 1, 1, 'realizada', 13, 1, 'Algebra lineal', 'Matrices');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `votos_reco`
--

CREATE TABLE IF NOT EXISTS `votos_reco` (
  `id_voto_r` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_comentreco` int(11) NOT NULL,
  `data_rvoto` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `votos_reco`
--

INSERT INTO `votos_reco` (`id_voto_r`, `id_user`, `id_comentreco`, `data_rvoto`) VALUES
(9, 2, 16, '2015-10-28 13:58:20'),
(10, 2, 15, '2015-10-28 13:58:26'),
(11, 2, 9, '2015-10-28 13:58:29'),
(12, 2, 11, '2015-10-28 13:58:33'),
(13, 2, 17, '2015-10-28 13:58:38'),
(14, 2, 18, '2015-10-28 13:59:01'),
(15, 2, 19, '2015-10-28 14:04:21'),
(16, 2, 20, '2015-10-28 14:07:27'),
(17, 2, 14, '2015-10-28 15:27:38'),
(18, 2, 13, '2015-10-28 15:27:54'),
(19, 2, 21, '2015-10-28 15:52:43'),
(20, 1, 23, '2015-10-28 22:33:31'),
(21, 2, 24, '2015-10-29 01:31:43'),
(22, 2, 28, '2015-10-29 14:28:24'),
(23, 2, 30, '2015-10-29 15:35:56'),
(24, 2, 26, '2015-10-29 15:36:10'),
(25, 2, 25, '2015-10-29 15:36:11'),
(26, 2, 31, '2015-10-29 15:39:54'),
(27, 2, 33, '2015-10-29 15:41:06'),
(28, 2, 34, '2015-10-29 15:41:07'),
(29, 2, 35, '2015-10-29 16:12:44'),
(30, 2, 36, '2015-10-29 16:32:26'),
(31, 2, 38, '2015-11-07 00:11:22'),
(32, 2, 39, '2015-11-07 00:13:03'),
(33, 2, 40, '2015-11-07 00:16:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `votos_user`
--

CREATE TABLE IF NOT EXISTS `votos_user` (
  `id_voto` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_ficha` int(11) NOT NULL,
  `matter` varchar(30) NOT NULL,
  `fecha_voto` varchar(25) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `votos_user`
--

INSERT INTO `votos_user` (`id_voto`, `id_user`, `id_ficha`, `matter`, `fecha_voto`) VALUES
(11, 2, 25, 'Algebra basica', '01-10-2015 23:29'),
(12, 2, 28, 'Algebra basica', '02-10-2015 00:56'),
(13, 2, 30, 'Gemetria analitica', '02-10-2015 12:41'),
(14, 2, 32, 'Calculo diferencial', '03-10-2015 12:08'),
(15, 2, 33, 'Calculo diferencial', '03-10-2015 16:06'),
(16, 2, 35, 'Estadistica', '04-10-2015 14:07'),
(18, 2, 29, 'Algebra basica', '04-10-2015 18:59'),
(19, 2, 1, 'Algebra basica', '05-10-2015 15:48'),
(20, 2, 39, 'Estadistica', '06-10-2015 10:01'),
(23, 2, 23, '', '12-10-2015 14:28'),
(24, 2, 41, '', '12-10-2015 14:29'),
(25, 2, 7, '', '12-10-2015 14:55'),
(26, 2, 42, '', '12-10-2015 15:22'),
(27, 2, 5, '', '12-10-2015 15:22'),
(28, 2, 22, '', '12-10-2015 16:49'),
(29, 2, 45, '', '12-10-2015 17:42'),
(30, 2, 59, '', '12-10-2015 22:34'),
(31, 2, 56, '', '21-10-2015 22:27'),
(32, 2, 61, '', '06-11-2015 23:22'),
(33, 2, 18, '', '16-02-2016 13:03'),
(34, 2, 0, '', '16-02-2016 13:04'),
(35, 1, 111, '', '05-04-2016 18:01');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentarios_mat`
--
ALTER TABLE `comentarios_mat`
  ADD PRIMARY KEY (`id_comentmat`), ADD KEY `id_fichamat` (`id_fichamat`), ADD KEY `id_user` (`id_user`);

--
-- Indices de la tabla `coment_reco`
--
ALTER TABLE `coment_reco`
  ADD PRIMARY KEY (`id_comentreco`), ADD KEY `id_reco` (`id_reco`), ADD KEY `id_user` (`id_user`);

--
-- Indices de la tabla `ejercicios`
--
ALTER TABLE `ejercicios`
  ADD PRIMARY KEY (`id_ejerc`), ADD KEY `id_lprc` (`id_lprc`);

--
-- Indices de la tabla `ficha_contenido_materia`
--
ALTER TABLE `ficha_contenido_materia`
  ADD PRIMARY KEY (`id_fichamat`,`titulo`), ADD KEY `id_user` (`id_user`);

--
-- Indices de la tabla `img_ejerc`
--
ALTER TABLE `img_ejerc`
  ADD PRIMARY KEY (`id_imgejec`), ADD KEY `id_ejerc` (`id_ejerc`);

--
-- Indices de la tabla `img_materias`
--
ALTER TABLE `img_materias`
  ADD PRIMARY KEY (`id_imgfichamat`), ADD KEY `id_fichamat` (`id_fichamat`);

--
-- Indices de la tabla `img_option`
--
ALTER TABLE `img_option`
  ADD PRIMARY KEY (`id_iopt`), ADD KEY `id_option` (`id_option`);

--
-- Indices de la tabla `list_contentarch`
--
ALTER TABLE `list_contentarch`
  ADD PRIMARY KEY (`id_listcontent`), ADD KEY `id_user` (`id_user`);

--
-- Indices de la tabla `list_content_rel`
--
ALTER TABLE `list_content_rel`
  ADD PRIMARY KEY (`id_rel`), ADD KEY `id_listcontent` (`id_listcontent`), ADD KEY `id_user` (`id_user`);

--
-- Indices de la tabla `l_prc`
--
ALTER TABLE `l_prc`
  ADD PRIMARY KEY (`id_lprc`);

--
-- Indices de la tabla `modulos_url`
--
ALTER TABLE `modulos_url`
  ADD PRIMARY KEY (`id_modurl`);

--
-- Indices de la tabla `notification_users`
--
ALTER TABLE `notification_users`
  ADD PRIMARY KEY (`id_notification`), ADD KEY `id_user` (`id_user`);

--
-- Indices de la tabla `opcion`
--
ALTER TABLE `opcion`
  ADD PRIMARY KEY (`id_option`), ADD KEY `id_ejerc` (`id_ejerc`);

--
-- Indices de la tabla `practicas_url`
--
ALTER TABLE `practicas_url`
  ADD PRIMARY KEY (`id_relurl`);

--
-- Indices de la tabla `preferent_user`
--
ALTER TABLE `preferent_user`
  ADD PRIMARY KEY (`id_relpreferent`);

--
-- Indices de la tabla `recomendaciones_mat`
--
ALTER TABLE `recomendaciones_mat`
  ADD PRIMARY KEY (`id_reco`), ADD KEY `id_user` (`id_user`);

--
-- Indices de la tabla `reportes_comentarios`
--
ALTER TABLE `reportes_comentarios`
  ADD PRIMARY KEY (`id_reportcomentarios`);

--
-- Indices de la tabla `reportes_fichas`
--
ALTER TABLE `reportes_fichas`
  ADD PRIMARY KEY (`id_reportficha`);

--
-- Indices de la tabla `retos_pack`
--
ALTER TABLE `retos_pack`
  ADD PRIMARY KEY (`id_retos`);

--
-- Indices de la tabla `tema_unidad_materias`
--
ALTER TABLE `tema_unidad_materias`
  ADD PRIMARY KEY (`id_temalg`), ADD KEY `id_unidades` (`id_unidades`);

--
-- Indices de la tabla `tipos_mat`
--
ALTER TABLE `tipos_mat`
  ADD PRIMARY KEY (`id_tipomat`);

--
-- Indices de la tabla `tm_limpias`
--
ALTER TABLE `tm_limpias`
  ADD PRIMARY KEY (`id_tml`);

--
-- Indices de la tabla `tm_relacion`
--
ALTER TABLE `tm_relacion`
  ADD PRIMARY KEY (`id_tmrel`);

--
-- Indices de la tabla `unidades_materias`
--
ALTER TABLE `unidades_materias`
  ADD PRIMARY KEY (`clave_un`);

--
-- Indices de la tabla `uni_limpias`
--
ALTER TABLE `uni_limpias`
  ADD PRIMARY KEY (`id_unl`);

--
-- Indices de la tabla `usuariosfise`
--
ALTER TABLE `usuariosfise`
  ADD PRIMARY KEY (`id_user`,`correo_user`);

--
-- Indices de la tabla `usuarios_practicas`
--
ALTER TABLE `usuarios_practicas`
  ADD PRIMARY KEY (`id_usprc`);

--
-- Indices de la tabla `votos_reco`
--
ALTER TABLE `votos_reco`
  ADD PRIMARY KEY (`id_voto_r`), ADD KEY `id_user` (`id_user`);

--
-- Indices de la tabla `votos_user`
--
ALTER TABLE `votos_user`
  ADD PRIMARY KEY (`id_voto`), ADD KEY `id_user` (`id_user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentarios_mat`
--
ALTER TABLE `comentarios_mat`
  MODIFY `id_comentmat` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT de la tabla `coment_reco`
--
ALTER TABLE `coment_reco`
  MODIFY `id_comentreco` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT de la tabla `ejercicios`
--
ALTER TABLE `ejercicios`
  MODIFY `id_ejerc` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT de la tabla `ficha_contenido_materia`
--
ALTER TABLE `ficha_contenido_materia`
  MODIFY `id_fichamat` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=112;
--
-- AUTO_INCREMENT de la tabla `img_ejerc`
--
ALTER TABLE `img_ejerc`
  MODIFY `id_imgejec` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=99;
--
-- AUTO_INCREMENT de la tabla `img_materias`
--
ALTER TABLE `img_materias`
  MODIFY `id_imgfichamat` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT de la tabla `img_option`
--
ALTER TABLE `img_option`
  MODIFY `id_iopt` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `list_contentarch`
--
ALTER TABLE `list_contentarch`
  MODIFY `id_listcontent` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `list_content_rel`
--
ALTER TABLE `list_content_rel`
  MODIFY `id_rel` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT de la tabla `l_prc`
--
ALTER TABLE `l_prc`
  MODIFY `id_lprc` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `modulos_url`
--
ALTER TABLE `modulos_url`
  MODIFY `id_modurl` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `notification_users`
--
ALTER TABLE `notification_users`
  MODIFY `id_notification` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=168;
--
-- AUTO_INCREMENT de la tabla `opcion`
--
ALTER TABLE `opcion`
  MODIFY `id_option` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `practicas_url`
--
ALTER TABLE `practicas_url`
  MODIFY `id_relurl` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `preferent_user`
--
ALTER TABLE `preferent_user`
  MODIFY `id_relpreferent` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT de la tabla `recomendaciones_mat`
--
ALTER TABLE `recomendaciones_mat`
  MODIFY `id_reco` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT de la tabla `reportes_comentarios`
--
ALTER TABLE `reportes_comentarios`
  MODIFY `id_reportcomentarios` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT de la tabla `reportes_fichas`
--
ALTER TABLE `reportes_fichas`
  MODIFY `id_reportficha` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `retos_pack`
--
ALTER TABLE `retos_pack`
  MODIFY `id_retos` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `tema_unidad_materias`
--
ALTER TABLE `tema_unidad_materias`
  MODIFY `id_temalg` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=729;
--
-- AUTO_INCREMENT de la tabla `tipos_mat`
--
ALTER TABLE `tipos_mat`
  MODIFY `id_tipomat` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tm_limpias`
--
ALTER TABLE `tm_limpias`
  MODIFY `id_tml` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1341;
--
-- AUTO_INCREMENT de la tabla `tm_relacion`
--
ALTER TABLE `tm_relacion`
  MODIFY `id_tmrel` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=137;
--
-- AUTO_INCREMENT de la tabla `uni_limpias`
--
ALTER TABLE `uni_limpias`
  MODIFY `id_unl` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=289;
--
-- AUTO_INCREMENT de la tabla `usuariosfise`
--
ALTER TABLE `usuariosfise`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `usuarios_practicas`
--
ALTER TABLE `usuarios_practicas`
  MODIFY `id_usprc` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `votos_reco`
--
ALTER TABLE `votos_reco`
  MODIFY `id_voto_r` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT de la tabla `votos_user`
--
ALTER TABLE `votos_user`
  MODIFY `id_voto` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `list_contentarch`
--
ALTER TABLE `list_contentarch`
ADD CONSTRAINT `list_contentarch_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `usuariosfise` (`id_user`);

--
-- Filtros para la tabla `list_content_rel`
--
ALTER TABLE `list_content_rel`
ADD CONSTRAINT `list_content_rel_ibfk_1` FOREIGN KEY (`id_listcontent`) REFERENCES `list_contentarch` (`id_listcontent`),
ADD CONSTRAINT `list_content_rel_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `usuariosfise` (`id_user`);

--
-- Filtros para la tabla `notification_users`
--
ALTER TABLE `notification_users`
ADD CONSTRAINT `notification_users_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `usuariosfise` (`id_user`);

--
-- Filtros para la tabla `votos_reco`
--
ALTER TABLE `votos_reco`
ADD CONSTRAINT `votos_reco_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `usuariosfise` (`id_user`);

--
-- Filtros para la tabla `votos_user`
--
ALTER TABLE `votos_user`
ADD CONSTRAINT `votos_user_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `usuariosfise` (`id_user`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
