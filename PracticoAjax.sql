-- phpMyAdmin SQL Dump
-- version 3.0.0
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 22-03-2009 a las 20:56:42
-- Versión del servidor: 5.0.45
-- Versión de PHP: 5.2.3-1ubuntu6.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `PracticoAjax`
--

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `IdUsuario` int(11) NOT NULL auto_increment,
  `Usuario` varchar(50) character set utf8 collate utf8_unicode_ci NOT NULL,
  `Clave` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL,
  `Nombre` varchar(200) character set utf8 collate utf8_unicode_ci NOT NULL,
  `Apellido` varchar(200) character set utf8 collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`IdUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=5;

--
-- Volcar la base de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`IdUsuario`, `Usuario`, `Clave`, `Nombre`, `Apellido`) VALUES(1, 'pmartinez', 'e10adc3949ba59abbe56e057f20f883e','Pablo','Martinez');
INSERT INTO `usuarios` (`IdUsuario`, `Usuario`, `Clave`, `Nombre`, `Apellido`) VALUES(2, 'aperez', 'e10adc3949ba59abbe56e057f20f883e','Adriana','Perez');
INSERT INTO `usuarios` (`IdUsuario`, `Usuario`, `Clave`, `Nombre`, `Apellido`) VALUES(3, 'malonso', 'e10adc3949ba59abbe56e057f20f883e','Martín','Alonso');
INSERT INTO `usuarios` (`IdUsuario`, `Usuario`, `Clave`, `Nombre`, `Apellido`) VALUES(4, 'vortiz', 'e10adc3949ba59abbe56e057f20f883e','Valeria','Ortiz');



-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contactos`
--

