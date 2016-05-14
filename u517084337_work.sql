
-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 10, 2016 at 07:37 AM
-- Server version: 10.0.22-MariaDB
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `u517084337_work`
--

-- --------------------------------------------------------

--
-- Table structure for table `clientes`
--

CREATE TABLE IF NOT EXISTS `clientes` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `name_cliente` varchar(30) NOT NULL,
  `name_get` varchar(30) NOT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `name_cliente`, `name_get`) VALUES
(1, 'Senasica', 'senasica'),
(2, 'Cobach', 'cobach'),
(3, 'Caev', 'caev'),
(4, 'FND', 'fnd'),
(5, 'Banobras', 'banobras'),
(6, 'Innn', 'innn');

-- --------------------------------------------------------

--
-- Table structure for table `inmuebles`
--

CREATE TABLE IF NOT EXISTS `inmuebles` (
  `id_inmueble` int(11) NOT NULL AUTO_INCREMENT,
  `name_inmueble` varchar(35) NOT NULL,
  `cliente` varchar(20) NOT NULL DEFAULT 'NOT NULL',
  `calle` varchar(40) NOT NULL,
  `colonia` varchar(30) NOT NULL,
  `num_exterior` int(11) NOT NULL,
  `num_interior` int(11) NOT NULL,
  `codigo_postal` int(11) NOT NULL,
  `entidad` varchar(30) NOT NULL,
  `demarcacion` varchar(30) NOT NULL,
  `zona` varchar(15) NOT NULL,
  `Supervisor` varchar(30) NOT NULL,
  `fecha_registro_inmueble` datetime NOT NULL,
  `fecha_mod_inmueble` datetime NOT NULL,
  `estado_repo` char(2) DEFAULT NULL,
  `empresa` int(11) NOT NULL,
  `referencia` varchar(400) NOT NULL,
  PRIMARY KEY (`id_inmueble`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `inmuebles`
--

INSERT INTO `inmuebles` (`id_inmueble`, `name_inmueble`, `cliente`, `calle`, `colonia`, `num_exterior`, `num_interior`, `codigo_postal`, `entidad`, `demarcacion`, `zona`, `Supervisor`, `fecha_registro_inmueble`, `fecha_mod_inmueble`, `estado_repo`, `empresa`, `referencia`) VALUES
(9, 'Bodejas Vallejo', 'Senasica', 'Norte 45', 'Coautepec Barrio Bajo', 122, 12, 78313, 'Ciudad de MÃ©xico', 'Atizapan', 'Poniente Norte', 'Aun no cuenta', '2016-05-06 00:00:00', '2016-05-06 00:00:00', 'no', 1, 'Sobre colina 5 cuadras, topandon con central CFE'),
(8, 'Bodegas Atizapan', 'Senasica', 'Francisco Barrera', 'Alfredo V.Bonfil', 2, 991, 52940, 'Ciudad de MÃ©xico', 'Atizapan', 'Poniente Norte', 'Aun no cuenta', '2016-05-06 00:00:00', '2016-05-06 00:00:00', 'no', 1, 'Calle en doble sentido');

-- --------------------------------------------------------

--
-- Table structure for table `registros_jornada`
--

CREATE TABLE IF NOT EXISTS `registros_jornada` (
  `id_reg_j` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `type_user` varchar(10) NOT NULL,
  `data_entrada` datetime NOT NULL,
  `data_salida` datetime NOT NULL,
  `asistencia` date NOT NULL,
  PRIMARY KEY (`id_reg_j`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `registro_system`
--

CREATE TABLE IF NOT EXISTS `registro_system` (
  `id_reg_sys` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) DEFAULT NULL,
  `type_user` varchar(10) NOT NULL,
  `data_entrada` datetime NOT NULL,
  `data_salida` datetime DEFAULT NULL,
  PRIMARY KEY (`id_reg_sys`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=100 ;

--
-- Dumping data for table `registro_system`
--

INSERT INTO `registro_system` (`id_reg_sys`, `id_usuario`, `type_user`, `data_entrada`, `data_salida`) VALUES
(1, NULL, 'supervisor', '2016-04-21 00:00:00', NULL),
(2, NULL, 'administra', '2016-04-21 00:00:00', NULL),
(3, NULL, 'administra', '2016-04-21 00:00:00', NULL),
(4, NULL, 'administra', '2016-04-21 00:00:00', NULL),
(5, NULL, 'administra', '2016-04-21 00:00:00', NULL),
(6, NULL, 'administra', '2016-04-21 00:00:00', NULL),
(7, NULL, 'administra', '2016-04-21 00:00:00', NULL),
(8, NULL, 'administra', '2016-04-21 00:00:00', NULL),
(9, NULL, 'administra', '2016-04-22 00:00:00', NULL),
(10, NULL, 'administra', '2016-04-22 00:00:00', NULL),
(11, NULL, 'administra', '2016-04-22 00:00:00', NULL),
(12, NULL, 'administra', '2016-04-22 00:00:00', NULL),
(13, NULL, 'administra', '2016-04-22 00:00:00', NULL),
(14, NULL, 'Mario', '2016-04-22 00:00:00', NULL),
(15, NULL, 'administra', '2016-04-22 00:00:00', NULL),
(16, NULL, 'Mario', '2016-04-22 00:00:00', NULL),
(17, NULL, 'Mario', '2016-04-22 00:00:00', NULL),
(18, NULL, 'Mario', '2016-04-22 00:00:00', NULL),
(19, NULL, 'Mario', '2016-04-22 00:00:00', NULL),
(20, NULL, 'administra', '2016-04-22 00:00:00', NULL),
(21, NULL, 'administra', '2016-04-22 00:00:00', NULL),
(22, NULL, 'administra', '2016-04-22 00:00:00', NULL),
(23, NULL, 'administra', '2016-04-22 00:00:00', NULL),
(24, NULL, 'administra', '2016-04-22 00:00:00', NULL),
(25, NULL, 'Mario', '2016-04-22 00:00:00', NULL),
(26, NULL, 'administra', '2016-04-22 00:00:00', NULL),
(27, NULL, 'administra', '2016-04-24 00:00:00', NULL),
(28, NULL, 'administra', '2016-04-24 00:00:00', NULL),
(29, NULL, 'Mario', '2016-04-25 00:00:00', NULL),
(30, NULL, 'Mario', '2016-04-25 00:00:00', NULL),
(31, NULL, 'administra', '2016-04-25 00:00:00', NULL),
(32, NULL, 'administra', '2016-04-25 00:00:00', NULL),
(33, NULL, 'administra', '2016-04-25 00:00:00', NULL),
(34, NULL, 'administra', '2016-04-25 00:00:00', NULL),
(35, NULL, 'administra', '2016-04-25 00:00:00', NULL),
(36, NULL, 'Mario', '2016-04-25 00:00:00', NULL),
(37, NULL, 'administra', '2016-04-25 00:00:00', NULL),
(38, NULL, 'Mario', '2016-04-25 00:00:00', NULL),
(39, NULL, 'administra', '2016-04-25 00:00:00', NULL),
(40, NULL, 'Mario', '2016-04-25 00:00:00', NULL),
(41, NULL, 'Mario', '2016-04-26 00:00:00', NULL),
(42, NULL, 'Mario', '2016-04-26 00:00:00', NULL),
(43, NULL, 'Mario', '2016-04-26 00:00:00', NULL),
(44, NULL, 'administra', '2016-04-26 00:00:00', NULL),
(45, NULL, 'administra', '2016-04-26 00:00:00', NULL),
(46, NULL, 'administra', '2016-04-26 00:00:00', NULL),
(47, NULL, 'administra', '2016-04-27 00:00:00', NULL),
(48, NULL, 'administra', '2016-04-27 00:00:00', NULL),
(49, NULL, 'administra', '2016-04-27 00:00:00', NULL),
(50, NULL, 'administra', '2016-04-27 00:00:00', NULL),
(51, NULL, 'administra', '2016-04-27 00:00:00', NULL),
(52, NULL, 'administra', '2016-04-28 00:00:00', NULL),
(53, NULL, 'administra', '2016-04-28 00:00:00', NULL),
(54, NULL, 'Mario', '2016-04-28 00:00:00', NULL),
(55, NULL, 'Mario', '2016-04-28 00:00:00', NULL),
(56, NULL, 'administra', '2016-04-28 00:00:00', NULL),
(57, NULL, 'Mario', '2016-04-28 00:00:00', NULL),
(58, NULL, 'administra', '2016-04-28 00:00:00', NULL),
(59, NULL, 'administra', '2016-04-28 00:00:00', NULL),
(60, NULL, 'administra', '2016-04-29 00:00:00', NULL),
(61, NULL, 'administra', '2016-04-29 00:00:00', NULL),
(62, NULL, 'Mario', '2016-04-29 00:00:00', NULL),
(63, NULL, 'Mario', '2016-04-29 00:00:00', NULL),
(64, NULL, 'Mario', '2016-04-29 00:00:00', NULL),
(65, NULL, 'Mario', '2016-04-29 00:00:00', NULL),
(66, NULL, 'administra', '2016-04-29 00:00:00', NULL),
(67, NULL, 'administra', '2016-04-30 00:00:00', NULL),
(68, NULL, 'administra', '2016-05-01 00:00:00', NULL),
(69, NULL, 'administra', '2016-05-01 00:00:00', NULL),
(70, NULL, 'administra', '2016-05-02 00:00:00', NULL),
(71, NULL, 'administra', '2016-05-02 00:00:00', NULL),
(72, NULL, 'administra', '2016-05-02 00:00:00', NULL),
(73, NULL, 'administra', '2016-05-02 00:00:00', NULL),
(74, NULL, 'administra', '2016-05-02 00:00:00', NULL),
(75, NULL, 'Mario', '2016-05-02 00:00:00', NULL),
(76, NULL, 'Mario', '2016-05-02 00:00:00', NULL),
(77, NULL, 'administra', '2016-05-02 00:00:00', NULL),
(78, NULL, 'administra', '2016-05-03 00:00:00', NULL),
(79, NULL, 'administra', '2016-05-04 00:00:00', NULL),
(80, NULL, 'Mario', '2016-05-04 00:00:00', NULL),
(81, NULL, 'Mario', '2016-05-04 00:00:00', NULL),
(82, NULL, 'Mario', '2016-05-04 00:00:00', NULL),
(83, NULL, 'administra', '2016-05-04 00:00:00', NULL),
(84, NULL, 'administra', '2016-05-04 00:00:00', NULL),
(85, NULL, 'administra', '2016-05-04 00:00:00', NULL),
(86, NULL, 'administra', '2016-05-04 00:00:00', NULL),
(87, NULL, 'Mario', '2016-05-05 00:00:00', NULL),
(88, NULL, 'administra', '2016-05-05 00:00:00', NULL),
(89, NULL, 'Mario', '2016-05-05 00:00:00', NULL),
(90, NULL, 'Mario', '2016-05-05 00:00:00', NULL),
(91, NULL, 'administra', '2016-05-05 00:00:00', NULL),
(92, NULL, 'administra', '2016-05-05 00:00:00', NULL),
(93, NULL, 'administra', '2016-05-05 00:00:00', NULL),
(94, NULL, 'administra', '2016-05-06 00:00:00', NULL),
(95, NULL, 'administra', '2016-05-06 00:00:00', NULL),
(96, NULL, 'administra', '2016-05-06 00:00:00', NULL),
(97, NULL, 'Mario', '2016-05-06 00:00:00', NULL),
(98, NULL, 'Mario', '2016-05-06 00:00:00', NULL),
(99, NULL, 'administra', '2016-05-09 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `usuarios_datos_basicos`
--

CREATE TABLE IF NOT EXISTS `usuarios_datos_basicos` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_g` varchar(40) NOT NULL,
  `apellido_p` varchar(35) NOT NULL,
  `apellido_m` varchar(35) NOT NULL,
  `edad` varchar(11) NOT NULL,
  `curp` char(18) NOT NULL,
  `type_usuario` varchar(40) NOT NULL,
  `calle` varchar(40) NOT NULL,
  `colonia` varchar(30) NOT NULL,
  `num_exterior` int(11) NOT NULL,
  `num_interior` int(11) NOT NULL,
  `codigo_postal` int(11) NOT NULL,
  `entidad` varchar(30) NOT NULL,
  `demarcacion` varchar(30) NOT NULL,
  `num_movil` varchar(20) NOT NULL,
  `name_img` varchar(15) NOT NULL,
  `pass_xc` varchar(20) NOT NULL,
  `inmueble_asign` varchar(35) NOT NULL,
  `supervisor` varchar(40) NOT NULL,
  `costo_serv` int(11) NOT NULL,
  `turno` varchar(15) NOT NULL,
  `horario_laboral` varchar(13) NOT NULL,
  `tipo_pago` varchar(10) NOT NULL,
  `fecha_inicio_contrato` date NOT NULL,
  `fecha_finalizacion` date NOT NULL,
  `fecha_registro_bd` datetime NOT NULL,
  `fecha_mod_bd` datetime DEFAULT NULL,
  `estado_repo` char(2) DEFAULT NULL,
  `puesto` varchar(10) DEFAULT 'NOT NULL',
  `empresa` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `usuarios_datos_basicos`
--

INSERT INTO `usuarios_datos_basicos` (`id_usuario`, `nombre_g`, `apellido_p`, `apellido_m`, `edad`, `curp`, `type_usuario`, `calle`, `colonia`, `num_exterior`, `num_interior`, `codigo_postal`, `entidad`, `demarcacion`, `num_movil`, `name_img`, `pass_xc`, `inmueble_asign`, `supervisor`, `costo_serv`, `turno`, `horario_laboral`, `tipo_pago`, `fecha_inicio_contrato`, `fecha_finalizacion`, `fecha_registro_bd`, `fecha_mod_bd`, `estado_repo`, `puesto`, `empresa`) VALUES
(20, 'Mario', 'Martinez', 'Villagran', '28', 'VIGG960307HMCLRL00', 'gorron_tuzo@hotmail.com', 'Francisco Barrera', 'Bonfil', 12, 12, 42133, 'Estado de Mexico', 'Atizapan de Zaragoza', '5512431243', 'as', 'qwe', 'Bodegas Atizapan', 'Aun no cuenta', 121212, '12-12', '12', 'mensual', '2016-03-04', '2017-01-03', '2016-05-06 00:00:00', NULL, 'no', 'guardia', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