CREATE TABLE IF NOT EXISTS `contactos` (
  `IdContacto` int(11) NOT NULL auto_increment,
  `Nombre` varchar(200) character set utf8 collate utf8_unicode_ci NOT NULL,
  `Empresa` varchar(200) character set utf8 collate utf8_unicode_ci NOT NULL,
  `Telefono` varchar(20) character set utf8 collate utf8_unicode_ci NOT NULL,
  `Mail` varchar(50) character set utf8 collate utf8_unicode_ci NOT NULL,
  `Comentario` text character set utf8 collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`IdContacto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `contactos`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE IF NOT EXISTS `estados` (
  `id` int(5) unsigned NOT NULL auto_increment,
  `descripcion` varchar(100) NOT NULL,
  `idPais` int(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `codigo_pais` (`idPais`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=490 ;

--
-- Volcar la base de datos para la tabla `estados`
--

INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(1, 'Buenos Aires', 1);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(2, 'Capital Federal', 1);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(3, 'Catamarca', 1);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(4, 'Chaco', 1);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(5, 'Chubut', 1);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(6, 'Cordoba', 1);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(7, 'Corrientes', 1);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(8, 'Entre Rios', 1);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(9, 'Formosa', 1);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(10, 'Jujuy', 1);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(11, 'La Pampa', 1);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(12, 'La Rioja', 1);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(13, 'Mendoza', 1);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(14, 'Misiones', 1);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(15, 'Neuquen', 1);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(16, 'Rio Negro', 1);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(17, 'Salta', 1);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(18, 'San Juan', 1);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(19, 'San Luis', 1);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(20, 'Santa Cruz', 1);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(21, 'Santa Fe', 1);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(22, 'Santiago del Estero', 1);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(23, 'Tierra del Fuego', 1);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(24, 'Tucuman', 1);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(25, 'Chuquisaca', 2);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(26, 'Cochabamba', 2);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(27, 'Beni', 2);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(28, 'La Paz', 2);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(29, 'Oruro', 2);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(30, 'Pando', 2);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(31, 'Potosi', 2);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(32, 'Santa Cruz', 2);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(33, 'Tarija', 2);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(34, 'Acre', 3);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(35, 'Alagoas', 3);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(36, 'Amapa', 3);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(37, 'Amazonas', 3);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(38, 'Bahia', 3);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(39, 'Ceara', 3);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(40, 'Distrito Federal', 3);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(41, 'Espirito Santo', 3);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(42, 'Goias', 3);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(43, 'Maranhao', 3);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(44, 'Mato Grosso', 3);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(45, 'Mato Grosso do Sul', 3);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(46, 'Minas Gerais', 3);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(47, 'Para', 3);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(48, 'Paraiba', 3);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(49, 'Parana', 3);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(50, 'Pernambuco', 3);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(51, 'Piaui', 3);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(52, 'Rio de Janeiro', 3);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(53, 'Rio Grande do Norte', 3);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(54, 'Rio Grande do Sul', 3);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(55, 'Rondonia', 3);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(56, 'Roraima', 3);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(57, 'Santa Catarina', 3);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(58, 'Sao Paulo', 3);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(59, 'Sergipe', 3);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(60, 'Tocantins', 3);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(61, 'Alberta', 4);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(62, 'British Columbia', 4);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(63, 'Manitoba', 4);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(64, 'New Brunswick', 4);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(65, 'Newfoundland and Labrador', 4);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(66, 'Northwest Territories', 4);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(67, 'Nova Scotia', 4);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(68, 'Nunavut', 4);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(69, 'Ontario', 4);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(70, 'Prince Edward Island', 4);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(71, 'Quebec', 4);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(72, 'Saskatchewan', 4);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(73, 'Yukon Territory', 4);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(74, 'Antofagasta', 5);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(75, 'Araucania', 5);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(76, 'Atacama', 5);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(77, 'Bio-Bio', 5);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(78, 'Coquimbo', 5);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(79, 'Libertador General B.', 5);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(80, 'Los Lagos', 5);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(81, 'Magallanes', 5);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(82, 'Maule', 5);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(83, 'Santiago', 5);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(84, 'Tarapaca', 5);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(85, 'Valparaiso', 5);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(86, 'Amazonas', 6);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(87, 'Antioquia', 6);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(88, 'Arauca', 6);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(89, 'Atlantico', 6);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(90, 'Distrito Capital de Bogota', 6);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(91, 'Bolivar', 6);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(92, 'Boyaca', 6);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(93, 'Caldas', 6);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(94, 'Caqueta', 6);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(95, 'Casanare', 6);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(96, 'Cauca', 6);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(97, 'Cesar', 6);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(98, 'Choco', 6);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(99, 'Cordoba', 6);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(100, 'Cundinamarca', 6);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(101, 'Guainia', 6);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(102, 'Guaviare', 6);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(103, 'Huila', 6);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(104, 'La Guajira', 6);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(105, 'Magdalena', 6);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(106, 'Meta', 6);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(107, 'Narino', 6);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(108, 'Norte de Santander', 6);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(109, 'Putumayo', 6);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(110, 'Quindio', 6);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(111, 'Risaralda', 6);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(112, 'San Andres y Providencia', 6);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(113, 'Santander', 6);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(114, 'Sucre', 6);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(115, 'Tolima', 6);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(116, 'Valle del Cauca', 6);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(117, 'Vaupes', 6);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(118, 'Vichada', 6);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(119, 'Alibori', 7);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(120, 'Atakora', 7);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(121, 'Atlantique', 7);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(122, 'Borgou', 7);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(123, 'Collines', 7);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(124, 'Kouffo', 7);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(125, 'Donga', 7);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(126, 'Littoral', 7);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(127, 'Mono', 7);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(128, 'Oueme', 7);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(129, 'Plateau', 7);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(130, 'Zou', 7);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(131, 'Camaguey', 8);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(132, 'Ciego de Avila', 8);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(133, 'Cienfuegos', 8);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(134, 'Ciudad de La Habana', 8);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(135, 'Granma', 8);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(136, 'Guantanamo', 8);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(137, 'Holguin', 8);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(138, 'Isla de la Juventud', 8);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(139, 'La Habana', 8);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(140, 'Las Tunas', 8);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(141, 'Matanzas', 8);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(142, 'Pinar del Rio', 8);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(143, 'Sancti Spiritus', 8);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(144, 'Santiago de Cuba', 8);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(145, 'Villa Clara', 8);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(146, 'Azuay', 9);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(147, 'Bolivar', 9);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(148, 'Canar', 9);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(149, 'Carchi', 9);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(150, 'Chimborazo', 9);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(151, 'Cotopaxi', 9);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(152, 'El Oro', 9);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(153, 'Esmeraldas', 9);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(154, 'Galapagos', 9);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(155, 'Guayas', 9);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(156, 'Imbabura', 9);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(157, 'Loja', 9);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(158, 'Los Rios', 9);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(159, 'Manabi', 9);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(160, 'Morona-Santiago', 9);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(161, 'Napo', 9);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(162, 'Orellana', 9);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(163, 'Pastaza', 9);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(164, 'Pichincha', 9);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(165, 'Sucumbios', 9);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(166, 'Tungurahua', 9);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(167, 'Zamora-Chinchipe', 9);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(168, 'Ahuachapan', 10);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(169, 'Cabanas', 10);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(170, 'Chalatenango', 10);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(171, 'Cuscatlan', 10);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(172, 'La Libertad', 10);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(173, 'La Paz', 10);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(174, 'La Union', 10);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(175, 'Morazan', 10);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(176, 'San Miguel', 10);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(177, 'San Salvador', 10);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(178, 'Santa Ana', 10);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(179, 'San Vicente', 10);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(180, 'Sonsonate', 10);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(181, 'Usulutan', 10);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(182, 'Andalucia', 11);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(183, 'Aragon', 11);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(184, 'Asturias', 11);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(185, 'Baleares', 11);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(186, 'Ceuta', 11);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(187, 'Canarias', 11);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(188, 'Cantabria', 11);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(189, 'Castilla-La Mancha', 11);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(190, 'Castilla y Leon', 11);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(191, 'Cataluña', 11);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(192, 'Comunidad Valenciana', 11);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(193, 'Extremadura', 11);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(194, 'Galicia', 11);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(195, 'La Rioja', 11);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(196, 'Madrid', 11);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(197, 'Melilla', 11);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(198, 'Murcia', 11);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(199, 'Navarra', 11);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(200, 'Pais Vasco', 11);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(201, 'Alabama', 12);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(202, 'Alaska', 12);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(203, 'Arizona', 12);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(204, 'Arkansas', 12);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(205, 'California', 12);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(206, 'Colorado', 12);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(207, 'Connecticut', 12);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(208, 'Delaware', 12);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(209, 'District of Columbia', 12);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(210, 'Florida', 12);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(211, 'Georgia', 12);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(212, 'Hawaii', 12);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(213, 'Idaho', 12);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(214, 'Illinois', 12);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(215, 'Indiana', 12);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(216, 'Iowa', 12);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(217, 'Kansas', 12);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(218, 'Kentucky', 12);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(219, 'Louisiana', 12);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(220, 'Maine', 12);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(221, 'Maryland', 12);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(222, 'Massachusetts', 12);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(223, 'Michigan', 12);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(224, 'Minnesota', 12);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(225, 'Mississippi', 12);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(226, 'Missouri', 12);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(227, 'Montana', 12);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(228, 'Nebraska', 12);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(229, 'Nevada', 12);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(230, 'New Hampshire', 12);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(231, 'New Jersey', 12);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(232, 'New Mexico', 12);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(233, 'New York', 12);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(234, 'North Carolina', 12);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(235, 'North Dakota', 12);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(236, 'Ohio', 12);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(237, 'Oklahoma', 12);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(238, 'Oregon', 12);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(239, 'Pennsylvania', 12);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(240, 'Rhode Island', 12);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(241, 'South Carolina', 12);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(242, 'South Dakota', 12);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(243, 'Tennessee', 12);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(244, 'Texas', 12);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(245, 'Utah', 12);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(246, 'Vermont', 12);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(247, 'Virginia', 12);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(248, 'Washington', 12);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(249, 'West Virginia', 12);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(250, 'Wisconsin', 12);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(251, 'Wyoming', 12);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(252, 'Alta Verapaz', 13);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(253, 'Baja Verapaz', 13);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(254, 'Chimaltenango', 13);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(255, 'Chiquimula', 13);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(256, 'El Progreso', 13);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(257, 'Escuintla', 13);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(258, 'Guatemala', 13);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(259, 'Huehuetenango', 13);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(260, 'Izabal, Jalapa', 13);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(261, 'Jutiapa', 13);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(262, 'Peten', 13);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(263, 'Quetzaltenango', 13);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(264, 'Quiche', 13);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(265, 'Retalhuleu', 13);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(266, 'Sacatepequez', 13);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(267, 'San Marcos', 13);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(268, 'Santa Rosa', 13);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(269, 'Solola', 13);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(270, 'Suchitepequez', 13);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(271, 'Totonicapan', 13);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(272, 'Zacapa', 13);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(273, 'Atlantida', 14);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(274, 'Choluteca', 14);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(275, 'Colon', 14);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(276, 'Comayagua', 14);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(277, 'Copan', 14);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(278, 'Cortes', 14);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(279, 'El Paraiso', 14);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(280, 'Francisco Morazan', 14);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(281, 'Gracias a Dios', 14);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(282, 'Intibuca', 14);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(283, 'Islas de la Bahia', 14);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(284, 'La Paz', 14);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(285, 'Lempira', 14);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(286, 'Ocotepeque', 14);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(287, 'Olancho', 14);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(288, 'Santa Barbara', 14);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(289, 'Valle', 14);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(290, 'Yoro', 14);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(291, 'Aguascalientes', 15);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(292, 'Baja California', 15);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(293, 'Baja California Sur', 15);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(294, 'Campeche', 15);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(295, 'Chiapas', 15);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(296, 'Chihuahua', 15);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(297, 'Coahuila de Zaragoza', 15);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(298, 'Colima', 15);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(299, 'Distrito Federal', 15);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(300, 'Durango', 15);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(301, 'Guanajuato', 15);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(302, 'Guerrero', 15);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(303, 'Hidalgo', 15);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(304, 'Jalisco', 15);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(305, 'Mexico', 15);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(306, 'Michoacan de Ocampo', 15);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(307, 'Morelos', 15);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(308, 'Nayarit', 15);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(309, 'Nuevo Leon', 15);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(310, 'Oaxaca', 15);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(311, 'Puebla', 15);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(312, 'Queretaro de Arteaga', 15);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(313, 'Quintana Roo', 15);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(314, 'San Luis Potosi', 15);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(315, 'Sinaloa', 15);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(316, 'Sonora', 15);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(317, 'Tabasco', 15);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(318, 'Tamaulipas', 15);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(319, 'Tlaxcala', 15);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(320, 'Veracruz-Llave', 15);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(321, 'Yucatan', 15);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(322, 'Zacatecas', 15);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(323, 'Atlantico Norte', 16);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(324, 'Atlantico Sur', 16);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(325, 'Boaco', 16);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(326, 'Carazo', 16);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(327, 'Chinandega', 16);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(328, 'Chontales', 16);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(329, 'Esteli', 16);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(330, 'Granada', 16);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(331, 'Jinotega', 16);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(332, 'Leon', 16);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(333, 'Madriz', 16);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(334, 'Managua', 16);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(335, 'Masaya', 16);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(336, 'Matagalpa', 16);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(337, 'Nueva Segovia', 16);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(338, 'Rio San Juan', 16);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(339, 'Rivas', 16);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(340, 'Bocas del Toro', 17);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(341, 'Chiriqui', 17);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(342, 'Cocle', 17);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(343, 'Colon', 17);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(344, 'Darien', 17);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(345, 'Herrera', 17);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(346, 'Los Santos', 17);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(347, 'Panama', 17);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(348, 'San Blas', 17);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(349, 'Kuna Yala', 17);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(350, 'Veraguas', 17);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(351, 'Alto Paraguay', 18);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(352, 'Alto Parana', 18);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(353, 'Amambay', 18);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(354, 'Asuncion', 18);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(355, 'Boqueron', 18);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(356, 'Caaguazu', 18);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(357, 'Caazapa', 18);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(358, 'Canindeyu', 18);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(359, 'Central', 18);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(360, 'Concepcion', 18);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(361, 'Cordillera', 18);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(362, 'Guaira', 18);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(363, 'Itapua', 18);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(364, 'Misiones', 18);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(365, 'Neembucu', 18);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(366, 'Paraguari', 18);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(367, 'Presidente Hayes', 18);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(368, 'San Pedro', 18);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(369, 'Amazonas', 19);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(370, 'Ancash', 19);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(371, 'Apurimac', 19);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(372, 'Arequipa', 19);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(373, 'Ayacucho', 19);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(374, 'Cajamarca', 19);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(375, 'Callao', 19);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(376, 'Cusco', 19);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(377, 'Huancavelica', 19);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(378, 'Huanuco', 19);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(379, 'Ica', 19);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(380, 'Junin', 19);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(381, 'La Libertad', 19);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(382, 'Lambayeque', 19);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(383, 'Lima', 19);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(384, 'Madre de Dios', 19);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(385, 'Moquegua', 19);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(386, 'Pasco', 19);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(387, 'Piura', 19);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(388, 'Puno', 19);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(389, 'San Martin', 19);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(390, 'Tacna', 19);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(391, 'Tumbes', 19);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(392, 'Ucayali', 19);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(393, 'Adjuntas', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(394, 'Aguada', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(395, 'Aguadilla', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(396, 'Aguas Buenas', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(397, 'Aibonito', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(398, 'Anasco', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(399, 'Arecibo', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(400, 'Arroyo', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(401, 'Barceloneta', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(402, 'Barranquitas', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(403, 'Bayamon', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(404, 'Cabo Rojo', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(405, 'Caguas', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(406, 'Camuy', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(407, 'Canovanas', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(408, 'Carolina', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(409, 'Catano', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(410, 'Cayey', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(411, 'Ceiba', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(412, 'Ciales', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(413, 'Cidra', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(414, 'Coamo', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(415, 'Comerio', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(416, 'Corozal', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(417, 'Culebra', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(418, 'Dorado', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(419, 'Fajardo', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(420, 'Florida', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(421, 'Guanica', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(422, 'Guayama', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(423, 'Guayanilla', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(424, 'Guaynabo', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(425, 'Gurabo', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(426, 'Hatillo', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(427, 'Hormigueros', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(428, 'Humacao', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(429, 'Isabela', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(430, 'Jayuya', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(431, 'Juana Diaz', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(432, 'Juncos', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(433, 'Lajas', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(434, 'Lares', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(435, 'Las Marias', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(436, 'Las Piedras', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(437, 'Loiza', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(438, 'Luquillo', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(439, 'Manati', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(440, 'Maricao', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(441, 'Maunabo', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(442, 'Mayaguez', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(443, 'Moca', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(444, 'Morovis', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(445, 'Naguabo', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(446, 'Naranjito', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(447, 'Orocovis', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(448, 'Patillas', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(449, 'Penuelas', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(450, 'Ponce', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(451, 'Quebradillas', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(452, 'Rincon', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(453, 'Rio Grande', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(454, 'Sabana Grande', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(455, 'Salinas', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(456, 'San German', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(457, 'San Juan', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(458, 'San Lorenzo', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(459, 'San Sebastian', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(460, 'Santa Isabel', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(461, 'Toa Alta', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(462, 'Toa Baja', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(463, 'Trujillo Alto', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(464, 'Utuado', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(465, 'Vega Alta', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(466, 'Vega Baja', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(467, 'Vieques', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(468, 'Villalba', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(469, 'Yabucoa', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(470, 'Yauco', 20);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(471, 'Artigas', 21);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(472, 'Canelones', 21);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(473, 'Cerro Largo', 21);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(474, 'Colonia', 21);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(475, 'Durazno', 21);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(476, 'Flores', 21);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(477, 'Florida', 21);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(478, 'Lavalleja', 21);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(479, 'Maldonado', 21);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(480, 'Montevideo', 21);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(481, 'Paysandu', 21);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(482, 'Rio Negro', 21);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(483, 'Rivera', 21);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(484, 'Rocha', 21);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(485, 'Salto', 21);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(486, 'San Jose', 21);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(487, 'Soriano', 21);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(488, 'Tacuarembo', 21);
INSERT INTO `estados` (`id`, `descripcion`, `idPais`) VALUES(489, 'Treinta y Tres', 21);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paises`
--

CREATE TABLE IF NOT EXISTS `paises` (
  `id` int(3) unsigned NOT NULL default '0',
  `descripcion` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `paises`
--

INSERT INTO `paises` (`id`, `descripcion`) VALUES(0, 'Elige');
INSERT INTO `paises` (`id`, `descripcion`) VALUES(1, 'Argentina');
INSERT INTO `paises` (`id`, `descripcion`) VALUES(2, 'Bolivia');
INSERT INTO `paises` (`id`, `descripcion`) VALUES(3, 'Brasil');
INSERT INTO `paises` (`id`, `descripcion`) VALUES(4, 'Canada');
INSERT INTO `paises` (`id`, `descripcion`) VALUES(5, 'Chile');
INSERT INTO `paises` (`id`, `descripcion`) VALUES(6, 'Colombia');
INSERT INTO `paises` (`id`, `descripcion`) VALUES(7, 'Costa Rica');
INSERT INTO `paises` (`id`, `descripcion`) VALUES(8, 'Cuba');
INSERT INTO `paises` (`id`, `descripcion`) VALUES(9, 'Ecuador');
INSERT INTO `paises` (`id`, `descripcion`) VALUES(10, 'El Salvador');
INSERT INTO `paises` (`id`, `descripcion`) VALUES(11, 'España');
INSERT INTO `paises` (`id`, `descripcion`) VALUES(12, 'Estados Unidos');
INSERT INTO `paises` (`id`, `descripcion`) VALUES(13, 'Guatemala');
INSERT INTO `paises` (`id`, `descripcion`) VALUES(14, 'Honduras');
INSERT INTO `paises` (`id`, `descripcion`) VALUES(15, 'Mexico');
INSERT INTO `paises` (`id`, `descripcion`) VALUES(16, 'Nicaragua');
INSERT INTO `paises` (`id`, `descripcion`) VALUES(17, 'Panama');
INSERT INTO `paises` (`id`, `descripcion`) VALUES(18, 'Paraguay');
INSERT INTO `paises` (`id`, `descripcion`) VALUES(19, 'Peru');
INSERT INTO `paises` (`id`, `descripcion`) VALUES(20, 'Puerto Rico');
INSERT INTO `paises` (`id`, `descripcion`) VALUES(21, 'Uruguay');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Tabs`
--

CREATE TABLE IF NOT EXISTS `Tabs` (
  `idTab` int(10) unsigned NOT NULL auto_increment,
  `Contenido` text character set utf8 collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`idTab`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcar la base de datos para la tabla `Tabs`
--

INSERT INTO `Tabs` (`idTab`, `Contenido`) VALUES(1, '<h3>AJAX</h3>\r\n<p>AJAX, acrónimo de Asynchronous JavaScript And XML (JavaScript asíncrono y XML), es una técnica de desarrollo web para crear aplicaciones interactivas o RIA (Rich Internet Applications). Estas aplicaciones se ejecutan en el cliente, es decir, en el navegador de los usuarios mientras se mantiene la comunicación asíncrona con el servidor en segundo plano. De esta forma es posible realizar cambios sobre las páginas sin necesidad de recargarlas, lo que significa aumentar la interactividad, velocidad y usabilidad en las aplicaciones.</p>');
INSERT INTO `Tabs` (`idTab`, `Contenido`) VALUES(2, '<h3>JAVASCRIPT</h3><p>JavaScript es un lenguaje de programación interpretado, es decir, que no requiere compilación, utilizado principalmente en páginas web, con una sintaxis semejante a la del lenguaje Java y el lenguaje C.\r\n<br />\r\nAl igual que Java, JavaScript es un lenguaje orientado a objetos propiamente dicho, ya que dispone de Herencia, si bien esta se realiza siguiendo el paradigma de programación basada en prototipos, ya que las nuevas clases se generan clonando las clases base (prototipos) y extendiendo su funcionalidad.</p>');
INSERT INTO `Tabs` (`idTab`, `Contenido`) VALUES(3, '<h3>PHP</h3>\r\n<p>PHP es un lenguaje de programación interpretado, diseñado originalmente para la creación de páginas web dinámicas.<br />PHP es un acrónimo recursivo que significa PHP Hypertext Pre-processor (inicialmente PHP Tools, o, Personal Home Page Tools). Fue creado originalmente por Rasmus Lerdorf en 1994; sin embargo la implementación principal de PHP es producida ahora por The PHP Group y sirve como el estándar de facto para PHP al no haber una especificación formal. Publicado bajo la PHP License, la Free Software Foundation considera esta licencia como software libre.</p>');
